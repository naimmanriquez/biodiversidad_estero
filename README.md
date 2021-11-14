# Biodiversidad de aves
# Análisis de Biodiversidad en el Estero del Yugo

Este repositorio tiene como objetivo principal generar indicadores para el análisis básico de la biodiversidad. Los datos provienen de un censo de aves en el Estero del Yugo en el municipio de Mazatlán, México.

El Estero del Yugo es un Área Natural Protegida que alberga más de 230 especies; entre aves, anfibios, reptiles y mamíferos. 

![alt text](https://raw.githubusercontent.com/naimmanriquez/biodiversidad_estero/main/03_Gr%C3%A1ficas/estero.jpg?raw=true)

Dentro de las casi 11 hectáreas, gran variedad de fauna se refugia y anida en este hábitat natural, de acuerdo a los registros, se estima que se encuentren al menos 216 tipos diferentes de aves, 8 de mamíferos, 5 de reptiles y 4 de anfibios. El objetivo de este análisis es dar evidencia de los indices de biodiversidad. 

# Paquetes de R
Los paquetes para realizar el análisis de biodiversidad son los siguientes:

##### 1. vegan (requiere además: permute, lattice).
##### 2. kableExtra (para tablas).
##### 3. ggplot2 (para gráficas).
##### 4. BiodiversityR.

# 1. Indices de diversidad
Con la base de datos del censo se pretende calcular los índices más comunes de diversidad:
- Shannon–Weaver: Este índice se representa normalmente como H’ y se expresa con un número positivo, que en la mayoría de los ecosistemas naturales varía entre 0,5 y 5, aunque su valor normal está entre 2 y 3; valores inferiores a 2 se consideran bajos en diversidad y superiores a 3 son altos en diversidad de especies.

La formula para el índice de Shannon-Weaver es:

<img src="https://latex.codecogs.com/svg.image?H'&space;=&space;-\sum_{i=1}^{S}p{i}\:log{_2}\:&space;p{i}" title="H' = -\sum_{i=1}^{S}p{i}\:log{_2}\: p{i}" />

donde:

S – número de especies (la riqueza de especies)
pi – proporción de individuos de la especie i respecto al total de individuos (es decir la abundancia relativa de la especie i)
ni – número de individuos de la especie i
N – número de todos los individuos de todas las especies

- Simpson: es uno de los parámetros que nos permiten medir la riqueza de organismos. En ecología, es también usado para cuantificar la biodiversidad de un hábitat. Toma un determinado número de especies presentes en el hábitat y su abundancia relativa. Cuanto más se acerca el valor de este índice a la unidad, existe una mayor posibilidad de dominancia de una especie y de una población; y cuanto más se acerque el valor de este índice a cero mayor es la biodiversidad de un hábitat.

La formula para el índice de simpson se denota como:

<img src="https://latex.codecogs.com/svg.image?D&space;=&space;\frac{\sum_{i=1}^{S}n{i}(n{i}-1)}{N(N-1)}" title="D = \frac{\sum_{i=1}^{S}n{i}(n{i}-1)}{N(N-1)}" />

donde:

- S es el número de especies.
- N es el total de organismos presentes (o unidades cuadradas)
- n es el número de ejemplares por especie

# 2. Curvas de acumulación de especies
