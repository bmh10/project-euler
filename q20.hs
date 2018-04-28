import Data.Char

solve = sumDigits . fac

fac n = product [1..n]

sumDigits n = sum $ map digitToInt $ show n
