import Data.Char

solve = sum $ filter test [3..100000]

test n = n == (sum $ map (fact . digitToInt) (show n))

fact n = product [1..n]
