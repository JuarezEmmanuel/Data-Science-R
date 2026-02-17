# https://xn--educacinvirtual-1rb.site/moodle/course/view.php?id=88#sectionid-1475

#install.packages("rmarkdown", dependencies = TRUE, INSTALL_opts = '--no-lock')
#############################
# EJECUCIÓN CONDICIONAL

a <- 10

if (a > 10){
  a <- a - 1 #En el caso que a sea mayor a 10 le resta uno
}
a

# If else
a <- 10

if (a > 10){
  a <- a - 1 #En el caso que a sea mayor a 10 le resta uno
} else {
  a <- a + 1 #En cualquier otro caso le suma uno
}
a


#Probemos asignando inicialmente un valor de 8 a la variable a.
a <- 8
if (a > 10){
  a <- a - 1 #En el caso que a sea mayor a 10 le resta uno
} else {
  a <- a + 1 #En cualquier otro caso le suma uno
}
a

#Estructura If, else if, else
a <- 8

if (a > 10){
  a <- a - 1 #En el caso que a sea mayor a 10 le resta uno
} else if (a < 10){#agregamos un casa más
  a <- a + 1
  #
} else cat("El numero es igual a", a)  #En cualquier otro caso le suma uno
a

#Operadores de comparación

#== Igual a…
#!= Distinto a…
#> Mayor que…
#< Menor que…
#>= Mayor o igual que…
#<= Menor o igual que…



#& Operador Y
#| Operador O
#! Operador negación

(1 < 2) & (3 < 4)
(1 < 2) | (3 == 4)
(1 < 2) &    ! (3 == 4)

#Precedencia

TRUE | TRUE & FALSE

(1<2) | (3==3) & (44>22)
# Se resuelve antes el & que el |
(TRUE | TRUE) & FALSE


#Bucles definidos
guardo <- rep(NA, 4)
for (i in 1:4){
  guardo[i]<- i**2
  print(i)
}


#Sentencia next
guardo <- rep(NA, 6)
for (i in 1:6){
  if (i==3) {next} #modifique el ejemplo del apunte
  guardo[i]<- i**2
  print(i)
  Sys.sleep(1)
}

#Bucles indefinidos
#Bucle while
guardo<-c()
a <- 1
while (a < 5){
  print(a)
  a<-a+1
  guardo<-append(guardo, a**2)
} 

#Bucle repeat
guardo<-c()
a <- 1
repeat {
  print(a)
  a<-a+1
  guardo<-append(guardo, a**3)
  Sys.sleep(.1)
  if (a == 5){break}
} 

#Ejercicio para el hogar

#Crear una secuencia aleatoria de números y encontrar su valor máximo

#-Qué valor es? -En que posición se encuentra

#Ayuda: La función sample() selecciona números aleatorios de un vector

numeros <- sample(x=1:100, size=5, replace=F)#toma 5 elementos al azar entre 1 y 100
maximo<-0
for (i in 1:length(numeros)){ #genero un bucle para recorrer todos los elementos del vector
  if (numeros[i] > maximo){maximo <- numeros[i]}
}
print(numeros)
cat("El número máximo del vector es", maximo)

#Ahora le agregamos un truco para que nos diga en que posición se encuentra

maximo<-0

for (i in 1:length(numeros)){ #genero un bucle para recorrer todos los elementos del vector
  if (numeros[i] > maximo){
    maximo <- numeros[i]
    posicion <- i
  }
}
cat("El valor máximo se encuentra en la", posicion, "posición")

#Funciones
sumar <- function(a, b){
  c<-a+b
  return(c)
}

sumar(a=18,b=5)


#
sumar_cuadrados <- function(a, b){
  c<-a
  d<-b
  a**2+b**2
}
sumar_cuadrados(a=4, b=3)

#Argumentos por defecto
sumar_cuadrados <- function(a=3, b=4){ #definimos a = 3 por defecto, b=4 por defecto
  c<-a
  d<-b
  a**2+b**2
}

sumar_cuadrados()

#Recusrividad
fact <- function(n){
  if (n==1){r=1}
  else (r <- n*fact(n-1))
  return(r)
}


#Librerías y paquetes
#install.packages("arules")
library(arules)







