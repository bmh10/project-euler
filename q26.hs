solve = map (\x -> 1/x) [1..1000]

cycleLen n = cycleLen' n ((length $ show n) - 1)

cycleLen' n 0 = 0
cycleLen' n l = if isCycle n l then l else cycleLen' n (l-1)

isCycle n l = n' == genStr s (length n')  
  where n' = show n
        s  = take l n'

genStr n l = take l $ concat $ repeat n 
