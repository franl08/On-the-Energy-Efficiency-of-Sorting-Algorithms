func oddEvenSort<T: Comparable>(_ array: inout [T]) {
    var sorted = false
    while !sorted {
        sorted = true
        for i in stride(from: 1, to: array.count-1, by: 2) {
            if array[i] > array[i+1] {
                array.swapAt(i, i+1)
                sorted = false
            }
        }
        for i in stride(from: 0, to: array.count-1, by: 2) {
            if array[i] > array[i+1] {
                array.swapAt(i, i+1)
                sorted = false
            }
        }
    }
}

var arr = [1, 2, 3]

var debug = false

oddEvenSort(&arr)

if debug {
    print(arr)
}