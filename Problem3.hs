--
-- (*) Find the K'th element of a list. The first element in the list is number 1.
-- Example:
-- * (element-at '(a b c d e) 3)
-- c
-- Example in Haskell:
-- Prelude> elementAt [1,2,3] 2
-- 2
-- Prelude> elementAt "haskell" 5
-- 'e'
--

elementAt :: [a] -> Int -> a
elementAt xs idx
    | idx > len || idx < 1 = error "index exceeds list's length"
    | otherwise = xs !! (idx - 1)
    where len = length xs
