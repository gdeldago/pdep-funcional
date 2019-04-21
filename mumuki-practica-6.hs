--esMultiploDe :: Int -> Int -> Bool
--esMultiploDe = (0==).(mod)

--
-- Ejercicio 3
-- Escribí la función dobleDelLargo, que da el doble del largo de una palabra.
--
dobleDelLargo :: String -> Int
dobleDelLargo = (2*).length

--
-- Ejercicio 4
--Definí una función sumarNumeroAlTriple, que aplicándola con 2 números, 
--  suma el segundo número al triple del primero.

sumarNumeroAlTriple :: Int -> Int -> Int
sumarNumeroAlTriple = (+).(3*)

--sumarNumeroAlTriple 3 2
--11
--SumarNumeroAlTriple 5 1
--16

--
-- Ejercicio 5
-- La función sumaEsPar que está en el editor tiene dos parámetros y nos dice si su suma es par.
-- sumaEsPar :: Int ->  Int -> Bool
-- sumaEsPar x y = even (x + y)
sumaEsPar :: Int -> Int -> Bool
sumaEsPar n = even.(+n)
