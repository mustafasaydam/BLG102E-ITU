#include <stdio.h>
#include <stdlib.h>

#define MAX_NAME_LEN 100

typedef struct {
    char name[MAX_NAME_LEN];
    int roll_no;
    float marks;
} Student;

int main() {
    int n, i;
    Student *students;
    float total_marks = 0.0f, avg_marks;
    int max_marks_index = 0;

    // Read number of students
    printf("Enter the number of students: ");
    scanf("%d", &n);

    if (n <= 0) {
        printf("Invalid input. Number of students must be positive.\n");
        return 1;
    }

    // Allocate memory
    students = (Student*) malloc(n * sizeof(Student));
    if (students == NULL) {
        printf("Memory allocation failed.\n");
        return 1;
    }

    // Read student details
    for (i = 0; i < n; i++) {
        printf("Enter details for student %d:\n", i+1);
        printf("Name: ");
        scanf(" %[^\n]", students[i].name);  // Read string with spaces
        printf("Roll number: ");
        scanf("%d", &students[i].roll_no);
        printf("Marks: ");
        scanf("%f", &students[i].marks);
        total_marks += students[i].marks;
        if (students[i].marks > students[max_marks_index].marks) {
            max_marks_index = i;
        }
    }

    // Compute and display average marks
    avg_marks = total_marks / n;
    printf("Average marks: %.2f\n", avg_marks);

    // Display student with highest marks
    printf("Student with highest marks:\n");
    printf("Name: %s\n", students[max_marks_index].name);
    printf("Roll number: %d\n", students[max_marks_index].roll_no);
    printf("Marks: %.1f\n", students[max_marks_index].marks);

    // Deallocate memory
    free(students);

    return 0;
}
