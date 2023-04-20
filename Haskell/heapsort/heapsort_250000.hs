import Data.List (unfoldr)

heapsort :: Ord a => [a] -> [a]
heapsort = unfoldr heapify
  where
    heapify [] = Nothing
    heapify xs = Just (minElem, buildHeap (removeElem minElem xs))
      where
        minElem = minimum xs
        removeElem e [] = []
        removeElem e (x:xs)
            | x == e    = xs
            | otherwise = x : removeElem e xs
        buildHeap [] = []
        buildHeap [x] = [x]
        buildHeap xs = let (node, children) = splitAt 2 xs
                           heapifiedNode = heapifyNode node
                       in heapifiedNode ++ buildHeap children
        heapifyNode [x] = [x]
        heapifyNode [x, y]
            | x <= y    = [x, y]
            | otherwise = [y, x]


main = (heapsort arr) `seq` (return ())