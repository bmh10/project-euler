solve = gen [1,2]

gen l@(x:y:xs)
 | (length $ show n) >= 1000 = length l + 1
 | otherwise = gen (n:l)
   where n = x+y
