-- All numbers from 1 to 10
oneToTen = [1..10]

-- All numbers from 10 to 1
tenToOne = [10, 9..1]

-- All characters in the alphabet
alphabet = ['a'..'z']

-- All even and odd numbers betweeen 1 to 20
evenNumbers = [2, 4..20]
oddNumbers = [1, 3..20]

-- Every third number between 1 to 20
thirdNumbers = [3, 6..20]

-- Get first N multipliers of X.
-- Example: first 5 multipliers of 2 = [2, 4, 6, 8, 10]
mult n z = take n [z, z*2..]

-- Create an infinite list [X, Y] and show Z
infiniteList x y z = take z (cycle [x, y])