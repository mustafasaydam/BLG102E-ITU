#include <stdio.h>

int main()
{
    float   temp;
    float   celcius;
    int     input;
    float   alt;
    float   boiling_temp;
    
    printf("Enter the temperature: ");
    scanf("%f", &temp);
    printf("Enter the unit of temperature (Celsius:1, Fahrenheit:2): ");
    scanf("%d", &input);
    printf("Enter altitude in meters: ");
    scanf("%f", &alt);
    if (input != 1 && input != 2)
    {
        printf("Please enter temperature unit as either 1 (celsius) or 2 (fahrenheit).\n");
        return 1;
    }
    if (input == 2)
        celcius = (temp - 32) * 5.0 / 9.0;
    else
        celcius = temp;
    boiling_temp = 100 - (alt / 300);
    if (celcius < 0)
        printf("Water is Solid (Ice) at %.2f degrees ", temp);
    else if (celcius > boiling_temp)
        printf("Water is Gas (Vapor) at %.2f degrees ", temp);
    else if (celcius >= 0 && celcius <= boiling_temp)
        printf("Water is Liquid at %.2f degrees ", temp);
    if (input == 1)
        printf("Celsius\n");
    else if (input == 2)
        printf("Fahrenheit\n");
    return 0;
}
