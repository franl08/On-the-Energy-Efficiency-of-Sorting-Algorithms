#include <stdio.h>

 
// This function implements the cycle sort algorithm
void cycleSort(int arr[], int size)
{
    int i, j, item, pos, writes;
    for (i = 0; i < size - 1; i++)
    {
        item = arr[i];
        pos = i;
        for (j = i + 1; j < size; j++)
            if (arr[j] < item)
                pos++;
        if (pos == i)
            continue;
        while (item == arr[pos])
            pos++;
        if (pos != i) {
            int temp = item;
            item = arr[pos];
            arr[pos] = temp;
            writes++;
        }
        while (pos != i) {
            pos = i;
            for (j = i + 1; j < size; j++)
                if (arr[j] < item)
                    pos++;
            while (item == arr[pos])
                pos++;
            if (item != arr[pos]) {
                int temp = item;
                item = arr[pos];
                arr[pos] = temp;
                writes++;
            }
        }
    }
}

// Driver code
int main() {
    int debug = 0;
    int n = sizeof(UNSORTED_ARRAY)/sizeof(UNSORTED_ARRAY[0]);
    cycleSort(UNSORTED_ARRAY, n);
    if (debug) {
        for (int i = 0; i < n; i++) {
            printf("%d ", UNSORTED_ARRAY[i]);
        }
    }
    return 0;
}