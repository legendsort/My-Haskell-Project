-- Simple functions
helloWorld = "Hello World!"
double x = x + x
add x y = x + y
multiply x y z = x * y * z

-- Multiply a number by 2 only if the number is > 100.
-- After it, add 1 to the result.
doubleNumber x =
    if x > 100
        then x * 2
        else x

addDoubleNumber x = (doubleNumber x) + 1
