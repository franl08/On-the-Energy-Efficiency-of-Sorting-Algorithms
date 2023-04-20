selectionsort :: Ord a => [a] -> [a]
selectionsort [] = []
selectionsort xs = let (min, rest) = extractMin xs
                   in min : selectionsort rest
  where
    extractMin [x] = (x, [])
    extractMin (x:xs) = let (min, rest) = extractMin xs
                        in if x <= min then (x, xs) else (min, x:rest)


main = (selectionsort arr) `seq` (return ())