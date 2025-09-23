-- Natural.hs
module Natural
  ( Natural(..)
  , a_natural
  , a_entero
  , potenciaNat
  , facNat
  , sumaNat
  , multNat
  ) where

data Natural = Cero | S Natural deriving (Eq, Show)


{-
Función: sumaNat
Descripción: sumar dos naturales usando la  rcursión.
Uso: sumaNat (S (S Cero)) (S Cro) => S (S (S Cero))
-}

sumaNat :: Natural -> Natural -> Natural
sumaNat Cero n = n
sumaNat (S m) n = S (sumaNat m n)


{-
Función: multNat
Descripción: multiplicar dos nmeros naturales utilizando recursión y suma.
Uso: multNat (S (S Cero)) (S (S (S Cero))) => S (S (S (S (S (S Cero)))))
-}

multNat :: Natural -> Natural -> Natural
multNat Cero _ = Cero
multNat (S m) n = sumaNat n (multNat m n)



{-
Función: a_natural
Descripción: convierte un número entero (>=0) en su representación como Natural.
Uso: a_natural 3 => S (S (S Cero))
-}

a_natural :: Integer -> Natural
a_natural n
  | n <= 0 = Cero
  | otherwise = S (a_natural (n - 1))


{-
Función: a_entero
Descripción: convirte un Natural a un número ntero.
Uso: a_entero (S (S Cero)) => 2
-}

a_entero :: Natural -> Integer
a_entero Cero = 0
a_entero (S m) = 1 + a_entero m


{-
Función: potenciaNat
Descripción: eleva un númro natural a la potencia de otro Ntural.
Uso: potenciaNat (S (S Cero)) (S (S Cero)) => S (S (S (S Cero)))
-}

potenciaNat :: Natural -> Natural -> Natural
potenciaNat _ Cero = S Cero
potenciaNat b (S e) = multNat b (potenciaNat b e)


{-
Función: facNat
Descripción: calcla el factorial de un número natural.
Uso: facNat (S (S (S Cero))) => S (S (S (S (S (S Cero)))))
-}

facNat :: Natural -> Natural
facNat Cero = S Cero
facNat (S n) = multNat (S n) (facNat n)



