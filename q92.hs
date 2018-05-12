import Data.Char

solve = length $ filter endsWith89 [1..10000000]

endsWith89 n = (last $ chain n) == 89

chain n
 | n == 1 || n == 89 = [n]
 | otherwise = n:chain nxt
    where nxt = sum $ map (\x->x*x) $ digits n

digits n = map digitToInt $ show n
