oddevensort :: Ord a => [a] -> [a]
oddevensort [] = []
oddevensort [x] = [x]
oddevensort xs = let (odds, evens) = split xs
                 in merge (oddevensort odds) (oddevensort evens)

split :: [a] -> ([a], [a])
split [] = ([], [])
split [x] = ([x], [])
split (x:y:xs) = let (odds, evens) = split xs
                 in (x:odds, y:evens)

merge :: Ord a => [a] -> [a] -> [a]
merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys) | x < y = x : merge xs (y:ys)
                    | otherwise = y : merge (x:xs) ys


main = (oddevensort arr) `seq` (return ())