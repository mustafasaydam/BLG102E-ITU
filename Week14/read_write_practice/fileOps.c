#include <stdio.h>
#include <stdlib.h>

typedef struct {
    char name[50];
    int id;
    int exams[3];
    int hws[3];
    char grade;
} Student;

// Reading from text file
Student* read_from_text_file(char* filename, int* n) {
    FILE* file = fopen(filename, "r");
    if (file == NULL) {
        printf("Failed to open %s\n", filename);
        exit(1);
    }

    Student* students = malloc(sizeof(Student) * 100);
    int i = 0;
    while(fscanf(file, "%s %d %d %d %d %d %d %d %c\n", students[i].name, &students[i].id,
           &students[i].exams[0], &students[i].exams[1], &students[i].exams[2],
           &students[i].hws[0], &students[i].hws[1], &students[i].hws[2],
           &students[i].grade) != -1) {
        i++;
    }

    *n = i;
    fclose(file);
    return students;
}

// Writing into binary file
void write_into_binary_file(char* filename, Student* students, int n) {
    FILE* file = fopen(filename, "wb");
    if (file == NULL) {
        printf("Failed to open %s\n", filename);
        exit(1);
    }

    fwrite(students, sizeof(Student), n, file);
    fclose(file);
}

// Reading from binary file
Student* read_from_binary_file(char* filename, int n) {
    FILE* file = fopen(filename, "rb");
    if (file == NULL) {
        printf("Failed to open %s\n", filename);
        exit(1);
    }

    Student* students = malloc(n * sizeof(Student));
    fread(students, sizeof(Student), n, file);
    fclose(file);

    return students;
}

// Writing into text file
void write_into_text_file(char* filename, Student* students, int n) {
    FILE* file = fopen(filename, "w");
    if (file == NULL) {
        printf("Failed to open %s\n", filename);
        exit(1);
    }

    for(int i = 0; i < n; i++) {
        fprintf(file, "%s %d %d %d %d %d %d %d %c\n", students[i].name, students[i].id,
                students[i].exams[0], students[i].exams[1], students[i].exams[2],
                students[i].hws[0], students[i].hws[1], students[i].hws[2],
                students[i].grade);
    }

    fclose(file);
}

int main(int argc, char** argv) {
    if(argc != 4) {
        printf("Invalid arguments. Usage: ./program students_src.txt binary.bin dst.txt\n");
        return 1;
    }

    int n;
    Student* students = read_from_text_file(argv[1], &n);
    write_into_binary_file(argv[2], students, n);
    free(students);
    students = read_from_binary_file(argv[2], n);
    write_into_text_file(argv[3], students, n);
    free(students);

    return 0;
}