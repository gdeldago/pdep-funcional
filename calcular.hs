r (primerValor, segundoValor) = ((calcularPrimero primerValor), (calcularSegundo valor))

calcularPrimero valor | even valor = valor * 2
                      | otherwise  = valor
                        
calcularSegundo valor | odd valor = valor + 1
                      | otherwise = valor
                        
