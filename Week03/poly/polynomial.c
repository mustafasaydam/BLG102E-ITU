#include <stdio.h>
#include <math.h>

int main()
{
    int     a;
    int     b;
    int     c;
    float   dis;
    float   x1;
    float   x2;

    printf("Enter 3 coefficients for second-order polynomial:");
    scanf("%d %d %d", &a, &b, &c);
    dis = b * b - 4 * a * c;
    x1 = (-b + sqrt(dis)) / (2 * a);
    x2 = (-b - sqrt(dis)) / (2 * a);
    printf("Roots: x1: %.2f, x2: %.2f\n", x1, x2);
}