fn bubble_sort<T: Ord>(arr: &mut [T]) {
    let mut n = arr.len();
    loop {
        let mut new_n = 0;
        for i in 1..n {
            if arr[i - 1] > arr[i] {
                arr.swap(i - 1, i);
                new_n = i;
            }
        }
        n = new_n;
        if n <= 1 {
            break;
        }
    }
}

fn main() {
    let debug: bool = false;
    bubble_sort(&mut arr);
    if debug {
        println!("{:?}", arr);
    }
}