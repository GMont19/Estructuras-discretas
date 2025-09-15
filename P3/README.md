# Práctica 3

## Objetivo de la practica
El objetivo es que el alumno se introduzca al ambiente de las listas dentro de Haskell, conozca su comportamiento, conceptos básicos sobre como se usan, y se familiarice con este nuevo conocimiento
## Tiempo requerido en realizar la práctica completa
Entre 4 - 5 horas
## Comentarios y los problemas a los que te enfrentaste en la instalación
La mayoria del tiempo se uso en la investigación sobre como manipular las listas y algunas funciones nuevas para poder implementarlas de un manera mas optima
## ¿Cuál es la diferencia entre Num e Int?
La diferencia fundamental es que:
-Num es una clase de tipos (typeclass) que define operaciones aritméticas básicas como +, -, *, negate, abs, signum y fromInteger. Cualquier tipo que sea instancia de Num puede utilizar estas operaciones.
-Int es un tipo concreto que representa números enteros de precisión fija (generalmente 32 o 64 bits dependiendo de la plataforma). Es una instancia de la clase Num, meaning que implementa todas las operaciones requeridas por Num.
