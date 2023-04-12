-- To compile the module, run ghci and then :l hello
-- To see the API of a function, type :t <function_name> ex: :t sqrt
{-
  multi-line
  comments
-}

import Data.List
import System.IO

{-
  Data Types:
    Int, 
-}

-- Since haskell has type inference, there's no need to define the type of the variable,
-- I'm doing this here just for documentation of the type
maxInt = maxBound :: Int
minInt = minBound :: Int
doubleVariable = 4.000001 :: Double
booleanVariable = True :: Bool
charVariable = 'a' :: Char

-- You don't have to assign the value in the same expression
alwaysFive :: Int
alwaysFive = 5

-- Math functions

sumOfNums = sum [1..1000]
modEx = mod 5 4
modEx2 = 5 `mod` 4
-- It's strongly typed
five = 5 :: Int
sqrtOf5 = sqrt(fromIntegral five)

-- Built-in math functions

piValue = pi
ePow9 = exp 9
lnOf9 = log 9
squared9 = 9 ** 2
truncatedValue = truncate 9.999
roundedValue = round 9.999
ceilingValue = ceiling 9.999
floorValue = floor 9.999

-- Logical operators

andGate = True && False
orGate = True || False
notGate = not(True)


-- Lists

primeNumbers = [3, 5, 7, 11]
morePrimeNumbers = primeNumbers ++ [13, 17, 19, 23, 29]