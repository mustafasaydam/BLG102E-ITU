#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>

#define CAPACITY 6

// Use following printf's with necessary changes
/*
printf("Enter your numbers (-1 to finish):\n");
printf("Max capacity is reached! Cannot accept more numbers!\n");
printf("Number of evens: %d\n", _______);
printf("What type of numbers would you print?\n  > (0: for evens only, 1: for all numbers):");
printf("%d. %d\n",_______);

*/


// Please add your code below
int populate_array(int* numbers, int capacity) {
    printf("Enter your numbers (-1 to finish):\n");
    int size = 0;
    while (size < capacity) {
        int number;
        scanf("%d", &number);
        if (number == -1)
            break;
        numbers[size] = number;
        size++;
    }
    if (size == capacity) {
        printf("Max capacity is reached! Cannot accept more numbers!\n");
    }
    return size;
}

int get_even_count(int* numbers, int size) {
    int count = 0;
    for (int i = 0; i < size; i++) {
        if (numbers[i] % 2 == 0) 
            count++;
    }
    return count;
}

int* filter_evens(int* numbers, int size, int size_evens) {
    int* evens = (int*) malloc(size_evens * sizeof(int));

    int j = 0;
    for (int i = 0; i < size; i++) {
        if (numbers[i] % 2 == 0) {
            evens[j] = numbers[i];
            j++;
        }
    }
    return evens;
}

int get_users_choice() {
    int choice;
    printf("What type of numbers would you print?\n  > (0: for evens only, 1: for all numbers):");
    scanf("%d", &choice);
    return choice;
}

void print_array_content(int* array, int size) {
    for (int i = 0; i < size; i++) {
        printf("%d. %d\n", i + 1, array[i]);
    }
}

// WARNING: Do not modify the below part!

int main() {
    int numbers[CAPACITY];
    int size_numbers;
    int size_evens;

    size_numbers = populate_array(numbers, CAPACITY);
    
    size_evens = get_even_count(numbers, size_numbers);
    printf("Number of evens: %d\n", size_evens);

    int *evens = filter_evens(numbers, size_numbers, size_evens);
    int choice = get_users_choice();

    if(choice == 0) {
        print_array_content(evens, size_evens);
    } else {
        print_array_content(numbers, size_numbers);
    }

    free(evens);
    return EXIT_SUCCESS;
}