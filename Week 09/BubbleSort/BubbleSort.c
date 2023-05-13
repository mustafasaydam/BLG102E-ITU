#include <stdio.h>
#include <stdbool.h>

#define SIZE 10

void    bubleSort(int input[], int size, bool ascending)
{
    int temp;
    for (int i = 0; i < size - 1; i++)
    {
        for (int j = 0; j < size - i - 1; j++)
        {
            if(ascending && input[j] > input[j + 1])
            {
                temp = input[j];
                input[j] = input[j + 1];
                input[j + 1] = temp;
            }
            else if(!ascending && input[j] < input[j + 1])
            {
                temp = input[j];
                input[j] = input[j + 1];
                input[j + 1] = temp;
            }
        }
    }
}
int main()
{
    int grades[SIZE];
    printf("Enter %d numbers: ", SIZE);

    for (int i = 0; i < SIZE; i++)
        scanf("%d", &grades[i]);
    
    printf("Original Array:");
    for (int i = 0; i < SIZE; i++)
        printf(" %d", grades[i]);
    printf("\n");

    bubleSort(grades, SIZE, true); //Ascending

    printf("Sorted Array(Ascending):");
    for (int i = 0; i < SIZE; i++)
        printf(" %d", grades[i]);
    printf("\n");
    bubleSort(grades, SIZE, false); //Desending
    printf("Sorted Array(Desending):");
    for (int i = 0; i < SIZE; i++)
        printf(" %d", grades[i]);
    printf("\n");
}