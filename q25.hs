fib 1 = 1
fib 2 = 1
fib n = fib (n-1) + fib (n-2)

solve = gen [1,2]


gen (x:y:xs)
 | (length $ show n) > 1000 = length xs + 3
 | otherwise = gen (x+y:x:y:xs)
   where n = x+y
