func heapSort<T: Comparable>(_ array: [T]) -> [T] {
    var heap = Heap(array: array, sort: <)
    var sorted: [T] = []
    
    while !heap.isEmpty {
        sorted.append(heap.remove()!)
    }
    
    return sorted
}

struct Heap<T: Comparable> {
    private var elements: [T] = []
    let sort: (T, T) -> Bool
    
    init(array: [T], sort: @escaping (T, T) -> Bool) {
        self.sort = sort
        buildHeap(from: array)
    }
    
    var isEmpty: Bool {
        return elements.isEmpty
    }
    
    var count: Int {
        return elements.count
    }
    
    func peek() -> T? {
        return elements.first
    }
    
    mutating func insert(_ element: T) {
        elements.append(element)
        siftUp(from: elements.count - 1)
    }
    
    mutating func remove() -> T? {
        guard !isEmpty else {
            return nil
        }
        
        if elements.count == 1 {
            return elements.removeFirst()
        } else {
            let root = elements[0]
            elements[0] = elements.removeLast()
            siftDown(from: 0)
            return root
        }
    }
    
    private mutating func buildHeap(from array: [T]) {
        elements = array
        for i in stride(from: (elements.count/2 - 1), through: 0, by: -1) {
            siftDown(from: i)
        }
    }
    
    private mutating func siftUp(from index: Int) {
        var child = index
        var parent = parentIndex(child)
        
        while child > 0 && sort(elements[child], elements[parent]) {
            elements.swapAt(child, parent)
            child = parent
            parent = parentIndex(child)
        }
    }
    
    private mutating func siftDown(from index: Int) {
        var parent = index
        
        while true {
            let left = leftChildIndex(parent)
            let right = rightChildIndex(parent)
            var candidate = parent
            
            if left < elements.count && sort(elements[left], elements[candidate]) {
                candidate = left
            }
            
            if right < elements.count && sort(elements[right], elements[candidate]) {
                candidate = right
            }
            
            if candidate == parent {
                return
            }
            
            elements.swapAt(parent, candidate)
            parent = candidate
        }
    }
    
    private func parentIndex(_ childIndex: Int) -> Int {
        return (childIndex - 1) / 2
    }
    
    private func leftChildIndex(_ parentIndex: Int) -> Int {
        return 2 * parentIndex + 1
    }
    
    private func rightChildIndex(_ parentIndex: Int) -> Int {
        return 2 * parentIndex + 2
    }
}

var arr = [func heapSort<T: Comparable>(_ array: [T]) -> [T] {
    var heap = Heap(array: array, sort: <)
    var sorted: [T] = []
    
    while !heap.isEmpty {
        sorted.append(heap.remove()!)
    }
    
    return sorted
}

struct Heap<T: Comparable> {
    private var elements: [T] = []
    let sort: (T, T) -> Bool
    
    init(array: [T], sort: @escaping (T, T) -> Bool) {
        self.sort = sort
        buildHeap(from: array)
    }
    
    var isEmpty: Bool {
        return elements.isEmpty
    }
    
    var count: Int {
        return elements.count
    }
    
    func peek() -> T? {
        return elements.first
    }
    
    mutating func insert(_ element: T) {
        elements.append(element)
        siftUp(from: elements.count - 1)
    }
    
    mutating func remove() -> T? {
        guard !isEmpty else {
            return nil
        }
        
        if elements.count == 1 {
            return elements.removeFirst()
        } else {
            let root = elements[0]
            elements[0] = elements.removeLast()
            siftDown(from: 0)
            return root
        }
    }
    
    private mutating func buildHeap(from array: [T]) {
        elements = array
        for i in stride(from: (elements.count/2 - 1), through: 0, by: -1) {
            siftDown(from: i)
        }
    }
    
    private mutating func siftUp(from index: Int) {
        var child = index
        var parent = parentIndex(child)
        
        while child > 0 && sort(elements[child], elements[parent]) {
            elements.swapAt(child, parent)
            child = parent
            parent = parentIndex(child)
        }
    }
    
    private mutating func siftDown(from index: Int) {
        var parent = index
        
        while true {
            let left = leftChildIndex(parent)
            let right = rightChildIndex(parent)
            var candidate = parent
            
            if left < elements.count && sort(elements[left], elements[candidate]) {
                candidate = left
            }
            
            if right < elements.count && sort(elements[right], elements[candidate]) {
                candidate = right
            }
            
            if candidate == parent {
                return
            }
            
            elements.swapAt(parent, candidate)
            parent = candidate
        }
    }
    
    private func parentIndex(_ childIndex: Int) -> Int {
        return (childIndex - 1) / 2
    }
    
    private func leftChildIndex(_ parentIndex: Int) -> Int {
        return 2 * parentIndex + 1
    }
    
    private func rightChildIndex(_ parentIndex: Int) -> Int {
        return 2 * parentIndex + 2
    }
}


var debug = false

let sorted = heapSort(arr)
if debug {
    print(sorted)
}]

var debug = false

let sorted = heapSort(arr)
if debug {
    print(sorted)
}