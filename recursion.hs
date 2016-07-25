-- Given a list, return the maximum value in the list.
-- The maximum of a longer list is the head if the head is bigger than the maximum of the tail.
-- If the maximum of the tail is bigger, well, then it's the maximum of the tail. 
getMaxElement :: (Ord a) => [a] -> a
getMaxElement [] = error "The list is empty!"
getMaxElement [x] = x
getMaxElement (x:xs)
    | x > currentElem = x
    | otherwise = currentElem
    where currentElem = getMaxElement xs

-- Same function of above, but using max function.
-- Example: [2,5,1]
-- Solution: max 2 (max 5 1) = max 2 5 = 5
getMaxElement' :: (Ord a) => [a] -> a
getMaxElement' [] = error "The list is empty!"
getMaxElement' [x] = x
getMaxElement' (x:xs) = max x (getMaxElement' xs)

-- Return a list that has repetitions of a value X, N times.
-- Example: replicateValue 3 5 = [5,5,5]
replicateValue :: (Num i, Ord i) => i -> a -> [a]
replicateValue n x
    | n <= 0 = []
    | otherwise = x : replicateValue (n-1) x

-- Return first N element os a list.
-- Example: takeElements 3 [5,4,3,2,1] = [5,4,3]
takeElements :: (Num i, Ord i) => i -> [a] -> [a]
takeElements n _
    | n <= 0 = []
takeElements _ [] = []
takeElements n (x:xs) = x : takeElements (n-1) xs

-- Return an inverted list.
-- Example: revertList [1,2,3] = [3,2,1]
revertList :: [a] -> [a]
revertList [] = []
revertList (x:xs) = revertList xs ++ [x]