import Numeric (showHex, showIntAtBase)
import Data.Char (intToDigit)

solve = [x | x <- [1..1000000], isPalindrome (show x), isPalindrome (toBinary x)]

isPalindrome [] = True
isPalindrome [x] = True
isPalindrome (x:xs) = x == (last xs) && isPalindrome (init xs) 

toBinary x = showIntAtBase 2 intToDigit x ""
