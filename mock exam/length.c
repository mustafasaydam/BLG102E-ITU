#include <stdio.h>
#include <stdlib.h>

#define MAX_STRING_LENGTH 50

int strlength(char* string, char subLengthChar, char getFullLength)
{
    char terminatingChar;

    if(getFullLength == 'y')
        terminatingChar = '\0'; // Null character of a string
    else
        terminatingChar = subLengthChar;

    int i;
    //count until the terminatingChar AND the null character IS NOT reached.
    for(i = 0; string[i] != terminatingChar && string[i] != '\0'; i++);

    return i;
}

int main()
{
    char string[MAX_STRING_LENGTH]; // Declare a string variable with a max buffer of MAX_STRING_LENGTH (1)
    char getFullLength; // A character to get the prompt (y/n) (2)
    char subLengthChar = '\0'; // Declare a character to get the length up to it (3)

    printf("Enter a string:");
    scanf("%s", string); // get the string from the user (1)

    printf("Get the full length of the string? (y/n):");
    scanf(" %c", &getFullLength); // get the prompt from the user (2)

    if(getFullLength != 'y')
    {
        printf("Enter a character to get the length up to it:");
        scanf(" %c", &subLengthChar); // (3)
    }

    //print the length of the string here
    int length = strlength(string, subLengthChar, getFullLength);
    printf("The length of the string is: %d\n", length);

    return 0;
}
