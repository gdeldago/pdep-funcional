data Auto = Auto String Int Int deriving (Show, Eq)
cargarTanque :: Int -> Auto -> Auto
cargarTanque carga (Auto patente nivelActual capacidadTanque) = Auto patente (min (nivelActual + carga) capacidadTanque) capacidadTanque

