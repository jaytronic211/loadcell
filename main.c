
#include "mcc_generated_files/mcc.h"


uint8_t readloadcell(unsigned long sense);
void writepot(uint8_t i);

#define gain 3000
#define errorreject 100
#define DP_SS LATBbits.LATB1
#define LC_DAT PORTAbits.RA0
#define LC_CLK LATAbits.LATA1

void main(void)
{
    uint8_t load = 0;
    uint8_t load2 = 0;
    uint8_t diff = 0;
    // Initialize the device
    SYSTEM_Initialize();

    __delay_ms(2000);    
    load = readloadcell(gain);
    load2 = load;
    __delay_ms(2000); 
        
    while (1){
        
        load = readloadcell(gain);
        //diff = abs(load - load2);

        //if(diff < errorreject){
            //EUSART1_Write(load);
            writepot(load);
        //    load2 = load;
        //}else{
            //EUSART1_Write(load2);
            //writepot(load2);
        //}

__delay_ms(50);
        
}
}

void writepot(uint8_t i){
    DP_SS = 0;
    __delay_us(5);
    SPI1_Open(SPI1_DEFAULT);
    SPI1_WriteByte(0x00);
    __delay_us(2);
    SPI1_WriteByte(i);
    __delay_us(5);
    SPI1_Close();
    __delay_us(4);
    DP_SS = 1;
    __delay_us(700);    
}

uint8_t readloadcell(unsigned long sensitivity){    
unsigned long data2 = 0;
uint8_t data1 = 0;
    for(int x = 0; x < 3; x++){
        for(int i = 0; i<8; i++){
            LC_CLK = 1;
            __delay_us(12);
            if(LC_DAT){
                data2 <<= 1;
                data2 |= 1;
            }
            else{
                data2 <<= 1;   
            }
            LC_CLK = 0;
            __delay_us(6);
        }            
    }
    LC_CLK = 1;
    __delay_us(12);
    LC_CLK = 0;
    data1 = data2 / sensitivity;
    __delay_ms(1);
    return data1;
}
