fn quicksort<T: Ord + Copy>(arr: &mut [T]) {
    let len = arr.len();
    if len <= 1 {
        return;
    }
    let pivot = arr[len / 2];
    let mut i = 0;
    let mut j = len - 1;
    while i <= j {
        while arr[i] < pivot {
            i += 1;
        }
        while arr[j] > pivot {
            j -= 1;
        }
        if i <= j {
            arr.swap(i, j);
            i += 1;
            j -= 1;
        }
    }
    if j > 0 {
        quicksort(&mut arr[0..=j]);
    }
    if i < len - 1 {
        quicksort(&mut arr[i..]);
    }
}
    

fn main() {
    let debug: bool = false;
    quicksort(&mut arr);
    if debug {
        println!("{:?}", arr);
    }
}