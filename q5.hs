
solve = f1 [100..]

f1 [] = -1
f1 (x:xs) = if f x then x else f1 xs

f n = all (isOk n) [1..20]
isOk n d = mod n d == 0 
