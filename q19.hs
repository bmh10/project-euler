
isLeapYear y
 = (y `mod` 100 == 0 && y `mod` 400 == 0) ||
   (y `mod` 100 > 0  && y `mod` 4 == 0)

data Day = Mon | Tue | Wed | Thur | Fri | Sat | Sun deriving (Show, Eq, Enum)

day d m y currDay
 | m == 12   = day 1 1 (y+1) nextDay
 | otherwise = day 1 (m+1) y nextDay
  where
    nextDay currDay m = Mon -- TODO

calcDayFromNow currDay days = currDay

monthLen m y
 | m == 2 = 28 + if isLeapYear y then 1 else 0
 | m == 4 || m == 6 || m == 9 || m == 11 = 30
 | otherwise = 31

