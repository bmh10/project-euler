import Data.Array
import Data.List
import Data.Ord (comparing)
 
cols n = a
  where 
  a = listArray (1,n) $ 0 : map col [2..n]
  col x = 
      if y <= n then 1 + a ! y else 1 + col y
        where 
        y = if even x then x `div` 2 else 3 * x + 1
 
solve =  maximumBy (comparing snd) . assocs . cols $ 1000000
