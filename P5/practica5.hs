-- Practica5.hs

module Practica5 where

import Data.Char (toUpper)

{-
Función: hollerBack
Descripción: Convierte una cadena a mayúsculas.
Uso: hollerBack "haskell" => "HASKELL"
-}
hollerBack :: String -> String
hollerBack []     = []
hollerBack (x:xs) = toUpper x : hollerBack xs

{-
Función: palindromo
Descripción: Revisa si una lista es palíndromo.
Uso: palindromo "ana" => True
-}
palindromo :: (Eq a) => [a] -> Bool
palindromo []  = True
palindromo [_] = True
palindromo xs  = head xs == last xs && palindromo (init (tail xs))

{-
Función: replica
Descripción: Repite un valor n veces en una lista.
Uso: replica 2 5 => [2,2,2,2,2]
-}
replica :: a -> Int -> [a]
replica _ 0 = []
replica x n
    | n > 0     = x : replica x (n-1)
    | otherwise = error "Repeticiones negativas no permitidas"

{-
Función: recuperaElemento
Descripción: Devuelve el elemento en un índice dado.
Uso: recuperaElemento [2,4,6] 1 => 4
-}
recuperaElemento :: [a] -> Int -> a
recuperaElemento [] _ = error "Índice fuera de rango"
recuperaElemento (x:_) 0 = x
recuperaElemento (_:xs) n
    | n < 0     = error "Índice negativo"
    | otherwise = recuperaElemento xs (n-1)

{-
Función: rota
Descripción: Rota una lista n posiciones (izq o der).
Uso: rota [1,2,3,4,5] 2 => [3,4,5,1,2]
-}
rota :: [a] -> Int -> [a]
rota [] _ = []
rota xs 0 = xs
rota xs n
    | n > 0     = rota (tail xs ++ [head xs]) (n-1)
    | n < 0     = rota (last xs : init xs) (n+1)

{-
Función: extranio
Descripción: Genera la secuencia de Collatz para n.
Uso: extranio 6 => [6,3,10,5,16,8,4,2,1]
-}
extranio :: Int -> [Int]
extranio 1 = [1]
extranio n
    | n <= 0    = error "Debe ser positivo"
    | even n    = n : extranio (n `div` 2)
    | otherwise = n : extranio (3 * n + 1)