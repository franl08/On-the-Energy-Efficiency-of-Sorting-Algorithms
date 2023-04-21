#include <iostream>
#include <vector>
using namespace std;

void selectionSort(vector<int>& arr) {
    int n = arr.size();
    for (int i = 0; i < n - 1; i++) {
        int minIndex = i;
        for (int j = i + 1; j < n; j++) {
            if (arr[j] < arr[minIndex])
                minIndex = j;
        }
        swap(arr[i], arr[minIndex]);
    }
}

int main() {
    bool debug = false;
    
    selectionSort(arr);
    if(debug) {
        int n = arr.size();
        for (int i = 0; i < n; i++){
            cout << arr[i] << " ";
        }
    }

    return 0;
}