
solve = maximum $ search [(x, y) | x <- [999, 998..100], y <- [999, 998..100]] []

search [] res = res
search ((x, y):xs) res 
 | isPalindrome m = search xs (m:res)
 | otherwise      = search xs res
  where m = x*y

isPalindrome :: Integer -> Bool
isPalindrome n = let s = show n in s == reverse s
