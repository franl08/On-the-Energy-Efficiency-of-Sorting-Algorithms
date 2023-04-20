#include <stdio.h>


// This function swaps two elements in the array
void swap(int* a, int* b)
{
    int temp = *a;
    *a = *b;
    *b = temp;
}

// This function implements odd-even sort algorithm
void oddEvenSort(int* arr, int n)
{
    int sorted = 0;
    while (!sorted) {
        sorted = 1;
        // Compare and swap the odd-indexed elements
        for (int i = 1; i < n - 1; i += 2) {
            if (arr[i] > arr[i + 1]) {
                swap(&arr[i], &arr[i + 1]);
                sorted = 0;
            }
        }
        // Compare and swap the even-indexed elements
        for (int i = 0; i < n - 1; i += 2) {
            if (arr[i] > arr[i + 1]) {
                swap(&arr[i], &arr[i + 1]);
                sorted = 0;
            }
        }
    }
}

// Driver code
int main() {
    int debug = 0;
    int n = sizeof(UNSORTED_ARRAY)/sizeof(UNSORTED_ARRAY[0]);
    oddEvenSort(UNSORTED_ARRAY, n);
    if (debug) {
        for (int i = 0; i < n; i++) {
            printf("%d ", UNSORTED_ARRAY[i]);
        }
    }
    
    return 0;
}