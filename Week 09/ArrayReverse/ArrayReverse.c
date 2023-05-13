#include <stdio.h>
#include <time.h>
#include <stdlib.h>

#define ARRAY_SIZE 10
#define EXIT_SUCCESS 0

void    randomFillArray(int *array)
{
    srand(time(NULL)); // intilaize generator numbers

    for (int i = 0; i < ARRAY_SIZE; i++)
        array[i] = rand() % 10;
}

void    reverse(int *array, int size)
{
    for (int i = 0; i < size / 2; i++)
    {
        int temp = array[i];
        array[i] = array[size - i - 1];
        array[size - i - 1] = temp;
    }
}

int main()
{
    int my_array[ARRAY_SIZE];
    
    randomFillArray(my_array); // random numbers

    printf("ORIGINAL ARRAY:");
    for (int i = 0; i < ARRAY_SIZE; i++)
        printf(" %d", my_array[i]);
    printf("\n");

    reverse(my_array, ARRAY_SIZE); // reverse

    printf("REVERSE ARRAY:");
    for(int i = 0; i < ARRAY_SIZE; i++)
        printf(" %d", my_array[i]);
    printf("\n");

    return EXIT_SUCCESS;
}