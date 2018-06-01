import Data.Array 
import Data.List (nub)
import Data.Ratio
n = 28124
abundant n = totient n - n > n
abunds_array = listArray (1,n) $ map abundant [1..n]
abunds = filter (abunds_array !) [1..n]
 
rests x = map (x-) $ takeWhile (<= x `div` 2) abunds
isSum = any (abunds_array !) . rests
 
solve = print . sum . filter (not . isSum) $ [1..n]

eulerTotient n = length [x | x <- [1..n], coprime x n]
  where coprime a b = gcd a b == 1

totient :: (Integral a) => a -> a
totient 1 = 1
totient n = numerator ratio `div` denominator ratio
 where ratio = foldl (\acc x -> acc * (1 - (1 % x))) 
                 (n % 1) $ nub (primeFactors n)

primeFactors 1 = []
primeFactors n
  | factors == []  = [n]
  | otherwise = factors ++ primeFactors (n `div` (head factors))
  where factors = take 1 $ filter (\x -> (n `mod` x) == 0) [2 .. n-1]
