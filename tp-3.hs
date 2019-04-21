-- Reescribir f
--f a b c d = d || div a b == c

--f :: Int -> Int -> Int -> Bool
--f a = (==).(div a)

--f a c = (||).(c==).(div a)
f a c = (||).(c==).(a/)

--h d = (d ||)

-- Reescribir g
--g a = length (show a) > 3

g :: Int -> Bool
g = (>3).length.show


{-
f 10 2 1 True = True
f 10 2 1 False = False
f 10 2 0 True = True
f 10 2 0 False = False
f 2 10 0 False = True
g 4000 = True
g 20 = False
g False = True 
-}
