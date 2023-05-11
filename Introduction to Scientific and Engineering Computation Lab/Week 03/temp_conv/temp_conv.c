#include <stdio.h>

int main()
{
    float   fahr;
    float   cel;
    printf("Enter Fahrenheit:");
    scanf("%f", &fahr);
    cel = (5 * (fahr - 32)) / 9;
    printf("%.2f fahrenheit is %.3f celcius\r\n", fahr, cel); 
}