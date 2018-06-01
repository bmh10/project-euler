--TODO
allAbundant = filter isAbundant [1..28123]
:x
isPerfect x = (sum $ divisors x) == x

divisors n = [x | x <- [1..(n-1)], n `rem` x == 0]
