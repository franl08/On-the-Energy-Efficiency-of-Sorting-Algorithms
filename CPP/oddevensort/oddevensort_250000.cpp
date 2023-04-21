#include <iostream>
#include <vector>
using namespace std;

void oddEvenSort(vector<int>& arr) {
    int n = arr.size();
    bool sorted = false;
    while (!sorted) {
        sorted = true;
        for (int i = 1; i < n - 1; i += 2) {
            if (arr[i] > arr[i + 1]) {
                swap(arr[i], arr[i + 1]);
                sorted = false;
            }
        }
        for (int i = 0; i < n - 1; i += 2) {
            if (arr[i] > arr[i + 1]) {
                swap(arr[i], arr[i + 1]);
                sorted = false;
            }
        }
    }
}

int main() {
    bool debug = false;
    
    oddEvenSort(arr);
    if(debug) {
        int n = arr.size();
        for (int i = 0; i < n; i++){
            cout << arr[i] << " ";
        }
    } 

    return 0;
}