import Data.Char

solve = sumDigits . fac

fac 1 = 1
fac n = n * fac (n-1)

sumDigits n = sum $ map digitToInt $ show n
