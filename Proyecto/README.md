# Proyecto: Compresión de Datos y Algoritmo de Huffman

##  Objetivo
Implementar el algoritmo de compresión de Huffman en Haskell para comprender los principios fundamentales de la compresión sin pérdida mediante códigos de longitud variable.

##  Funcionamiento
El rograma analiza un texto de entrada, calcula las frecuencias de cada carácter y construye un árbol binario óptimo donde los caracteres más frecuentes tienen códigos más cortos.

### Características principales:
- **Codificación**: Convertir texto plano a secuencia binaria comprimida
- **Decodificación**: Recuperar el texto original desde bits comprimidos
- **Análisis**: Visualizar frecuencias y tablas de codificación
- **Implementación pura**: Sin usar módulos externos avanzados


### Prerrequisitos
- Haskell GHC (Glasgow Haskell Compiler)
- GHCi (entorno interactivo)

### Instrucciones de uso:

INSTRUCCIONES PARA USAR EL PROGRAMA

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

## Tiempo reuquerido

El tiempo total requerido fue de entre 13 y 15 horas, no podría decir especificamente en que se invirtio cada parte del tiempo pues tanto la investigación y el progrma se estuvieron llevando a cabo de manera simultanea. Sin embargo, si tuviera que hacer aproximaciones,, diría que el % 80 del tiempo fue invertido en el documento y en la investigación.

## Comentarios extra

Estoy cansado