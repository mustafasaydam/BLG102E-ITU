#include <stdio.h>
#include <stdbool.h>
#include <math.h>

int numDigits(int number) {
    int digits = 0;
    while (number) {
        digits++;
        number /= 10;
    }
    return digits;
}

int digitsPlace(int number, int place) {
    int digit = (number / (int)pow(10, numDigits(number) - place)) % 10;
    return digit;
}

bool isPalindrome(int number) {
    int total_digits = numDigits(number);
    for (int i = 1; i <= total_digits / 2; i++) {
        if (digitsPlace(number, i) != digitsPlace(number, total_digits - i + 1))
            return false;
    }
    return true;
}

int main()
{
    int num;

    while (1)
    {
        printf("Enter a number or \\(-1\\) to quit: ");
        scanf("%d", &num);
        if (num == -1)
            return 0;
        printf("%d\n", digitsPlace(1234, 1));
        if(isPalindrome(num))
            printf("This number is a palindrome.\r\n");
        else
            printf("This number is not a palindrome.\r\n");
    }
}