import Test.Hspec

type Ficha = (Int, Int)

-- Primera solución, rebotada por no utilizar pattern matching

--mismaFicha :: Ficha -> Ficha -> Bool
--mismaFicha ficha1 ficha2 = ficha1 == ficha2 || ficha1 == (invertirFicha ficha2)

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

runTests = hspec $ do
    describe "Pruebas para el ejercicio del domino." $ do
        it "(1, 2) = (1, 2)" $ do
            mismaFicha (1, 2) (2, 1) `shouldBe` True

        it "(1, 2) = (2, 1)" $ do
            mismaFicha (1, 2) (2, 1) `shouldBe` True
