//BLG102E - MOCK EXAM

#include <stdio.h>
#include <stdlib.h>

#define MAX_STRING_LENGTH 50

int strlength(/*fill here*/ string, char subLengthChar, char getFullLength)
{
    char terminatingChar;

    if(getFullLength == 'y')
        terminatingChar = /*fill here*/; //what is the null character of a string?
    else terminatingChar = /*fill here*/;

    int i;
    //count until the terminatingChar AND the null character IS NOT reached.
    for(/*fill here*/);

    return i;
}

int main()
{
    /*
    The following code should ask user for a string and a prompt if they wants to 
    get the full length of the string or the length up to a certain character. 
    
    If they asks for the full length, the code just returns the length of the string. 
    
    Otherwise, the code should ask for a character and return the length of the string 
    up to that character. ***If the character does not exist in the string, the code should
    return the length of the string.***
    */

	char /*fill here*/; //Declare a string variable with a max buffer of MAX_STRING_LENGTH (1)
    char getFullLength; //A character to get the prompt (y/n) (2)
    char /*fill here*/; //Declare a character to get the length up to it (3)

	printf("Enter a string:");
	scanf(/*fill here*/); //get the string from the user (1)

    printf("Get the full length of the string? (y/n):");
    scanf(" %c", /*fill here*/); //get the prompt from the user (2)

    if(getFullLength != 'y')
    {
        printf(/*fill here*/);
        scanf(" %c", /*fill here*/); //(3)
    }

    //print the length of the string here
    int length = strlength(/*fill here*/);
    printf(/*fill here*/);

	return 0;
}
