#include <stdio.h>
#include <math.h>

#define ERROR_TOLERANCE 0.001
#define EPSILON 0.001

int main()
{
    float   a, b, c;
    scanf("%f %f %f", &a, &b, &c);

    float x = 1; //Starting point
    float y, y1, y2, m;

    while (fabs(a*x*x + b*x + c) > ERROR_TOLERANCE)
    {
        y1 = a*(x + EPSILON)*(x + EPSILON) + b*(x + EPSILON) + c;
        y2 = a*(x - EPSILON)*(x - EPSILON) + b*(x - EPSILON) + c;
        // y2 - y1 = m(x2 - x1)
        // m = (y2 - y1) / (x2 - x1)
        // x2 - x1 = 2*EPSILON
        m = (y1 - y2) / (2 * EPSILON);
    
        if(m == 0)
            m += EPSILON;
        y = a*x*x + b*x + c;
        x = x - y / m;
        //printf("point: (%.2f %.2f)\n", x, y);
    }
    printf("RootL %0.2f\n", x);
}