-- type declaration of the function
-- since haskell has type inference, it's not required to create the type declaration, but it's a good practice.
add:: Int -> Int -> Int
add x y = x + y

isOdd:: Int -> Bool
isOdd x = not (x `mod` 2 == 0)

addTuples:: (Int, Int) -> (Int, Int) -> (Int, Int)
addTuples (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

whatAge:: Int -> String
whatAge 16 = "You can drive"
whatAge 18 = "You can vote"
whatAge 21 = "You're an adult"
whatAge _ = "Nothing important"

-- Recursive functions
factorial:: Int -> Int
factorial 0 = 1
factorial n = n * factorial(n - 1)

-- Guards

concept :: Float -> Char
concept n
  | n >= 9 = 'A'
  | n >= 7.5 = 'B'
  | n >= 6 = 'C'
  | n >= 4 = 'D'
  | otherwise = 'E'

-- Guards with where statement

getRoots:: Float -> Float -> Float -> [Float]
getRoots a b c
  | delta < 0 = []
  | delta == 0 = [-b/2*a]
  | otherwise = [(-b + sqrt delta )/2*a, (-b - sqrt delta)/2*a]
  where delta = b*b - 4*a*c