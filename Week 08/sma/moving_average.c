#include <stdio.h>

#define ARRAY_LENGTH 16
#define WINDOW_LENGTH 3

int main()
{
    double  data[ARRAY_LENGTH];
    double  c_avg[ARRAY_LENGTH];
    double  m_avg[ARRAY_LENGTH];

    //get data from the user
    for (int i = 0; i < ARRAY_LENGTH; i++)
    {
        printf("Enter data for Week %d:", i + 1);
        scanf("%lf", &data[i]);
    }

    //calculate cumulative average
    double sum = 0.0;
    for (int i = 0; i < ARRAY_LENGTH; i++)
    {
        sum += data[i];
        c_avg[i] = sum / (i + 1);
    }

    //calculate moving average
    for (int i = 0; i < WINDOW_LENGTH; i++)
        m_avg[i] = 0;
    
    for (int i = WINDOW_LENGTH - 1; i < ARRAY_LENGTH; i++)
    {
        sum = 0;
         for (int j = 0; j < WINDOW_LENGTH; j++)
            sum += data[i - j];
        m_avg[i] = sum / WINDOW_LENGTH;       
    }
    for (int i = 0; i < ARRAY_LENGTH; i++)
        printf("Week %d: %.3lf %.3lf %.3lf\r\n", i + 1, data[i], c_avg[i], m_avg[i]);
    
    return 0;
}