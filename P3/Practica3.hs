{-
Función: Creditos
Decripción: dar un numero de creditos y que devuelva las materias que coinciedadn con ese valor
uso: lisata
-}

creditos :: Int -> [String]
creditos n = [ materia | (c, materia) <- materias, c == n ]
  where
    materias =
      [ (12, " Introduccion a CC ")
      , (12,  " Matemticas para las ciencias aplicadas I ")
      , (10,  " Estructuras Discretas ")
      , (04,  " Ingles ")
      , (10, " Algebra superior I ")
      ]

{-
Función: Negatvos
Descripción: Dar una lista de numeros positivos o negativos y regresar cuantos números negativos hay
uso: listas
-}

negativos :: [Int] -> Int
negativos xs = length [ x | x <- xs, x < 0 ]


{-
Función: primos
descripción: Dar una lista de numeros que devuelva los números primos de la lisra
uso: listas
-}

primos :: [Int] -> [Int]
primos xs = [ x | x <- xs, esPrimo x ]
esPrimo :: Int -> Bool
esPrimo n
  | n < 2     = False
  | otherwise = not (dvisor n 2)
dvisor :: Int -> Int -> Bool
dvisor n d
  | d == n         = False
  | n `mod` d == 0 = True
  | otherwise      = dvisor n (d+1)

{-
Fución: conjuntoLista
descripción: Dar una lita de numeros ya sea con elementos repetodos o sin ellos y devolverla sin los elementos repetidos
uso: lista
-}

	conjuntoLista :: (Eq a) => [a] -> [a]
conjuntoLista [] = []
conjuntoLista (x:xs)
  | x `elem` xs = x : conjuntoLista (filter (/= x) xs)
  | otherwise   = x : conjuntoLista xs