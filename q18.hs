tri = [[(3)],[(7),(4)],[(2),(4),(6)],[(8),(5),(9),(3)]]

f (xs:xss) = xs -- TODO


foldDown xs1 xs2 = xs1


ex1 = [[[1]], [[2],[3]]]

f1 (xs:xs2:xss) = map (add $ head xs) xs2

add [x] [y] = [x+y]


childIdx n = [n, n+1]
