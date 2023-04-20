#include <stdio.h>


// This function swaps two elements in an array
void swap(int* a, int* b)
{
    int temp = *a;
    *a = *b;
    *b = temp;
}

// This function partitions the array and returns the partition index
int partition(int arr[], int low, int high)
{
    int pivot = arr[high];
    int i = low - 1;

    for (int j = low; j <= high - 1; j++)
    {
        if (arr[j] < pivot)
        {
            i++;
            swap(&arr[i], &arr[j]);
        }
    }
    swap(&arr[i + 1], &arr[high]);
    return i + 1;
}

// This function implements the quicksort algorithm
void quicksort(int arr[], int low, int high)
{
    if (low < high)
    {
        int partitionIndex = partition(arr, low, high);
        quicksort(arr, low, partitionIndex - 1);
        quicksort(arr, partitionIndex + 1, high);
    }
}

// Driver code
int main() {
    int debug = 0;
    int n = sizeof(UNSORTED_ARRAY)/sizeof(UNSORTED_ARRAY[0]);
    quicksort(UNSORTED_ARRAY, 0, n - 1);
    if (debug) {
        for (int i = 0; i < n; i++) {
            printf("%d ", UNSORTED_ARRAY[i]);
        }
    }
    
    
    return 0;
}