rotate :: Int -> [a] -> [a]
rotate n [] = []
rotate 0 (x:xs) = (x:xs)
rotate n (x:xs) = rotate (n-1) (xs++[x])

circle :: [a] -> [[a]]
circle s = circlehelper (length s) s


circlehelper 0 s = []
circlehelper n s = [rotate n s] ++ circlehelper (n-1) s