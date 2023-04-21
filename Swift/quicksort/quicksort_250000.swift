func quicksort<T: Comparable>(_ array: [T]) -> [T] {
    guard array.count > 1 else {
        return array
    }

    let pivot = array[array.count / 2]
    let less = array.filter { $0 < pivot }
    let equal = array.filter { $0 == pivot }
    let greater = array.filter { $0 > pivot }

    return quicksort(less) + equal + quicksort(greater)
}


var debug = false

let sorted = quicksort(arr)
if (debug) {
    print(sorted)
}