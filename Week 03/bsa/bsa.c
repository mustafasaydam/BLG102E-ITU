#include <stdio.h>
#include <math.h>

int main()
{
    double  h;
    double  w;
    double  res;
    printf("Input height\\(cm\\) and weight\\(g\\):");
    scanf("%lf", &h);
    scanf("%lf", &w);
    res = 0.0003207 * pow(h, 0.3) * pow(w, 0.7285 - (0.0188 * log10(w)));
    printf("BSA: %.2lf\r\n", res);
    return 0;
}