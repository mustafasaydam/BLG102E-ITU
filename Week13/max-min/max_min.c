#include <stdio.h>
#include <stdlib.h>

int main() {
    int n, i;
    float *arr;
    float max, min;

    // Read number of elements
    printf("Enter the number of elements: ");
    scanf("%d", &n);

    if (n <= 0) {
        printf("Invalid input. Number of elements must be positive.\n");
        return 1;
    }

    // Allocate memory
    arr = (float*) malloc(n * sizeof(float));
    if (arr == NULL) {
        printf("Memory allocation failed.\n");
        return 1;
    }

    // Read elements
    for (i = 0; i < n; i++) {
        printf("Enter number %d: ", i + 1);
        scanf("%f", &arr[i]);
    }

    // Compute max and min
    max = min = arr[0];
    for (i = 1; i < n; i++) {
        if (arr[i] > max) {
            max = arr[i];
        }
        if (arr[i] < min) {
            min = arr[i];
        }
    }

    printf("Max: %.1f\n", max);
    printf("Min: %.1f\n", min);

    // Deallocate memory
    free(arr);

    return 0;
}
