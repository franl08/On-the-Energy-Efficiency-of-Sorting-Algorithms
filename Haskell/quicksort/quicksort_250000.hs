quicksort :: Ord a => [a] -> [a]
quicksort [] = []
quicksort (pivot:xs) =
    let smaller = quicksort [x | x <- xs, x < pivot]
        bigger = quicksort [x | x <- xs, x >= pivot]
    in smaller ++ [pivot] ++ bigger


main = (quicksort arr) `seq` (return ())