# Práctica 4

## Objetivo de la practica
Implementar funciones sobre los tipos Natural y Matrioska usando recursión y funciones auxiliares, integrando conocimetos previos para poder realizar eta práctica e ir uniendo los temas vistos en teoria y en el laboratorio.
## Tiempo requerido en realizar la práctica completa
Entre 3 - 4:30 horas

## Descripción breve de casos (por función)

1. a_natural
- Caso base: n <= 0 → Cero. Intuitiamente, cuando llegamos a 0 representamos el número cmo Cero.
- Caso recursivo: a_natural n = S (a_natural (n-1)). Cualquier número natural se puede construir aplicando S repetidamnte hasta llegar a 0.

2. a_entero
- Caso base: a_entero Cero = 0. El número 0 en naturales corresponde al entero 0.
- Caso recursivo: a_entero (S m) = 1 + a_entero m. Cada sucesor agrega 1 al conteo total.

3. potenciaNat
- Caso base: potenciaNat b Cero = S Cero. Todo número elevado a 0 es 1.
- Caso reursivo: potenciaNat b (S e) = multNat b (potenciaNat b e). Multiplicamos la base por la potencia calculada con un expnente más pequeño.

4. facNat
- Caso base: facNat Cero = S Cero. El factorial de 0 es 1.
- Caso recursivo: facNat (S n) = multNat (S n) (facNat n). El factorial se define multiplicando el número actual pr el factorial de su predeesor.

5. mayorIgual
- Caso base: Mati tiene profundidad 0. Comarar con otra matrioska equivale a comparar 0 con la profundidad de la otra.
- Caso recursivo: cada Cont suma 1 a la profundidad, recorriendo la estructura hasta llegar a Mati. La comparación se hace al final sobre profundidades.

6. aplana
- Cso base: aplana Mati = [Mati]. Una matrioska simple se convierte en una lista con un solo elemento.
- Caso recursivo: aplana (Cont inner) = (Cont inner) : aplana inner. La matrioska externa se agrega primero, luego se repite con la interna hasta llegar a Mati.


## Recursión First Steps

La canción El Pollito Pío explica de manera sencilla el concepto de recursión porque comienza con el elemento base, que en este caso es el pollito y en cada verso se añade un nuevo animal repitiendo la secuencia anterior. Esta repetición incremental es similar a cómo funcionan los casos recursivos, poque se parte de un caso base sencillo y se construyen estructuras más complejas repitiendo lo ya dicho mas un elemento adicional. Al igual que en la canción, donde cada nuevo verso incluye a todos los anteriores, en programación recursiva cada llamada incluye el resultado de llamadas previas hasta llegar al caso base.

## Comentarios 
Tuve algunos problemas al intentar implementar las funciones auxiliares, lo que al final me llevo a tener que eliminarlas, pues al momento de intantar complilar el archivo natural.hs me mandaba varios errores, intente solucionarlos de diversas formas pero no pude lograr que el archivo compilira, de hecho esa es uno de los motivos que hizo que la realización de la práctica fuera tan larga.





































