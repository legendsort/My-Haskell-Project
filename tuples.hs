-- Get first and second components of a pair
-- Note: fst and snd only work for pairs (x, y)!
getFirstComponent x y = fst (x, y)
getSecondComponent x y = snd (x, y)

-- Given two lists, traverse them simultaneously.
-- Example: traverse [1 .. 5] ["one", "two", "three", "four", "five"]
-- Result: [(1,"one"),(2,"two"),(3,"three"),(4,"four"),(5,"five")]  
traverseLists firstList secondList = zip firstList secondList

-- Get all possible triangles with sides <= N.
-- Example: triangles 2
-- Result: [(1,1,1),(2,1,1),(1,2,1),(2,2,1),(1,1,2),(2,1,2),(1,2,2),(2,2,2)]
triangles n = [(a, b, c) | c <-[1..n], b <- [1..n], a <- [1..n]] 

-- Get all possible right triangles with sides <= N.
-- Right triangles: side b isn't larger than the hypothenuse (c) and side a isn't larger than side b
isRightTriangle a b c = a^2 + b^2 == c^2
rightTriangles n = [(a, b, c) | c <-[1..n], b <- [1..c], a <- [1..b], isRightTriangle a b c] 

-- Same as above, but now considering that all triangles must have perimeter = W.
isValidPerimeter a b c w = (a + b + c) == w
rightTriangles' n w = [(a, b, c) | c <-[1..n], b <- [1..c], a <- [1..b], isRightTriangle a b c, isValidPerimeter a b c w]