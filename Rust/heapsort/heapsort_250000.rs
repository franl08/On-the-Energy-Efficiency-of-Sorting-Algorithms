fn heapsort<T: Ord>(arr: &mut [T]) {
    let n = arr.len();
    // Build heap (rearrange array)
    for i in (0..n / 2).rev() {
        heapify(arr, n, i);
    }
    // One by one extract an element from heap
    for i in (1..n).rev() {
        arr.swap(0, i);
        // call max heapify on the reduced heap
        heapify(arr, i, 0);
    }
}

fn heapify<T: Ord>(arr: &mut [T], n: usize, i: usize) {
    let mut largest = i; // Initialize largest as root
    let left = 2 * i + 1; // left child
    let right = 2 * i + 2; // right child

    // If left child is larger than root
    if left < n && arr[left] > arr[largest] {
        largest = left;
    }

    // If right child is larger than largest so far
    if right < n && arr[right] > arr[largest] {
        largest = right;
    }

    // If largest is not root
    if largest != i {
        arr.swap(i, largest);

        // Recursively heapify the affected sub-tree
        heapify(arr, n, largest);
    }
}

fn main() {
    let debug: bool = false;
    heapsort(&mut arr);
    if debug {
        println!("{:?}", arr);
    }
}