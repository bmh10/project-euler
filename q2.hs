fib 1 = [1]
fib 2 = [2]
fib n = f1 ++ [(last f1) + (last (fib (n-2)))]
  where f1 = fib (n-1)


solve = f 3 0 1 2 

f 4000001 t p1 p2 = t+2
f n   t p1 p2 = f (n+1) t' p1' p2'
  where
        p1' = p2
        p2' = (p1+p2)
        t'  = if (mod p2' 2 == 0) then t+p2' else t

