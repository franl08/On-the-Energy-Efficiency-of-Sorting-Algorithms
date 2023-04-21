func insertionSort<T: Comparable>(_ array: inout [T]) {
    for i in 1..<array.count {
        var j = i
        while j > 0 && array[j] < array[j-1] {
            array.swapAt(j, j-1)
            j -= 1
        }
    }
}


var debug = false

insertionSort(&arr)
if (debug) {
    print(arr)
}