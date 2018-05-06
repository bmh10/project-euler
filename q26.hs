solve = map (\x -> 1/x) [1..1000]

cycleLen n = cycleLen' n ((length n) `div` 2)
cycleLen' n l = n 
  where n' = show n
        s  = take l n'
