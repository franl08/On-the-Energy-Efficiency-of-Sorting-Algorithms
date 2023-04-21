fn cycle_sort<T: Ord + Copy>(arr: &mut [T]) {
    let n = arr.len();
    for cycle_start in 0..n {
        let mut item = arr[cycle_start];
        let mut pos = cycle_start;
        for i in cycle_start + 1..n {
            if arr[i] < item {
                pos += 1;
            }
        }
        if pos == cycle_start {
            continue;
        }
        while item == arr[pos] {
            pos += 1;
        }
        let old_item = std::mem::replace(&mut arr[pos], item);
        item = old_item;
        while pos != cycle_start {
            pos = cycle_start;
            for i in cycle_start + 1..n {
                if arr[i] < item {
                    pos += 1;
                }
            }
            while item == arr[pos] {
                pos += 1;
            }
            let old_item = std::mem::replace(&mut arr[pos], item);
            item = old_item;
        }
    }
}

fn main() {
    let debug: bool = false;
    cycle_sort(&mut arr);
    if debug {
        println!("{:?}", arr);
    }
    
}