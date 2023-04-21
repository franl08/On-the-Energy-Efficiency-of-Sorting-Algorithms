#include <iostream>
#include <vector>
using namespace std;

void quickSort(vector<int>& arr, int left, int right) {
    if (left < right) {
        int pivot = arr[(left + right) / 2];
        int i = left, j = right;
        while (i <= j) {
            while (arr[i] < pivot)
                i++;
            while (arr[j] > pivot)
                j--;
            if (i <= j) {
                swap(arr[i], arr[j]);
                i++;
                j--;
            }
        }
        quickSort(arr, left, j);
        quickSort(arr, i, right);
    }
}

int main() {
    bool debug = false;

    int n = arr.size();
    quickSort(arr, 0, n-1);
    if(debug) {
        int n = arr.size();
        for (int i = 0; i < n; i++){
            cout << arr[i] << " ";
        }
    } 

    return 0;
}