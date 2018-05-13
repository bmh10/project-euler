import Data.Char

-- TODO
solve = [x | x <- [1..1000000], powerDigits x 5 == x]

powerDigits n p = sum $ map (\x->x^p) $ map digitToInt $ show n
