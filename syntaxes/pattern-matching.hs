-- Pattern matching is similar to try-catch.
sayMe :: (Integral a) => a -> String  
sayMe 1 = "One!"  
sayMe 2 = "Two!"  
sayMe 3 = "Three!"  
sayMe 4 = "Four!"  
sayMe 5 = "Five!"  
sayMe x = "Not between 1 and 5"

-- Recursive factorial, instead of "product [1..n]"
factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial(n-1)

tell :: (Show a) => [a] -> String  
tell [] = "The list is empty"  
tell (x:[]) = "The list has one element: " ++ show x  
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y  
tell (x:y:_) = "This list is long. The first two elements are: " ++ show x ++ " and " ++ show y

bmiTell :: (RealFloat a) => a -> a -> String  
bmiTell weight height  
    | weight / height ^ 2 <= 18.5   = "You're underweight!"  
    | weight / height ^ 2 <= 25.0   = "You're supposedly normal!"  
    | weight / height ^ 2 <= 30.0   = "You're overweight!"  
    | otherwise                     = "You're obese!"  

-- Improved version of bmiTell.
bmiTell' :: (RealFloat a) => a -> a -> String
bmiTell' weight height
    | bmi <= 18.5   = "You're underweight!"  
    | bmi <= 25.0   = "You're supposedly normal!"  
    | bmi <= 30.0   = "You're overweight!"  
    | otherwise     = "You're obese!"
    where   bmi = weight / height ^ 2
            skinny = 18.5  
            normal = 25.0  
            fat = 30.0

-- Given first and last name, return the initial character of each name.
initials :: String -> String -> String
initials firstName lastName = [first] ++ " " ++ [last]
    where   (first:_) = firstName
            (last:_) = lastName

-- Function that takes a list of weight-height pairs and returns a list of BMIs.
bmiList :: (RealFloat a) => [(a, a)] -> [a]
bmiList xs = [bmi w h | (w, h) <- xs]
    where   bmi weight height = weight / height ^ 2

-- Compute a cylinder area, given radius and height.
cylinderArea :: (RealFloat a) => a -> a -> a
cylinderArea radius height =
    let sideArea = 2 * pi * radius * height
        topArea = pi * radius^2
    in sideArea + 2 * topArea

-- Same as above, using where clause
cylinderArea' :: (RealFloat a) => a -> a -> a
cylinderArea' radius height = cylinderTotalArea
    where   sideArea = 2 * pi * radius * height
            topArea = pi * radius^2
            cylinderTotalArea = sideArea + 2 * topArea

describeList :: [a] -> String  
describeList xs = "The list is " ++ what xs  
    where what [] = "empty."  
          what [x] = "a singleton list."  
          what xs = "a longer list." 