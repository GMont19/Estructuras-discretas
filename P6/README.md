# Práctica 06: Árboles Binarios

## Objetivo
Implementar funciones recursivas sobre árboles binarios en Haskell, analizando su estructura y comportamiento mediante pruebas unitarias con **HUnit**.

## Árboles
a) AB 4 (Vacio) (AB 3 Vacio Vacio)
graph TB
    A[4]
    A --> B[Vacio]
    A --> C[3]
    C --> D[Vacio]
    C --> E[Vacio]

b) AB 4 Vacio (AB 3 Vacio (AB 5 Vacio Vacio))

graph TB
    A[4]
    A --> B[Vacio]
    A --> C[3]
    C --> D[Vacio]
    C --> E[5]
    E --> F[Vacio]
    E --> G[Vacio]
    
c) AB 3 (AB 7 (AB 12 Vacio Vacio) Vacio) (AB 6 (AB 11 Vacio Vacio) (AB 10 Vacio Vacio))

graph TB
    A[3]
    A --> B[7]
    A --> C[6]
    B --> D[12]
    B --> E[Vacio]
    C --> F[11]
    C --> G[10]
    D --> H[Vacio]
    D --> I[Vacio]
    F --> J[Vacio]
    F --> K[Vacio]
    G --> L[Vacio]
    G --> M[Vacio]
    
## Tiempo estimado

Entre 3 a 4 horas para implementar, documentar y probar todas las funciones.
