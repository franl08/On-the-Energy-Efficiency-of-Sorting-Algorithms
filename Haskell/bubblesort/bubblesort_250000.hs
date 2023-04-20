bubblesort :: Ord a => [a] -> [a]
bubblesort xs = foldr bubble [] xs
  where
    bubble x [] = [x]
    bubble x (y:ys)
      | x <= y    = x : y : ys
      | otherwise = y : bubble x ys


main = (bubblesort arr) `seq` (return ())