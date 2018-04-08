solve = f 4000000 3 0 1 2 

f max n t p1 p2 
 | p2' < max = f max (n+1) t' p1' p2'
 | otherwise = t+2 
  where
        p1' = p2
        p2' = (p1+p2)
        t'  = if (mod p2' 2 == 0) then t+p2' else t

