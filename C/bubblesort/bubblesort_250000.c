#include <stdio.h>


// This function implements the bubble sort algorithm
void bubbleSort(int arr[], int size)
{
    int i, j, temp;
    for (i = 0; i < size - 1; i++)
    {
        for (j = 0; j < size - i - 1; j++)
        {
            if (arr[j] > arr[j + 1])
            {
                // Swap the adjacent elements
                temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }
}

// Driver code
int main() {
    int debug = 0;
    int n = sizeof(UNSORTED_ARRAY)/sizeof(UNSORTED_ARRAY[0]);
    bubbleSort(UNSORTED_ARRAY, n);
    if (debug) {
        for (int i = 0; i < n; i++) {
            printf("%d ", UNSORTED_ARRAY[i]);
        }
    }
    return 0;
}