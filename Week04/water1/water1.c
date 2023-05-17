#include <stdio.h>

int main()
{
    float   temp;
    int     input;
    printf("Enter the temperature: ");
    scanf("%f", &temp);
    printf("Enter the unit of temperature (Celsius:1, Fahrenheit:2): ");
    scanf("%d", &input);
    if (input == 1)
    {
        if (temp < 0)
            printf("Water is Solid (Ice) at %.2f degrees Celcius\n", temp);
        else if (temp > 100)
            printf("Water is Gas (Vapor) at %.2f degrees Celsius\n", temp);
        else if (temp >= 0 && temp <= 100)
            printf("Water is Liquid at %.2f degrees Celsius\n", temp);
    }
    else if (input == 2)
    {
        if (temp < 32)
            printf("Water is Solid (Ice) at %.2f degrees Fahrenheit\n", temp);
        else if (temp > 212)
            printf("Water is Gas (Vapor) at %.2f degrees Fahrenheit\n", temp);
        else if (temp >= 32 && temp <= 212)
            printf("Water is Liquid at %.2f degrees Fahrenheit\n", temp);
    }
    else
    {
        printf("Please enter temperature unit as either 1 (celsius) or 2 (fahrenheit).\n");
        return 1;
    }	
	
    return 0;
}
