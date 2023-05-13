#include <stdio.h>

int main()
{
    float   fahr;
    float   cel;
    printf("Enter Fahrenheit:");
    scanf("%f", &fahr);
    cel = (fahr - 32) * 5.0 / 9.0;
    printf("%.2f fahrenheit is %.3f celcius\r\n", fahr, cel); 
}