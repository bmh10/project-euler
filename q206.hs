import Data.List

solve = find matches [x | x <- [1000000000..]]

matches x = everyOtherDigit (show (x*x)) == "1234567890"

everyOtherDigit [] = []
everyOtherDigit [a] = [a]
everyOtherDigit (x:y:xs) = x:everyOtherDigit xs
