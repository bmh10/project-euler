solve = sum $ filter isAmicable [1..10000]

isAmicable n = n /= dn && n == d dn
  where dn = d n


d = sum . divs
divs n = [x | x <- [1..(n-1)], n `rem` x == 0]
