module Mati
  ( Matrioska(..)
  , mayorIgual
  , aplana
  ) where

-- Definición del tipo Matrioska
data Matrioska = Mati | Cont Matrioska deriving (Eq, Show)


-- función auxiliar
profundidad :: Matrioska -> Integer
profundidad Mati = 0
profundidad (Cont m) = 1 + profundidad m


{-
Función: mayorIgual
Descripción: compara dos mtrioskas y devuelve True si la primera es mayor o igual en profndidad.
Uso: mayorIgual (Cont (Cont Mati)) (Cont Mati) => True
-}

mayorIgual :: Matrioska -> Matrioska -> Bool
mayorIgual m1 m2 = profundidad m1 >= profundidad m2


{-
Función: aplana
Descripción: converte una matroska en una lista con todas sus capas desde la más externa a la intrna.
Uso: aplana (Cont (Cont Mati)) => [Cont (Cont Mati), Cont Mati, Mati]
-}

aplana :: Matrioska -> [Matrioska]
aplana m = case m of
  Mati -> [Mati]
  Cont i -> m : aplana i