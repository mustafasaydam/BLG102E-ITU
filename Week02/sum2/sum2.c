#include <stdio.h>

int main()
{
    int num1;
    int num2;

    printf("Please enter numbers: ");
    scanf("%d %d", &num1, &num2);
    printf("The sum of the numbers %d, and %d is: %d\n", num1, num2, num1 + num2);
    return 0;    
}