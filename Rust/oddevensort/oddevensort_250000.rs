fn odd_even_sort<T: PartialOrd>(arr: &mut [T]) {
    let len = arr.len();
    let mut sorted = false;
    while !sorted {
        sorted = true;
        for i in (0..len - 1).step_by(2) {
            if arr[i] > arr[i + 1] {
                arr.swap(i, i + 1);
                sorted = false;
            }
        }
        for i in (1..len - 1).step_by(2) {
            if arr[i] > arr[i + 1] {
                arr.swap(i, i + 1);
                sorted = false;
            }
        }
    }
}

fn main() {
    let debug: bool = false;
    odd_even_sort(&mut arr);
    if debug {
        println!("{:?}", arr);
    }    
}