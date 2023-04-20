cyclesort :: Ord a => [a] -> [a]
cyclesort [] = []
cyclesort xs = foldr cycle [last xs] (init xs)
  where
    cycle x acc = let i = length $ filter (<x) acc
                      (ys, zs) = splitAt i acc
                  in ys ++ x : zs


main = (cyclesort arr) `seq` (return ())