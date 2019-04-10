data Celular = Celular {saldo :: Float, numero :: String} deriving (Show)
data Dia = Lunes | Martes | Miercoles | Jueves | Viernes | Sabado | Domingo deriving (Show, Eq, Ord)

cargarSaldo :: Dia -> Float -> Celular -> Celular

cargarSaldo dia monto celular = Celular ((saldo celular) + (montoEfectivo dia monto)) (numero celular)

montoEfectivo :: Dia -> Float -> Float

montoEfectivo dia monto 
  | dia >= Sabado = monto * 2
  | otherwise = monto
