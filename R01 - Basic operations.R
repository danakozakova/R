# Exercise 1
## (a) Create a directory for the exercise sessions and use it to store a file with R code you will write during today’s exercise session.
## (b) Open R studio. Recall/practise/try some basic operations in R

## Solution:
# Priradenie
a <- 1
b <- 7
a
b

#Operácie
a + b
a - b
a / b
a * b

#Vektory
d <- c(1,2,3,7)
d
d[4]

e <- c(2:5) #vektor od 2 do 5
e

f <- rep(1, 5) #5-krát zopakuj 1 vo vektore
f

# Operácie s vektormi
d + e
d + 1
d * 2
2 / d
d * e # súčin po prvkoch
d * f # tu súčin zlyhá, lebo vektory nemajú rovnaký počet prvkov
t(d) # transponovaná matica
t(d) %*% e # súčin matíc, v prípade jednorozmerných vektorov je to skalárny súčin

# Matice
A <- matrix(c(1:4), nrow = 2, ncol = 2) #matica so prvkami od 1 do 4 postupne po stĺpcoch
A
?matrix #help

B <- matrix(c(1:4), nrow = 2, ncol = 2, byrow = T) #matica so prvkami od 1 do 4, ale postupne po riadkoch - parameter byrow
B
class(B)

solve(B) # výpočet matice, pravá strana nie je zadané --> automaticky nulový vektor

# Funkcie
mysum <- function(a, b){
  return(a + b)
}
mysum(3,7)

ls() #zoznam objektov prostredí

rm(mysum) # zmazanie funkcie z pamäte
ls()

rm(list = ls()) #zmaže všetky objekty
ls()
