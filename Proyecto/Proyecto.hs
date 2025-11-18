{-INSTRUCCIONES PARA USAR EL PROGRAMA

1. Primero hay que cargar el proyecto.hs con:
   :l proyecto.hs

Una vez hecho esto podemos ejecutar diversas funciones, como:

2. Construir el árbol de Hoffman:
   huffman "nuestro texto"

3. Guardar el árbol en una variable:
   let arbol = huffman "Nuestro texto"

4. Codificar un texto:
   codificar arbol "uestro texto"

5. Decodificar una cadena de bits:
   decodificar arbol "0001101"

6. Ver la tabl de codigos:
   tablaCodigos arbol

7. Ver las frecuencias:
   frecuencias "nuestro texto"
   
NOTA:

Este programa fue hecho con mas café que sangre en el cuerpo, con la bendición de Dios nuestro señor,
2 horas de sueño y con la esperanza de que el compilador tuviera piedad de mi.

⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡿⠛⢶⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣦⠀⣠⡾⠛⠙⠛⠋⠀⠀⠀⠈⠉⠛⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢾⡇⠙⠛⠋⢀⣤⣀⠀⣀⣤⣤⡀⠀⠀⠀⠈⠻⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣧⡀⢀⡤⠋⠀⠈⠉⠉⠀⠉⠳⠤⠤⠴⢦⡄⠸⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣀⡿⠿⠾⠀⠀⠀⠀⠀⢴⣦⡀⠀⠀⠀⣠⠟⠀⢹⡇⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⡟⠀⣴⡄⠀⢀⡄⠀⠀⣦⡈⠃⠀⠀⡾⣳⣄⠀⣼⡇⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⣠⡶⠟⠻⠶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡿⠀⠀⠿⠁⢀⡞⠁⠀⠀⣿⠗⠀⠀⠀⣟⢮⣿⣆⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⢸⠏⠀⠀⠀⣰⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⡇⠀⠀⠀⠰⣯⡀⠀⠀⠀⠀⠀⠀⠀⠀⠪⣳⡵⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⢸⡀⠀⠀⢰⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣇⠀⣦⣀⠀⠈⠉⢀⣀⣰⣦⡀⠀⠀⠀⠀⠈⠉⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠘⣷⠀⠀⠘⢷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⡆⠻⠦⣌⣉⣉⣁⡤⠔⠻⡇⠀⠀⠀⣀⣠⣼⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⢠⡾⠛⠉⠙⠛⠲⢦⣄⠀⠙⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣄⠀⠀⠲⠇⠀⠀⠀⠀⠀⠀⢀⣴⢏⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⢸⣇⣀⣀⣀⡀⠀⠀⠈⣧⠀⠈⣿⣦⣄⡀⠀⠀⠀⠀⠀⠀⢀⣻⣦⣄⠀⠀⠀⠀⠀⠀⡠⠔⣿⠓⢶⣤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⢸⠟⠁⠀⠈⠉⠙⠳⢴⡏⠀⠀⣿⡇⠈⠙⠻⠶⠤⠴⠶⠛⠋⠹⡀⠈⠻⣶⣤⠤⠄⣀⣠⠞⠁⠀⢸⠀⠈⠙⠳⢦⣄⠀⠀⠀⠀⠀⠀⠀
⠸⣧⣤⣤⣤⣤⣀⡀⠀⣷⢀⣼⠃⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢦⣀⠀⠉⠉⠉⠉⠀⠀⢀⣴⠏⠀⠀⠀⠀⠀⠉⠻⣦⣄⠀⠀⠀⠀
⢰⡏⠀⢠⠀⠀⠈⠉⢺⠁⢈⡞⢀⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠒⢦⠀⠀⠀⢸⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢷⡄⠀⠀
⠀⠻⣦⣈⠙⠶⠤⠴⢞⣠⠞⢀⡞⠀⠀⠀⠀⠀⠀⠀⠀⢀⣦⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠈⡆⠀⠀⠀⢰⠀⠀⠀⠀⠀⠀⠀⠈⠻⣆⠀
⠀⠀⠈⠉⠉⠛⠛⠛⠯⢤⣤⣎⣀⠀⠀⠀⢀⣀⣠⣤⣾⠛⠁⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⢻⠀⠀⠀⠈⡆⠀⠀⡀⠀⠀⠀⠀⠀⠙⣇
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠙⠛⠛⠛⠛⠉⠉⠠⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⢇⠀⠀⠀⠀⡇⠀⠀⠀⡇⠀⣰⠏⠀⠀⠀⠀⠀⠀⡿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⢃⠀⠀⠀⢸⣰⠁⠀⠀⠀⠀⠀⠀⣸⠇
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡄⠀⠀⠀⠀⠀⠀⠀⠀⢸⡄⠀⠀⠀⢸⠀⠀⢀⣸⡇⠀⠀⠀⠀⠀⠀⣰⠏⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠛⠢⣄⡀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠸⣤⠴⠛⠁⣿⠤⢤⡀⠀⢀⡼⠏⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠉⠉⠓⠒⠶⠶⠞⠁⠀⠀⠀⠀⠁⠀⠀⠀⢿⠀⠀⠈⢳⡟⠁⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡴⢻⠀⠀⣀⡼⠃⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠙⠢⢄⣀⡀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣤⡴⠞⠋⠀⠀⡇⠛⣻⡄⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡏⠀⠀⠀⠈⠉⠉⠛⠛⠛⠛⠛⠉⠉⠉⠀⠀⠀⠀⠀⠀⡟⠛⠋⠁⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⡖⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⠃⠀⠀⠀⠀⠀⠀⠀⠀⢀⡾⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⡇⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⠃⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⠇⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⠁⠀⠀⠀⠀⠀⠀⠀⠀⢰⡟⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⡏⠀⠀⠀⠀⠀⠀⠀⠀⢀⡿⠁⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⣸⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⠃⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⡇⠀⠀⠀⠀⠀⠀⠀⠀⣸⠏⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢘⣧⣄⡀⠀⠀⠀⠀⣀⡼⠏⠀⠀⠀⠀⢻⡖⠶⡤⠤⠤⠤⠶⠛⠶⣦⣄⡀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠁⠀⠉⠙⠛⠛⣿⠋⠀⠀⠀⠀⠀⠀⠘⠻⠶⠿⠶⣦⣀⣀⠀⠀⠀⢉⣻⡆⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣧⣀⣀⣠⣴⠞⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠉⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀


-}





{-
Función: frecuencias
Descripción: Dada una cadena de texto, regresa una lista de pares (carácter, frecuencia)
             sin usar fold ni módulos. Solo recursión pura.
uso: cadenas
-}
frecuencias :: String -> [(Char, Int)]
frecuencias [] = []
frecuencias (x:xs) = agregar x (frecuencias xs)
  where
    agregar c [] = [(c,1)]
    agregar c ((a,n):ys)
        | c == a    = (a, n+1) : ys
        | otherwise = (a,n) : agregar c ys



{-
Función: hojas
Descripción: Convierte las frecuencias en una lista de hojas del árbol.
uso: listas
-}
hojas :: [(Char, Int)] -> [Huffman]
hojas [] = []
hojas ((c,f):xs) = Hoja c f : hojas xs



{-
Función: insertarOrdenado
Descripción: Inserta un árbol en una lista ordenada por peso.
uso: listas, recursión
-}
insertarOrdenado :: Huffman -> [Huffman] -> [Huffman]
insertarOrdenado t [] = [t]
insertarOrdenado t (x:xs)
    | peso t <= peso x = t : x : xs
    | otherwise        = x : insertarOrdenado t xs



{-
Función: ordenar
Descripción: Ordena una lista de árboles por su peso (inserción).
uso: listas
-}
ordenar :: [Huffman] -> [Huffman]
ordenar [] = []
ordenar (x:xs) = insertarOrdenado x (ordenar xs)



{-
Función: peso
Descripción: Regresa la frecuencia total de un nodo.
uso: huffman
-}
peso :: Huffman -> Int
peso (Hoja _ p)   = p
peso (Nodo p _ _) = p



{-
Función: Definición del árbol de Huffman
Descripción: Representa hojas y nodos internos del árbol.
uso: huffman
-}
data Huffman
    = Hoja Char Int
    | Nodo Int Huffman Huffman
    deriving (Show, Eq)



{-
Función: construirArbol
Descripción: Construye el árbol de Huffman sin fold ni listas avanzadas.
uso: huffman
-}
construirArbol :: String -> Huffman
construirArbol cadena =
    construir (ordenar (hojas (frecuencias cadena)))
  where
    construir [t] = t
    construir (a:b:xs) =
        let nuevo = Nodo (peso a + peso b) a b
        in construir (ordenar (nuevo : xs))


{- 
Función: huffman
Descripción: Construye el árbol de Huffman directamente desde una cadena.
uso: huffman
-}
huffman :: String -> Huffman
huffman cadena = construirArbol cadena



{-
Función: tablaCodigos
Descripción: Genera el diccionario de códigos de Huffman recursivamente.
uso: cadenas, huffman
-}
tablaCodigos :: Huffman -> [(Char, String)]
tablaCodigos arbol = generar arbol ""
  where
    generar (Hoja c _) prefijo = [(c, prefijo)]
    generar (Nodo _ izq der) prefijo =
        concatenar (generar izq (prefijo ++ "0"))
                   (generar der (prefijo ++ "1"))

    concatenar [] ys = ys
    concatenar (x:xs) ys = x : concatenar xs ys



{-
Función: buscarCodigo
Descripción: Dado un carácter y la tabla, encuentra su código.
uso: cadenas
-}
buscarCodigo :: Char -> [(Char, String)] -> String
buscarCodigo c ((a,s):xs)
    | c == a    = s
    | otherwise = buscarCodigo c xs



{-
Función: codificar
Descripción: Toma un árbol y una cadena y produce la cadena comprimida.
uso: cadenas, huffman
-}
codificar :: Huffman -> String -> String
codificar arbol texto = cod texto (tablaCodigos arbol)
  where
    cod [] _ = ""
    cod (c:cs) tabla = buscarCodigo c tabla ++ cod cs tabla



{-
Función: decodificar
Descripción: Reconstruye el texto original usando el árbol.
uso: huffman
-}
decodificar :: Huffman -> String -> String
decodificar arbol bits = recorrer arbol bits
  where
    recorrer (Hoja c _) [] = [c]
    recorrer (Hoja c _) bs = c : recorrer arbol bs
    recorrer (Nodo _ izq der) ('0':bs) = recorrer izq bs
    recorrer (Nodo _ izq der) ('1':bs) = recorrer der bs
