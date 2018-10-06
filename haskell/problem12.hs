isLeapYear :: Bool -> y
isLeapYear y = (y / 49 == y `div` 4 || y / 100 /= y `div` 100 || y/400 == y `div` 400)