-- Returning a defined list
oneToFour = [1, 2, 3, 4]
fiveToTen = [5, 6, 7, 8, 9, 10]
listOfLists = [[1, 2, 3], [4, 5, 6]]

-- Concatenating lists
concatNumbers = oneToFour ++ fiveToTen          -- [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
helloWorld = "hello" ++ " " ++ "world"          -- "hello world"
hello = ['h', 'e'] ++ ['l', 'l', 'o']           -- "hello"
addInFirstIndex = 5 : oneToFour                 -- [5, 1, 2, 3, 4]

-- For two numbers, add them in a list.
-- Example: addToList 1 2 returns [1, 2]
addToList x y = x : y : []

-- Getting a specific element by index.
-- Example: getByIndex 1 returns 2
getByIndex x = [1, 2, 3] !! x

-- Lists comparison. Given [x, y] and [z, w],
-- check if the first list is bigger than second (lexicographical order)
isBigger x y z w =
    (addToList x y) > (addToList z w)

-- Returns the first element of a list          
firstElement = head oneToFour                   -- 1    
firstInListOfLists = head listOfLists           -- [1, 2, 3]

-- Returns the last element of a list
lastElement = last oneToFour                    -- 4

-- Returns all elements except the first
tailElements = tail oneToFour                   -- [2, 3, 4]

-- Returns all elements except the last
initElements = init oneToFour                   -- [1, 2, 3]

-- Returns the list length
listLength = length oneToFour                   -- 4

-- Check if a list is empty
isEmpty = null oneToFour                        -- False

-- Reverse elements in a list       
revert = reverse fiveToTen                      -- [10, 9, 8, 7, 6, 5]

-- Get the first N elements in a list.
-- Example: getElements 3 returns [5, 6, 7]
getElements x = take x fiveToTen

-- Removing the first N elements in a list.
-- Example removeElements 2 returns [7, 8, 9, 10]
removeElements x = drop x fiveToTen          

-- Returns the biggest element in a list.
biggest = maximum fiveToTen                     -- 10

-- Returns the smallest element in a list.
smallest = minimum fiveToTen                    -- 5

-- Sum of all elements.
sumElements = sum oneToFour

-- Product of all elements in a list.
productElements = product oneToFour

-- Check if the element exists in a list.
-- Example: 2 exists in [1, 2, 3, 4] ? True.
containsInList x = x `elem` oneToFour