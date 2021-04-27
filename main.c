
#include "mcc_generated_files/mcc.h"


uint8_t readloadcell(unsigned long sense);
void writepot(uint8_t i);

#define gain 2000     //value to divide loadcell value by to set range, lower value will be more sensitive
#define errorreject 100  //value to reject incorrect readings and spikes
#define maxpressure 497316    //related to gain. maximum pressure value needed from loadcell

#define DP_SS LATBbits.LATB0    //Digital pot spi slave select pin
#define LC_DAT PORTAbits.RA0    //HX711 data pin
#define LC_CLK LATAbits.LATA1   //HX711 clock pin

void main(void)
{
    uint8_t load = 0;
    uint8_t load2 = 0;
    uint8_t diff = 0;
    // Initialize the device
    SYSTEM_Initialize();

    __delay_ms(2000);           //do an initial reading to ready loadcell    
    load = readloadcell(gain);
    load2 = load;
    __delay_ms(2000); 
        
    while (1){
        
        load = readloadcell(gain);   //read returned value from loadcell
        
        diff = abs(load - load2);    //generate difference value from current reading to last reading
        
        
        if(diff < errorreject && load >= load2){   //if returned value is increasing compared to last reading and not detected as error
        writepot(load); //write to digital pot
        load2 = load; //update value for next reading
        }
        
        if(load <= load2){ //if value is high, don't care about error
        writepot(load); //write value to digital pot
        load2 = load; // update value for next reading    
        }

            


__delay_ms(50);
        
}
}

void writepot(uint8_t level){
    DP_SS = 0;                  //spi slave enable  
    __delay_us(5);              //delay
    SPI1_Open(SPI1_DEFAULT);    //open SPI 
    SPI1_WriteByte(0x00);       //write command byte
    __delay_us(2);              //delay
    SPI1_WriteByte(level);      //write resistance level    
    __delay_us(5);              //delay
    SPI1_Close();               //close spi port
    __delay_us(4);              //delay
    DP_SS = 1;                  //spislave disable
    __delay_us(700);            //delay
}

uint8_t readloadcell(unsigned long sensitivity){    
unsigned long data2 = 0;
uint8_t data1 = 0;
    for(int x = 0; x < 3; x++){         //32bit value
        for(int i = 0; i < 8; i++){     //get first 8 bits
            LC_CLK = 1;                 //set Hx711 clock bit high     
            __delay_us(12);             //delay
            if(LC_DAT){                 //if HX711 data bit is high
                data2 <<= 1;            //shift in high bit in data2
                data2 |= 1;
            }
            else{
                data2 <<= 1;            //else shift in low bit in data2
            }
            LC_CLK = 0;                 //set HX711 clock bit low                                 
            __delay_us(6);              //delay
        }
    }
    LC_CLK = 1;
    __delay_us(12);
    LC_CLK = 0;
    data1 = data2 / sensitivity;        //make 32bit value returned from loadcell into 8bit value
    __delay_ms(1);                      //delay
    if(data2 > maxpressure && data1 < 254 ){  //stops out of range value returned 
        return 255;                             //returned max value
    }else{
    return data1;}                              //return actual value if below 255
}
