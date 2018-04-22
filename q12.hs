tri 1 = 1
tri n = n + tri (n-1)

divisors n = [x | x <- [1..n], n `rem` x == 0]

solve = map (length.divisors) $ map tri [1..10]

