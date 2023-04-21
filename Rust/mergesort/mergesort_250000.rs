fn mergesort<T: Ord + Clone>(arr: &mut [T]) {
    let n = arr.len();
    if n <= 1 {
        return;
    }
    let mid = n / 2;
    mergesort(&mut arr[..mid]);
    mergesort(&mut arr[mid..]);
    let mut temp = Vec::with_capacity(n);
    let (mut i, mut j) = (0, mid);
    while i < mid && j < n {
        if arr[i] <= arr[j] {
            temp.push(arr[i].clone());
            i += 1;
        } else {
            temp.push(arr[j].clone());
            j += 1;
        }
    }
    while i < mid {
        temp.push(arr[i].clone());
        i += 1;
    }
    while j < n {
        temp.push(arr[j].clone());
        j += 1;
    }
    for (i, value) in temp.into_iter().enumerate() {
        arr[i] = value;
    }
}

fn main() {
    let debug: bool = false;
    mergesort(&mut arr);
    if debug {
        println!("{:?}", arr);
    }
}