#include <stdio.h>

int main()
{
    int num1;
    int num2;

    printf("Please enter the first number: ");
    scanf("%d", &num1);
    printf("Please enter the second number: ");
    scanf("%d", &num2);
    printf("The sum of the numbers %d, and %d is: %d\r\n", num1, num2, num1 + num2);

    return 0;
}