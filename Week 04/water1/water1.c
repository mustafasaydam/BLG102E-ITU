#include <stdio.h>

int main()
{
    float   temp;
    int     input;
    printf("Enter the temperature: ");
    scanf("%f", &temp);
    printf("Enter the unit of temperature \\(Celsius:1, Fahrenheit:2\\): ");
    scanf("%d", &input);
    if (input == 1)
    {
        if (temp < 0)
            printf("Water is Solid \\(Ice\\) at %.2f degrees Celcius\r\n", temp);
        else if (temp > 100)
            printf("Water is Gas \\(Vapor\\) at %.2f degrees Celsius\r\n", temp);
        else if (temp >= 0 && temp <= 100)
            printf("Water is Liquid at %.2f degrees Celsius\r\n", temp);
    }
    else if (input == 2)
    {
        if (temp < 32)
            printf("Water is Solid \\(Ice\\) at %.2f degrees Fahrenheit\r\n", temp);
        else if (temp > 212)
            printf("Water is Gas \\(Vapor\\) at %.2f degrees Fahrenheit\r\n", temp);
        else if (temp >= 32 && temp <= 212)
            printf("Water is Liquid at %.2f degrees Fahrenheit\r\n", temp);
    }
    else
        printf("Please enter temperature unit as either 1 \\(celsius\\) or 2 \\(fahrenheit\\).\r\n");
    return 0;
}