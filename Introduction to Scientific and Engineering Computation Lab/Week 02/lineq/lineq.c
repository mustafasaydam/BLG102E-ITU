#include <stdio.h>

int main()
{
    float   a;
    float   x;
    float   b;
    float   result;

    printf("Please enter the slope of the linear equation: ");
    scanf("%f", &a);
    printf("Please enter the y-intercept of the linear equation: ");
    scanf("%f", &b);
    printf("Please enter the the point x at which you want to evaluate the linear equation: ");
    scanf("%f", &x);
    result = a * x + b;
    printf("The evaluation of the function %.2f \\* x \\+ %.2f at point x = %.2f is %.2f\r\n", a, b, x, result);
    return 0;
}