facto :: Int -> Int
facto 0 =  1
facto n = n * facto (n - 1)
