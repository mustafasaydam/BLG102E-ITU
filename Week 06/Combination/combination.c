#include <stdio.h>

// Function to calculate the combination
long long int combination(int n, int r) {
    if (r > n - r)
        r = n - r; // C(n, r) = C(n, n-r)

    long long int result = 1;

    for (int i = 0; i < r; i++) {
        result *= (n - i);
        result /= (i + 1);
    }

    return result;
}

int main() {
    int n, r;

    printf("Enter n and r: ");
    scanf("%d %d", &n, &r);
    
    long long int comb = combination(n, r);

    printf("%lld\n", comb);
    return 0;
}
