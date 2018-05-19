tri = [[[3]],[[7],[4]],[[2],[4],[6]],[[8],[5],[9],[3]]]

f (xs:xss) = xs -- TODO


foldDown xs1 xs2 = xs1


ex1 = [[[1]], [[2],[3]]]

f1 ((x:xs):xs2:xss) idx
 -- | length xs == 1 = map (add x) xs2
 | otherwise = [add x (xs2!!idx), add x (xs2!!(idx+1))]

add [x] [y] = [x+y]
--add xs ys = 


childIdx n = [n, n+1]
