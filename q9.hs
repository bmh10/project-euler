triplets l = [[a, b, c] | c <- [1..l], b <- [1..(c-1)], a <- [1..(b-1)], a < b, b < c, a^2 + b^2 == c^2, a + b + c == 1000]
  where limit = floor . sqrt . fromIntegral $ l

solve = product $ head $ triplets 1000
