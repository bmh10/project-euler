import Data.Char

fact n = product [1..n]

test n = sum $ map (fact . digitToInt) (show n)
