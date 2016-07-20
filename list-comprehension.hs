-- Get first N multipliers of X.
-- Example: first 5 multipliers of 2 = [2, 4, 6, 8, 10]
mult n x = take n [x, x*2..]

-- Same as above, using list comprehension.
-- Example: listCompMult 5 3
-- Answer: [3, ]
listCompMult n x = [y*x | y <- [1..n]]

-- Get first N multipliers of X which each element is greater than W.
-- Example: listCompMultN 5 3 12
-- Result: [15, 18, 21, 24, 27]
listCompMultN n x w = take n ([y*x | y <- [1..], y*x > w])

-- Get all numbers from X to Y whose remainder when divided by N is 3.
-- Example: listRangeRemainder 50 100 7
-- Result: [52, 59, 66, 73, 80, 87, 94]
listRangeRemainder x y n = [z | z <- [x..y], z `mod` n == 3]

-- Replaces each odd number > 10 with "BANG!" and each odd number < 10 with "BOOM!".
-- Example: boomBangs [7..13]
-- Result: ["BOOM!","BOOM!","BANG!","BANG!"] 
boomBangs list = [if x > 10 then "BANG!" else "BOOM!" | x <- list, odd x]

-- Get all numbers from X to Y that is not 13, 15 and 19.
filteredList x y = [z | z <- [x..y], z /= 13, z /= 15, z /= 19]

-- Get all possible products combinations between numbers in two lists.
-- Example: listProducts [2,5,10] [8,10,11]
-- Result: [16,20,22,40,50,55,80,100,110]
listProducts xs ys = [x*y | x <- xs, y <- ys]

-- Get all possible products that are more than 50, from sample above.
listProductsFiltered xs ys = [x*y | x <- xs, y <- ys, x*y > 50]

-- For the sample above, get the product of all elements.
listProdResult xs ys = product (listProducts xs ys)

-- Get a combination of lists (nouns and adjectives)
nounsAndAdjectives nouns adjs = [adj ++ " " ++ noun | adj <- adjs, noun <- nouns]

-- Remove characters that are not uppercase.
removeNonUppercase str = [character | character <- str, character `elem` ['A'..'Z']]

-- Remove odd numbers from list of lists.
-- Example: removeOddNumbers [[1,3,5,2,3,1,2,4,5],[1,2,3,4,5,6,7,8,9],[1,2,4,2,1,6,3,1,3,2,3,6]]
-- Result: [[2,2,4],[2,4,6,8],[2,4,2,6,2,6]]
removeOddNumbers xxs = [[x | x <- xs, even x] | xs <- xxs]
