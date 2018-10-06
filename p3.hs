--Importing from previous functions
rotate :: Int -> [a] -> [a]
rotate n [] = []
rotate 0 (x:xs) = (x:xs)
rotate n (x:xs) = rotate (n-1) (xs++[x])

circle :: [a] -> [[a]]
circle s = circlehelper (length s) s

circlehelper 0 s = []
circlehelper n s = [rotate n s] ++ circlehelper (n-1) s

-- Assignment 3
prime :: Integer -> Bool
prime n = length [x | x <- [1..n], n `mod` x == 0] == 2

circprime :: Integer -> Bool
circprime n = length [z | z <- [prime y | y <- [read x :: Integer | x <- circle (show n)]], z == True] == length (circle (show n))
