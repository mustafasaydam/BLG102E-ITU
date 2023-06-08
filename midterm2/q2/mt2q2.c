#include <stdio.h>
#include <string.h>

#define MAX_LEN 30


// Please add your code below

void cut(char* phrase, int n_parts, char parts[MAX_LEN][MAX_LEN]) {
    int len = strlen(phrase);
    int every_part_len = len / n_parts;

    for (int i = 0; i < n_parts; i++) {
        strncpy(parts[i], &phrase[i * every_part_len], every_part_len);
        parts[i][every_part_len] = '\0';
    }
}


// WARNING: Do not modify the below part!

int main() {
    char phrase[MAX_LEN];
    char parts[MAX_LEN][MAX_LEN];
    int n_parts;

    printf("Enter phrase: ");
    scanf("%s", phrase);

    printf("Enter number of parts: ");
    scanf("%d", &n_parts);

    cut(phrase, n_parts, parts);
    for (int i = 0; i < n_parts; i++) {
        printf("|%s|\n", parts[i]);
    }

    return 0;
}
