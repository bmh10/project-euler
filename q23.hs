--TODO
allAbundant = filter isAbundant [1..28123]
isAbundant x = (sum $ divisors x) > x
isPerfect x = (sum $ divisors x) == x

divisors n = [x | x <- [1..(n-1)], n `rem` x == 0]
