#include <iostream>
#include <vector>
using namespace std;

void cycleSort(vector<int>& arr) {
    int n = arr.size();
    for (int cycleStart = 0; cycleStart < n - 1; cycleStart++) {
        int item = arr[cycleStart];
        int pos = cycleStart;
        for (int i = cycleStart + 1; i < n; i++) {
            if (arr[i] < item) {
                pos++;
            }
        }
        if (pos == cycleStart)
            continue;
        while (item == arr[pos])
            pos++;
        swap(item, arr[pos]);
        while (pos != cycleStart) {
            pos = cycleStart;
            for (int i = cycleStart + 1; i < n; i++) {
                if (arr[i] < item) {
                    pos++;
                }
            }
            while (item == arr[pos])
                pos++;
            swap(item, arr[pos]);
        }
    }
}

int main() {
    bool debug = false;

    cycleSort(arr);
    if(debug) {
        int n = arr.size();
        for (int i = 0; i < n; i++){
            cout << arr[i] << " ";
        }
    } 

    return 0;
}