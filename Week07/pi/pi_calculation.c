#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>

double getRandomNumber(double lower_limit, double upper_limit) {
    double random = ((double) rand()) / (double) RAND_MAX;
    double diff = upper_limit - lower_limit;
    double r = random * diff;
    return lower_limit + r;
}

double calculatePi(int max_iteration) {
    int points_inside_circle = 0;
    double x, y;
    for(int i = 0; i < max_iteration; i++) {
        x = getRandomNumber(-1.0, 1.0);
        y = getRandomNumber(-1.0, 1.0);
        if(x*x + y*y < 1.0)
            points_inside_circle++;
    }
    return (double)points_inside_circle / max_iteration * 4;
}

int main() {
    srand(time(0));  // Initialization of random seed

    int max_iteration = 1000000;
    double pi = calculatePi(max_iteration);

    printf("Mean Value of 100 Estimated Pi's = %.1lf..", pi);
    
    return 0;
}
