#include <stdio.h>
#include <string.h>

// Global variables
char *elements[] = {"H", "He", "Li", "Be", "B", "C", "N", "O", "F", "Ne"};
double atomic_weights[] = {1.007, 4.002602, 6.941, 9.012182, 10.811, 12.0107, 14.0067, 15.9994, 18.9984032, 20.1797};

// Only change below
double calculate(char* symbol, int count){
    int i;
    for (i=0; i<10; i++){
        if (!strcmp(elements[i], symbol)){
            return atomic_weights[i] * count;
        }
    }
    return 0;
}

// Only change above 


int main(){
	char symbol[3];
	int count;
	double mw = 0;
	while (1){
		printf("Enter element symbol and number of atoms separated with a space: ");
		scanf("%s %d", symbol, &count); // symbol is already a pointer
		if (!strcmp(symbol, "end")){
			break;
		}
		mw += calculate(symbol, count);
	}
	printf("The molecular weight is %.2f\n", mw);
}

