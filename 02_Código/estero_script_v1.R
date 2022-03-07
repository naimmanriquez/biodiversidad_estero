## Analisis de biodiversidad CONSERVADO
## Naim Manriquez

# Removemos notacion cientifica
options(scipen = 999)

# Cargamos librerias
library(vegan)
library(kableExtra)
library(BiodiversityR)
library(readxl)

#usando vegan
BCI <- read_excel("bd_aves_tesis_v2.xlsx", sheet = 1)

# log file 

sink(file = "conservado.txt")


H <- diversity(BCI, index = "shannon")
D <- diversity(BCI, index = "simpson")

H
D

S <- specnumber(BCI)

J <- H/log(specnumber(BCI))
indices <- data.frame(S,H,D,J)

kable(indices, format = "markdown", col.names = c("S, Riqueza", "H, Shannon", "D, Simpson", "J, Igualdad"))

#índice de Shannon, H'
med <- mean(H)
var <- var(H)
max <- max(H)
min <- min(H)
indxstat <- data.frame(med,var,max,min)
kable(indxstat, format = "markdown", col.names = c("Media H", "Varianza H", "Máximo H", "Mínimo H"))

#índices de diversidad en conjunto con BiodiversityR
Hp <- diversityresult(BCI, index=("Shannon"), method=("pooled"))
Dp <- diversityresult(BCI, index=("Simpson"), method=("pooled"))
Jp <- diversityresult(BCI, index=("Jevenness"), method=("pooled"))
indxpool <- data.frame(Hp[1,1],Dp[1,1],Jp[1,1])
kable(indxpool, format = "markdown", col.names = c("H conjunto","D conjunto","J conjunto"))

#por muestreos
sac <- specaccum(BCI)

plot(sac, ci.type="polygon", ci.col="yellow") #ver vegan para opciones

#por individuos
sac <- specaccum(BCI, method = "rarefaction")
plot(sac, xvar = "individual", ci.type="polygon", ci.col="yellow") #ver vegan para opciones


#para el menor número de individuos en un sitio
Srar <- rarefy(BCI, min(rowSums(BCI)))
Srar

# Abundancia vs rango
#cuando los datos no están en un data frame "homogéneo" podemos usar 'as.data.frame'
BCIdf <- as.data.frame(BCI)
#usando BiodiversityR
RankAbun.1 <- rankabundance(BCIdf)

RankAbun.1 #especies ordenadas según su abundancia (también: proportion, logabun)


#gráfica de rango-abundancia
rankabunplot(RankAbun.1, scale='abundance', addit=FALSE, specnames=c(1))

plot(RankAbun.1[,1], RankAbun.1[,2], type = "h", xlab = "Rango", ylab = "Abundancia")



## el numero de especies por transecto evaluado.

specnumber(BCI)

# promedio de la abundancia de las especies.
apply(BCI, 2, mean)

boxplot(BCI, ylab = "ABUNDANCIA", xlab = "ESPECIES",las=2)
abline(h=5)


diversity(BCI,"shannon")
diversity(BCI,index = "shannon", base = 2)


diversity(BCI,index ="simpson")


barplot(diversity (BCI, index = "shannon"), col = "green")
title(main = "DIVERSIDAD DE SHANNON", xlab = "TRANSECTOS", ylab = "HA´")

# log close
sink(file = NULL)



## Analisis de biodiversidad LITORAL
## Naim Manriquez

# Removemos notacion cientifica
options(scipen = 999)

# Cargamos librerias
library(vegan)
library(kableExtra)
library(BiodiversityR)
library(readxl)

#usando vegan
BCI <- read_excel("bd_aves_tesis_v2.xlsx", sheet = 2)

# log file 

sink(file = "litoral.txt")

H <- diversity(BCI, index = "shannon")
D <- diversity(BCI, index = "simpson")

H
D

S <- specnumber(BCI)

J <- H/log(specnumber(BCI))
indices <- data.frame(S,H,D,J)

kable(indices, format = "markdown", col.names = c("S, Riqueza", "H, Shannon", "D, Simpson", "J, Igualdad"))

#índice de Shannon, H'
med <- mean(H)
var <- var(H)
max <- max(H)
min <- min(H)
indxstat <- data.frame(med,var,max,min)
kable(indxstat, format = "markdown", col.names = c("Media H", "Varianza H", "Máximo H", "Mínimo H"))

#índices de diversidad en conjunto con BiodiversityR
Hp <- diversityresult(BCI, index=("Shannon"), method=("pooled"))
Dp <- diversityresult(BCI, index=("Simpson"), method=("pooled"))
Jp <- diversityresult(BCI, index=("Jevenness"), method=("pooled"))
indxpool <- data.frame(Hp[1,1],Dp[1,1],Jp[1,1])
kable(indxpool, format = "markdown", col.names = c("H conjunto","D conjunto","J conjunto"))

#por muestreos
sac <- specaccum(BCI)

plot(sac, ci.type="polygon", ci.col="yellow") #ver vegan para opciones

#por individuos
sac <- specaccum(BCI, method = "rarefaction")
plot(sac, xvar = "individual", ci.type="polygon", ci.col="yellow") #ver vegan para opciones


#para el menor número de individuos en un sitio
Srar <- rarefy(BCI, min(rowSums(BCI)))
Srar

# Abundancia vs rango
#cuando los datos no están en un data frame "homogéneo" podemos usar 'as.data.frame'
BCIdf <- as.data.frame(BCI)
#usando BiodiversityR
RankAbun.1 <- rankabundance(BCIdf)

RankAbun.1 #especies ordenadas según su abundancia (también: proportion, logabun)


#gráfica de rango-abundancia
rankabunplot(RankAbun.1, scale='abundance', addit=FALSE, specnames=c(1))

plot(RankAbun.1[,1], RankAbun.1[,2], type = "h", xlab = "Rango", ylab = "Abundancia")



## el numero de especies por transecto evaluado.

specnumber(BCI)

# promedio de la abundancia de las especies.
apply(BCI, 2, mean)

boxplot(BCI, ylab = "ABUNDANCIA", xlab = "ESPECIES",las=2)
abline(h=5)


diversity(BCI,"shannon")
diversity(BCI,index = "shannon", base = 2)


diversity(BCI,index ="simpson")


barplot(diversity (BCI, index = "shannon"), col = "green")
title(main = "DIVERSIDAD DE SHANNON", xlab = "TRANSECTOS", ylab = "HA´")

# log close
sink(file = NULL)


## Analisis de biodiversidad PERTURBADO
## Naim Manriquez

# Removemos notacion cientifica
options(scipen = 999)

# Cargamos librerias
library(vegan)
library(kableExtra)
library(BiodiversityR)
library(readxl)

#usando vegan
BCI <- read_excel("bd_aves_tesis_v2.xlsx", sheet = 3)

# log file 

sink(file = "perturbado.txt")


H <- diversity(BCI, index = "shannon")
D <- diversity(BCI, index = "simpson")

H
D

S <- specnumber(BCI)

J <- H/log(specnumber(BCI))
indices <- data.frame(S,H,D,J)

kable(indices, format = "markdown", col.names = c("S, Riqueza", "H, Shannon", "D, Simpson", "J, Igualdad"))

#índice de Shannon, H'
med <- mean(H)
var <- var(H)
max <- max(H)
min <- min(H)
indxstat <- data.frame(med,var,max,min)
kable(indxstat, format = "markdown", col.names = c("Media H", "Varianza H", "Máximo H", "Mínimo H"))

#índices de diversidad en conjunto con BiodiversityR
Hp <- diversityresult(BCI, index=("Shannon"), method=("pooled"))
Dp <- diversityresult(BCI, index=("Simpson"), method=("pooled"))
Jp <- diversityresult(BCI, index=("Jevenness"), method=("pooled"))
indxpool <- data.frame(Hp[1,1],Dp[1,1],Jp[1,1])
kable(indxpool, format = "markdown", col.names = c("H conjunto","D conjunto","J conjunto"))

#por muestreos
sac <- specaccum(BCI)

plot(sac, ci.type="polygon", ci.col="yellow") #ver vegan para opciones

#por individuos
sac <- specaccum(BCI, method = "rarefaction")
plot(sac, xvar = "individual", ci.type="polygon", ci.col="yellow") #ver vegan para opciones


#para el menor número de individuos en un sitio
Srar <- rarefy(BCI, min(rowSums(BCI)))
Srar

# Abundancia vs rango
#cuando los datos no están en un data frame "homogéneo" podemos usar 'as.data.frame'
BCIdf <- as.data.frame(BCI)
#usando BiodiversityR
RankAbun.1 <- rankabundance(BCIdf)

RankAbun.1 #especies ordenadas según su abundancia (también: proportion, logabun)


#gráfica de rango-abundancia
rankabunplot(RankAbun.1, scale='abundance', addit=FALSE, specnames=c(1))

plot(RankAbun.1[,1], RankAbun.1[,2], type = "h", xlab = "Rango", ylab = "Abundancia")



## el numero de especies por transecto evaluado.

specnumber(BCI)

# promedio de la abundancia de las especies.
apply(BCI, 2, mean)

boxplot(BCI, ylab = "ABUNDANCIA", xlab = "ESPECIES",las=2)
abline(h=5)


diversity(BCI,"shannon")
diversity(BCI,index = "shannon", base = 2)


diversity(BCI,index ="simpson")


barplot(diversity (BCI, index = "shannon"), col = "green")
title(main = "DIVERSIDAD DE SHANNON", xlab = "TRANSECTOS", ylab = "HA´")


# log close
sink(file = NULL)

