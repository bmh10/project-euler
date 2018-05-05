

toWords :: Int -> String
toWords 0 = ""
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
toWords 1000 = "one thousand"
toWords n
 | n < 100 = toWords (n - nm10) ++ " " ++ toWords nm10
 | nm100 == 0 = toWords nd100 ++ " hundred" 
 | n > 100 = toWords nd100 ++ " hundred and " ++ toWords nm100
  where 
    nm10 = n `mod` 10
    nd100 = n `div` 100
    nm100 = n `mod` 100
    
