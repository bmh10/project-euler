toWords :: Int -> String
toWords 1  = "one"
toWords 2  = "two"
toWords 3  = "three"
toWords 4  = "four"
toWords 5  = "five"
toWords 6  = "six"
toWords 7  = "seven"
toWords 8  = "eight"
toWords 9  = "nine"
toWords 10 = "ten"
toWords 11 = "eleven"
toWords 12 = "twelve"
toWords 13 = "thirteen"
toWords 14 = "fourteen"
toWords 15 = "fifteen"
toWords 16 = "sixteen"
toWords 17 = "seventeen"
toWords 18 = "eighteen"
toWords 19 = "nineteen"
toWords 20 = "twenty"
toWords 30 = "thirty"
toWords 40 = "forty"
toWords 50 = "fifty"
toWords 60 = "sixty"
toWords 70 = "seventy"
toWords 80 = "eighty"
toWords 90 = "ninety"
toWords n
 | n < 100 = toWords (n - m10) ++ " " ++ toWords m10
 | n > 100 = n 
  where 
    m10 = (n `mod` 10)
    
