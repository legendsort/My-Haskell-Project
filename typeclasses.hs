-- Defining type declaration for a function.
-- Input: string
-- Output: string
removeUppercase :: String -> String 
removeUppercase str = [ c | c <- str, c `elem` ['a'..'z']]

-- Function to add three numbers.
-- Input: a, b and c (all integers)
-- Output: integer
addNumbers :: Int -> Int -> Int -> Int
addNumbers a b c = a + b + c