func selectionSort<T: Comparable>(_ array: inout [T]) {
    for i in 0..<array.count {
        var minIndex = i
        for j in i+1..<array.count {
            if array[j] < array[minIndex] {
                minIndex = j
            }
        }
        if i != minIndex {
            array.swapAt(i, minIndex)
        }
    }
}


var debug = false

selectionSort(&arr)
if(debug) {
    print(arr)
}