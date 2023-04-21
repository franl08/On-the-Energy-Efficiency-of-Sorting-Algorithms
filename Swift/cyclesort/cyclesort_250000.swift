func cycleSort<T: Comparable>(_ array: inout [T]) {
    let n = array.count
    for cycleStart in 0..<n-1 {
        var item = array[cycleStart]
        var pos = cycleStart
        for i in cycleStart+1..<n {
            if array[i] < item {
                pos += 1
            }
        }
        if pos == cycleStart {
            continue
        }
        while item == array[pos] {
            pos += 1
        }
        let temp = array[pos]
        array[pos] = item
        item = temp
        while pos != cycleStart {
            pos = cycleStart
            for i in cycleStart+1..<n {
                if array[i] < item {
                    pos += 1
                }
            }
            while item == array[pos] {
                pos += 1
            }
            let temp = array[pos]
            array[pos] = item
            item = temp
        }
    }
}


var debug = false

if (debug) {
        print(arr)
}