module Practica6 where


{-
Función: nVacios
Descripción: Cuenta los nodos vacíos dentro de un árbol.
Uso: nVacios (AB 4 Vacio (AB 3 Vacio Vacio)) => 3
-}
nVacios :: Arbol a -> Int
nVacios Vacio = 1
nVacios (AB _ izq der) = nVacios izq + nVacios der


{-
Función: refleja
Descripción: Intercambia los subárboles izquierdo y derecho.
Uso: refleja (AB 4 Vacio (AB 3 Vacio (AB 5 Vacio Vacio))) => AB 4 (AB 3 (AB 5 Vacio Vacio) Vacio) Vacio
-}
refleja :: Arbol a -> Arbol a
refleja Vacio = Vacio
refleja (AB x izq der) = AB x (refleja der) (refleja izq)


{-
Función: minimo
Descripción: Devuelve el valor mínimo dentro de un árbol binario.
Uso: minimo (AB 5 (AB 3 (AB 1 Vacio Vacio) Vacio) (AB 7 Vacio Vacio)) => 1
-}
minimo :: (Ord a) => Arbol a -> a
minimo Vacio = error "Árbol vacío"
minimo (AB x Vacio Vacio) = x
minimo (AB x izq der) =
    case izq of
        Vacio -> min x (minimo der)
        _     -> min (minimo izq) x


{-
Función: recorrido
Descripción: Devuelve la lista de elementos del árbol según el tipo de recorrido.
Uso: recorrido (AB 5 (AB 3 (AB 1 Vacio Vacio) Vacio) (AB 7 Vacio Vacio)) InOrden => [1,3,5,7]
-}
recorrido :: Arbol a -> TipoRecorrido -> [a]
recorrido Vacio _ = []
recorrido (AB x izq der) InOrden  = recorrido izq InOrden ++ [x] ++ recorrido der InOrden
recorrido (AB x izq der) PreOrden = [x] ++ recorrido izq PreOrden ++ recorrido der PreOrden
recorrido (AB x izq der) PosOrden = recorrido izq PosOrden ++ recorrido der PosOrden ++ [x]


{-
Función: esBalanceado
Descripción: Verifica si un árbol está balanceado.
Uso: esBalanceado (AB 1 (AB 2 Vacio Vacio) (AB 3 Vacio Vacio)) => True
-}
esBalanceado :: Arbol a -> Bool
esBalanceado Vacio = True
esBalanceado (AB _ izq der) =
    abs (altura izq - altura der) <= 1 &&
    esBalanceado izq && esBalanceado der
  where
    altura Vacio = 0
    altura (AB _ i d) = 1 + max (altura i) (altura d)


{-
Función: listaArbol
Descripción: Convierte una lista en un árbol binario de búsqueda.
Uso: listaArbol [5,3,7,1,9] => AB 5 (AB 3 (AB 1 Vacio Vacio) Vacio) (AB 7 Vacio (AB 9 Vacio Vacio))
-}
listaArbol :: (Ord a) => [a] -> Arbol a
listaArbol [] = Vacio
listaArbol (x:xs) = insertar x (listaArbol xs)
  where
    insertar e Vacio = AB e Vacio Vacio
    insertar e (AB y izq der)
        | e < y     = AB y (insertar e izq) der
        | otherwise = AB y izq (insertar e der)
