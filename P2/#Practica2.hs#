{-
Función:  sayHello
Descripción: recibe una cadena de texto y lo devuelve como: "Hello, {el texto quehaya ingresado }"
uso: putStrLn ""
-}

sayHello :: IO()
sayHello = do   -- Definimos nuestra función 
   putStr "Ingresa tu texto: " {- Muestra un mensaje para que ingrsemo
     	  	      	       nuestro texto en la terminal-}
   texto <- getLine {- Guarda nuestro texto en
   	                     la variable "texto" -}
   putStrLn $ "Hello, " ++ texto -- Muestra el mensaje Hello "el texto ingresado"



{-
Función: calcularPropina
Descripción: calcula una propina de el 10% o 15% a consideración del usuario (debemos escojer entre el 10 o 15 porciento de propina) en función de la cantidad de dniero que se haya ingresado 
uso:ingresamos el dinero que nos hayamos gastado y luego el porcentaje ejemplo: calcularPropina 145 (cantidad)  15 (porcentaje)
-}

calcularPropina :: Double -> Double -> Double {-Definimos nuestros tres valores double para
		   	     	       	      	hacer operaciones con números decimales-}
calcularPropina cuenta porcentaje = 
    if porcentaje == 10
       then cuenta * 0.10
       else if porcentaje == 15
            then cuenta * 0.15
            else 0



{-
Función:  menor
Descripción: recibe tres valores y te dice cual de ellos es el menor"
uso: (v1, v2, v3)
-}

menor :: (Ord a) => (a, a, a) -> a {-Esta es nuestra tupla con los
      	      	    	      	     valores que vamos a comparar-}
menor (x, y, z) =
  if x <= y && x <= z then x  {-Aqui definimos nestras desigualdades para decirle
       	       	      	      	a la máquina que valor es el menor-}
  else if y <= x && y <= z then y
  else z



{-
Función:  decide
Descripción: recibe dos valores y te dice "valor1" si seleccionas
	     "True" y "valor2" si seleccionas "False"
uso: False "gato" "perro" va a regresar "perro" y vicebersa con gato
-}

decide :: Bool -> String -> String -> String {-Definimos las tres cadenas y el booleano donde
       	       	  	    	      	       se van a guardar los datos de lo que ingresemos-}
decide b s1 s2 =
  if b then s1
  else s2 {-Nos va a regresar un valor verdadero o falso si escojemos el primer o segundo texto respectivamente-}



{-
Función:  esDescendente
Descripción: Esta función va a determinar si los valores que ingresamos fueron ingresados en oreden descendente
	     (de mayor a menor) de lo contrario nos dirá que "falso"
uso:es Descendente 10 9 8 5 Nos dirá que es verdad "True"
-}
esDescendente :: Int -> Int -> Int -> Int -> Bool 
esDescendente  x y z w =
  if  x > y && y > z &&  z > w
  then True
  else False 



{-
Función:  esDivisible
Descripción: recibe dos enteros y devuelve un mensaje indicando si el primero es divisible por el segundo.
uso: 4 2 son divisibles | 3 2 no es divisible
-}

esDivisible :: Int -> Int -> String
esDivisible x y =
  if y == 0 then "No puedes dividir entre 0 >:("
  else if x `mod` y == 0
       then show x ++ " es divisible por " ++ show y
       else show x ++ " no es divisible por " ++ show y



{-
Función: hipotenusa
Descripción: calcula la hipotenusa ingresando la base y la altura
uso:es la aplicación del teorema de pitagoras en haskell
-}

hipotenusa ::  Float -> Float -> Float
hipotenusa b h =  sqrt (b * b + h * h)



{-
Función: pendiente
Descripción: recibe dos puntos en el plano y calcula la pendiente de la recta que los une.
uso: analiza la inclinación de una recta
-}

pendiente :: (Float, Float) -> (Float, Float) -> Float
pendiente (x1, y1)(x2, y2) =
  (y2 - y1) / (x2 - x1)



{-
Función: distanciaPuntos
Descripción: recibe dos puntos en el plano y devuelve la distancia entre ellos.
uso:mide la separación de dos coordenadas en un plano
-}

distanciaPuntos :: (Float, Float) -> (Float, Float) -> Float
distanciaPuntos (x1, y1)(x2, y2) =
  sqrt ((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1))