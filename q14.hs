import Data.Ord
import Data.List

solve = maximumBy (comparing snd) $ zip [1..] $ map coll [1..1000000]

coll n = coll' n 0
coll' n l
 | n == 1         = l+1
 | n `mod` 2 == 0 = coll' (n `div` 2) (l+1)
 | otherwise      = coll' ((3*n)+1) (l+1)
