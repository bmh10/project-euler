firstDay = calcDayFromNow 1 365

solve = day 1 1 1901 firstDay 0

day 1 1 2001 _ c = c 
day d m y currDay c
 | m == 12   = day 1 1 (y+1) nextDay c'
 | otherwise = day 1 (m+1) y nextDay c'
  where
    nextDay = calcDayFromNow currDay (monthLen m y)
    c' = if currDay == 7 then c+1 else c

calcDayFromNow currDay days = iterate nextDay currDay !! days

nextDay 7 = 1
nextDay n = n+1

monthLen m y
 | m == 2 = 28 + if isLeapYear y then 1 else 0
 | m == 4 || m == 6 || m == 9 || m == 11 = 30
 | otherwise = 31

isLeapYear y
 = (y `mod` 100 == 0 && y `mod` 400 == 0) ||
   (y `mod` 100 > 0  && y `mod` 4 == 0)
