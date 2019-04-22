sor :: Bool -> Bool -> Bool

sor True False = True
sor False True = True
sor _ _        = False


data ValorDeVerdad = Verdadero | Falso deriving (Show)

    
sor' :: ValorDeVerdad -> ValorDeVerdad -> ValorDeVerdad

sor' Verdadero Falso = Verdadero
sor' Falso Verdadero = Verdadero
sor' _ _  = Falso


data Alumno = UnAlumno {
	nombre :: String,
	legajo :: Int,
	promedio :: Float
}deriving (Show, Eq)

gus = UnAlumno "Gus" 112 6.6

