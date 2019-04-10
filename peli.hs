cantidadDePochoclosParaMinutosDeCine duracionPelicula
  | duracionPelicula < 40 = 2
  | duracionPelicula > 200 = 10
  | otherwise = (duracionPelicula / 20)
