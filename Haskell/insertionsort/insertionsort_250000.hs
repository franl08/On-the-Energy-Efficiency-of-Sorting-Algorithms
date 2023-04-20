insertionsort :: Ord a => [a] -> [a]
insertionsort [] = []
insertionsort [x] = [x]
insertionsort (x:xs) = insert x (insertionsort xs)
  where
    insert x [] = [x]
    insert x (y:ys)
        | x <= y    = x : y : ys
        | otherwise = y : insert x ys


main = (insertionsort arr) `seq` (return ())