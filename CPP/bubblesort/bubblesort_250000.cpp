#include <iostream>
#include <vector>
using namespace std;

void bubbleSort(vector<int>& arr) {
    int n = arr.size();
    bool swapped;
    for (int i = 0; i < n - 1; i++) {
        swapped = false;
        for (int j = 0; j < n - i - 1; j++) {
            if (arr[j] > arr[j+1]) {
                swap(arr[j], arr[j+1]);
                swapped = true;
            }
        }
        if (!swapped)
            break;
    }
}


int main() {
    bool debug = false;

    
    bubbleSort(arr);

    if(debug) {
        int n = arr.size();
        for (int i = 0; i < n; i++){
            cout << arr[i] << " ";
        }
    } 
    return 0;
}