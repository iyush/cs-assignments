suffixes::[a] -> [[a]]
suffixes [] = []
suffixes (x:xs) = [xs] ++ suffixes xs

prefixes::[a] -> [[a]]
prefixes [] = []
prefixes s = prefixes (init s) ++ [init s]