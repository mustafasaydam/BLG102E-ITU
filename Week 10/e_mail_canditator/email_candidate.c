#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

/*
void strCopy(char* dest, const char* src) {
    int i;
    for (i = 0; src[i] != '\0'; i++) {
        dest[i] = src[i];
    }
    dest[i] = '\0';
}

void strConcatenate(char* dest, const char* src) {
    int dest_length = strLength(dest);
    strCopy(dest + dest_length, src);
}

void substring(char* dest, const char* src, int start, int length) {
    int i;
    for (i = 0; i < length && src[start + i] != '\0'; i++) {
        dest[i] = src[start + i];
    }
    dest[i] = '\0';
}*/

int strLength(const char* str) {
    int length = 0;
    while (str[length] != '\0') {
        length++;
    }
    return length;
}

void swap(char* a, char* b) {
    char temp = *a;
    *a = *b;
    *b = temp;
}

void strReverse(char* str) {
    int length = strLength(str);
    for (int i = 0; i < length / 2; i++) {
        swap(&str[i], &str[length - i - 1]);
    }
}

void intToString(int num, char* str) {
    int i = 0;
    while (num != 0) {
        str[i++] = (num % 10) + '0'; // int to ascii char
        num /= 10;
    }
    str[i] = '\0';
    strReverse(str);
}

void emailSuggestions(char* name, char* surname, int year, char suggestions[3][50]) {
    char year_str[5];
    intToString(year, year_str);

    // Suggestion 1
    snprintf(suggestions[0], 50, "%c%s%s@itu.edu.tr", name[0], surname, year_str + 2);

    // Suggestion 2
    srand(time(NULL));
    int rand_num = rand() % 10000 + 1000;
    char rand_num_str[5];
    intToString(rand_num, rand_num_str);
    snprintf(suggestions[1], 50, "%.2s%.2s%s@itu.edu.tr", name, surname, rand_num_str);

    // Suggestion 3
    snprintf(suggestions[2], 50, "%s%s%s@itu.edu.tr", surname, name, year_str);
}
int main() {
    char name[50];
    char surname[50];
    int year = 1951;
    char suggestions[3][50];
    
    printf("Enter Your Name:");
    scanf("%s", name);
    printf("Enter Your Surname:");
    scanf("%s", surname);
    printf("Enter Your Birthyear:");
    scanf("%d", &year);

    emailSuggestions(name, surname, year, suggestions);

    printf("Email Candidate 1: %s\r\n", suggestions[0]);
    printf("Email Candidate 2: %s\r\n", suggestions[1]);
    printf("Email Candidate 3: %s\r\n", suggestions[2]);

    return 0;
}