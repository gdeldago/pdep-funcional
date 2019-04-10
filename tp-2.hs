data Celular = Celular {saldo :: Float, numero :: String} deriving (Show)
data Dia = Lunes | Martes | Miercoles | Jueves | Viernes | Sabado | Domingo deri
ving (Show, Eq, Ord)

cargarSaldo :: Dia -> Float -> Celular -> Celular

cargarSaldo dia monto celular = Celular ((saldo celular) + (montoEfectivo dia mo
nto)) (numero celular)

montoEfectivo :: Dia -> Float -> Float

montoEfectivo dia monto 
  | dia >= Sabado = monto * 2
  | otherwise = monto


itype Ficha = (Int, Int)

-- Primera solución, rebotada por no utilizar pattern matching

--mismaFicha :: Ficha -> Ficha -> Bool
--mismaFicha ficha1 ficha2 = ficha1 == ficha2 || ficha1 == (invertirFicha ficha2
)

--invertirFicha :: Ficha -> Ficha
--invertirFicha (primerValor, segundoValor) = (segundoValor, primerValor)

-- Segunda solucipon, aceptada por mumuki pero... 

--mismaFicha (ficha1Valor1, ficha1Valor2) (ficha2Valor1, ficha2Valor2) =
--  ((ficha1Valor1 == ficha2Valor1) && (ficha1Valor2 == ficha2Valor2))  ||
--  ((ficha1Valor1 == ficha2Valor2) && (ficha1Valor2 == ficha2Valor1))

-- Sei podía mejorar usando igualdad en tuplas

mismaFicha (ficha1Valor1, ficha1Valor2) (ficha2Valor1, ficha2Valor2) =
  ((ficha1Valor1, ficha1Valor2) == (ficha2Valor1, ficha2Valor2))  ||
  ((ficha1Valor1 == ficha2Valor2) && (ficha1Valor2 == ficha2Valor1))

