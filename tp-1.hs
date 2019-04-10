-- Nota: solución fea de cuando no advertís el tipo de alguna subexperesión
--       y pensás de modo procedural
--
-- esImpar :: Int -> Bool
-- esImpar numero | mod numero 2 == 1 = True
--                | otherwise         = False
-- 
esImpar :: Int -> Bool
esImpar numero = mod numero 2 == 1

-- Nota: Mi primer intento fue especificar una lista de parámetros String String -> String
--       Luego pensé que era un error de sintaxis y probé (String String) -> String
--       Leyendo más re-descubrí o recordé que las funcinoes reciben SIEMPRE un parámetro
--       Tengo que pensar en la composición de funciones.
--
ingenierizar :: String -> String -> String
ingenierizar nombre apellido = "Ing. " ++ nombre ++ " " ++ apellido

-- Nota: Investigar y comprender la diferencia entre "and" y "&&"
--       Atenti a la composición parcial (length palabra) 
--
estaEntre :: Int -> Int -> Int -> Bool
estaEntre inferior superior numero = numero >= inferior && numero <= superior

esAurica :: String -> Bool
esAurica palabra = estaEntre 3 7 (length palabra)