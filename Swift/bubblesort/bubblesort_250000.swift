func bubbleSort<T: Comparable>(_ array: inout [T]) {
    let n = array.count
    for i in 0..<n {
        for j in 1..<n-i {
            if array[j-1] > array[j] {
                array.swapAt(j-1, j)
            }
        }
    }
}

var debug = false


bubbleSort(&arr)

if (debug) {
    print(arr)
}