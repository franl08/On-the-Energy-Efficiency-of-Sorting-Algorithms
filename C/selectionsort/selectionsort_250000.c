#include <stdio.h>


// This function implements the selection sort algorithm
void selectionSort(int arr[], int size)
{
    int i, j, minIndex;
    for (i = 0; i < size - 1; i++)
    {
        // Find the minimum element in unsorted part of the array
        minIndex = i;
        for (j = i + 1; j < size; j++)
        {
            if (arr[j] < arr[minIndex])
            {
                minIndex = j;
            }
        }

        // Swap the found minimum element with the first element in the unsorted part of the array
        int temp = arr[minIndex];
        arr[minIndex] = arr[i];
        arr[i] = temp;
    }
}


// Driver code
int main() {
    int debug = 0;
    int n = sizeof(UNSORTED_ARRAY)/sizeof(UNSORTED_ARRAY[0]);
    selectionSort(UNSORTED_ARRAY, n);
    if (debug) {
        for (int i = 0; i < n; i++) {
            printf("%d ", UNSORTED_ARRAY[i]);
        }
    }
    
    return 0;
}