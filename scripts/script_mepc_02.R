#########################################################################
##
## Disciplina Transversal
## MEPC-2020
## Aula 1   20/05/2020
##
## Profs Fernando Mayer e Paulo Justiniano
##
#########################################################################

##======================================================================
## Links para materiais

## Página oficial do projeto R
## https://www.r-project.org/

## Introdução ao Ambiente Estatístico R (Rembrapa)
## Paulo Justiniano Ribeiro Jr
## http://www.leg.ufpr.br/~paulojus/embrapa/Rembrapa/

## Estatística Computacional com R
## Fernando Mayer, Wagner Bonat, Walmes Zeviani,
## Elias Krainski, Paulo J. Ribeiro Jr.
## http://cursos.leg.ufpr.br/ecr/

##======================================================================
## Vetores

## Vetores atômicos: existem seis tipos básicos:
## double
## integer
## character
## logical
## complex
## raw

## Vetor simples
vet <- c(5, 3, 2)
vet
length(vet)

## Vetor a partir de objetos existentes
temps <- c(temp_c, temp_k, temp_f)
temps
names(temps)
names(temps) <- c("Celsius", "Kelvin", "Fahrenheit")
temps
names(temps)

## Operações com vetores

## Regra da reciclagem
vet
vet + 2
vet + c(2, 4, 5)

vet
vet + c(2, 4)

## Sequências
1:10
seq(1, 10)
seq(1, 10, by = 2)
seq(1, 10, length.out = 30)

## Repetições
rep(1, times = 10)
rep(c(1, 2), times = 10)
rep(c(1, 2), each = 10)
rep(c(1, 2), times = c(2, 8))

##----------------------------------------------------------------------
## Indexação

vet
vet[2]
vet[c(1, 3)]
vet[-2]
vet[-c(1, 3)]
vet[]

##----------------------------------------------------------------------
## Seleção condicional
## Ver tabela em
## http://cursos.leg.ufpr.br/ecr/objetos-e-classes.html#outros-tipos-de-vetores

## Seleciona elementos
vet
vet[vet == 2]
vet == 2
vet[vet >= 3]
vet >= 3
vet[vet != 3]
vet != 3

## Seleciona posição dos elementos
which(vet == 2)
which(vet >= 3)
which(vet != 3)

##======================================================================
## Funções e argumentos
runif(n = 10, min = 0, max = 1)
args(runif)
## NOTE páginas de ajuda
help(runif)

## Ordem dos argumentos
runif(10)
runif(10, min = 0, max = 5)
runif(10, max = 5, min = 0)
runif(max = 5, n = 10, min = 0)
runif(max = 5, 10, min = 0)
runif(10, max = 5, 0)
runif(10, 0, 5)
runif(10, 5, 0) # errado

## Outros tipos de argumento
args(sample)
help(sample)
sample(x = 1:10, size = 5)
sample(x = 1:10, size = 5, replace = TRUE)

## Criando suas próprias funções
soma <- function(x, y) {
    x + y
}
soma(2, 2)

## Tudo no R é uma função (tudo mesmo)
"+"(3, 2)
"/"(3, 2)

## Convertendo as escalas de temperatura
celsius2kelvin <- function(celsius) {
    celsius + 273.15
}
celsius2kelvin(25)
celsius2kelvin(celsius = 30)
celsius2kelvin(celsius = 32.9)

celsius2fahr <- function(celsius) {
    (celsius * 9/5) + 32
}
celsius2fahr(25)
celsius2fahr(celsius = 25)
celsius2fahr(celsius = 32.9)

## Convertendo todas na mesma função
celsius2others <- function(celsius) {
    temp_k <- celsius + 273.15
    temp_f <- (celsius * 9/5) + 32
    res <- c(celsius, temp_k, temp_f)
    names(res) <- c("Celsius", "Kelvin", "Fahrenheit")
    return(res)
}
celsius2others(25)
celsius2others(32.9)
celsius2others(0)
celsius2others(100)

## Variação com mensagem
## celsius2others <- function(celsius) {
##     temp_k <- celsius + 273.15
##     temp_f <- (celsius * 9/5) + 32
##     res <- c(temp_k, temp_f)
##     names(res) <- c("Kelvin", "Fahrenheit")
##     message("Temperatura de entrada: ", celsius)
##     return(res)
## }
## celsius2others(25)

##======================================================================
## Outros tipos de vetores

## Vetores de caracteres
escala <- c("Celsius", "Kelvin", "Fahrenheit")
escala

## Fatores
escala_fator <- as.factor(escala)
escala_fator
## Níveis são sempre únicos
escala_fator2 <- as.factor(c(escala, escala))
escala_fator2

## Matrizes (vetor com duas dimensões)
mat <- matrix(1:12, nrow = 3, ncol = 4)
mat

mat <- matrix(1:12, nrow = 3, ncol = 4, byrow = TRUE)
mat
length(mat)
dim(mat)

## Indexação de matrizes
mat[1, 1]
mat[1, 2]
mat[2, 1]
mat[,]
mat[1, ]
mat[, 1]
mat[, 1, drop = FALSE]
mat[c(1, 3), c(4, 1)]

##----------------------------------------------------------------------
## Listas
lis <- list(1:5, "R", mat)
lis
length(lis)
dim(lis)
names(lis)

## Indexação de listas
lis[[1]]
lis[[1]][1]
lis[[1]][c(2, 5)]
lis[[2]]
lis[[3]]
lis[[3]][1, 2]

## Usando nomes
names(lis)
names(lis) <- c("vetor", "palavra", "matriz")
names(lis)
lis
## Usando $
lis$vetor
lis$vetor[1]
lis$vetor[c(2, 5)]
lis$palavra
lis$matriz
lis$matriz[1, 2]

##----------------------------------------------------------------------
## Data frame
## - É uma lista onde os componentes devem ter o mesmo tamanho
## - Formato de "tabela" de dados
da <- data.frame("Escala" = c("Celsius", "Kelvin", "Fahrenheit"),
                 "Temperatura" = c(temp_c, temp_k, temp_f))
da
length(da) # número de colunas = elementos da lista
dim(da) # também possui duas dimensões
names(da)
row.names(da)

## Indexação de data frames

## Como lista - por coluna
da$Escala # acessa coluna
da$Escala[1]
da$Temperatura

## Como matriz - linha e coluna
da[1, 1]
da[2, 2]
da[2, ]
da[, 2]
da[1, "Temperatura"]
da[, "Temperatura"]
da[3, "Escala"]

##======================================================================
## Entrada de dados manual

##----------------------------------------------------------------------
## Dados de horas de sol, precipitação e temperatura, por mês, na cidade
## de Curitiba. Ver tabela em:
## https://pt.wikipedia.org/wiki/Curitiba#Clima

## Temperatura média mensal --------------------------------------------
temp <- c(20.9, 21, 20.1, 18.3, 15.1, 13.9, 13.5, 14.6, 15.3,
          17.1, 18.9, 20.2)
summary(temp)
mean(temp)
median(temp)
sd(temp)

## Gráficos de série temporal
plot.ts(temp)
plot(temp, type = "l")
plot(temp, type = "l", xlab = "Mês", ylab = "Temperatura")
plot(temp, type = "l", xlab = "Mês", ylab = "Temperatura",
     ylim = c(5, 25))

## Para aparecer o mês 1
plot(temp, type = "l", xlab = "Mês", ylab = "Temperatura",
     ylim = c(5, 25), axes = FALSE)
axis(2)
axis(1, at = 1:12, labels = 1:12)
box()

## Incluindo os meses identificados pelo nome
meses <- c("Jan", "Fev", "Mar", "Abr", "Mai", "Jun", "Jul",
           "Ago", "Set", "Out", "Nov", "Dez")
plot(temp, type = "l", xlab = "Mês", ylab = "Temperatura",
     ylim = c(5, 25), axes = FALSE)
axis(2)
axis(1, at = 1:12, labels = meses)
box()

## Completo
plot(temp, type = "l", xlab = "Mês",
     ylab = expression(paste("Temperatura (", degree, "C)")),
     ylim = c(5, 25), axes = FALSE,
     main = "Temperatura média na cidade de Curitiba",
     sub = "Fonte: https://pt.wikipedia.org/wiki/Curitiba#Clima")
axis(2)
axis(1, at = 1:12, labels = meses)
box()
## Para símbolos, veja ?plotmath

## Distribuição das temperaturas
hist(temp)
hist(temp, freq = FALSE) # não é proporção, e sim densidade
hist(temp, xlab = "Temperatura", ylab = "Frequência",
     main = "Temperatura média na cidade de Curitiba")

## Precipitação média mensal -------------------------------------------
prec <- c(218.3, 166.2, 147, 95.7, 113.5, 94.1, 108.3, 74, 141.4,
          138.7, 124.4, 154.2)
summary(prec)
mean(prec)
median(prec)
sd(prec)

## Gráficos de série temporal
plot(prec, type = "l")
plot(prec, type = "l", xlab = "Mês", ylab = "Precipitação")
plot(prec, type = "o", pch = 19, col = "blue",
     xlab = "Mês", ylab = "Precipitação")
plot(prec, type = "l", xlab = "Mês", ylab = "Precipitação",
     ylim = c(50, 230))
## Pode fazer a mesma coisa incluindo os meses abreviados

## Completo
plot(prec, type = "o", xlab = "Mês", ylab = "Precipitação (mm)",
     ylim = c(50, 230), axes = FALSE,
     pch = 19, col = "blue",
     main = "Precipitação média na cidade de Curitiba",
     sub = "Fonte: https://pt.wikipedia.org/wiki/Curitiba#Clima")
axis(2)
axis(1, at = 1:12, labels = meses)
box()

## Distribuição das precipitações
hist(prec)
hist(prec, freq = FALSE) # não é proporção, e sim densidade
hist(prec, xlab = "Precipitação (mm)", ylab = "Frequência",
     main = "Precipitação média na cidade de Curitiba")
box()

## Relação entre temperatura e precipitação ----------------------------

## Cria um data frame para as duas variáveis, incluindo os meses para
## referência
clima <- data.frame(meses, temp, prec)
summary(clima)
dim(clima)
clima

## Relação entre as duas variáveis (assumindo que a precipitação depende
## da temperatura)
plot(clima$temp, clima$prec)
## Usando fórmula
plot(prec ~ temp, data = clima)
plot(prec ~ temp, data = clima, pch = 19)
plot(prec ~ temp, data = clima, pch = 19,
     xlab = "Temperatura", ylab = "Precipitação")

## Horas de sol por mês ------------------------------------------------
sol <- c(160.5, 151.3, 163.1, 155.5, 148.8, 141.3, 162.1,
         173, 124.3, 136.7, 163.5, 164.7)
summary(sol)

plot(sol, type = "l")
plot(sol, type = "l", xlab = "Mês", ylab = "Horas de sol")
plot(sol, type = "o", xlab = "Mês", ylab = "Horas de sol",
     pch = 19, col = "red")
## Tudo feito anteriormente pode ser aplicado aqui também

## Qual o percentual de sol em cada mês???
## Fazendo uma conta rápida: considere que um mês contém em média 30
## dias, e que cada dia possui, em média, 10 horas de duração, então:
## 30 dias * 10 horas = 300 horas
(horas_mes <- 30 * 10)
## Percentual de sol
sol_perc <- sol/horas_mes
summary(sol_perc)
plot(sol_perc, type = "l")
plot(sol_perc, type = "l", ylim = c(0, 1))
abline(h = 0.5, lty = 2, col = 2)

## Distribuição do percentual de sol
hist(sol_perc)
hist(sol_perc * 100, main = "", xlab = "Percentual de sol (%)",
     ylab = "Frequência")

## Relação entre as três variáveis -------------------------------------

## Inclui horas de sol no mesmo data frame
clima
clima$sol <- sol
summary(clima)
clima

## Temperatura e precipitação
plot(prec ~ temp, data = clima, pch = 19)

## Temperatura e horas de sol (assumindo que a temperatura depende da
## quantidade de sol)
plot(temp ~ sol, data = clima, pch = 19)

## Precipitação e horas de sol (assumindo que a precipitação depende da
## quantidade de sol)
plot(prec ~ sol, data = clima, pch = 19)

## Todos na mesma janela
par(mfrow = c(1, 3))
plot(prec ~ temp, data = clima, pch = 19)
plot(temp ~ sol, data = clima, pch = 19)
plot(prec ~ sol, data = clima, pch = 19)
par(mfrow = c(1, 1))

##----------------------------------------------------------------------
## Ver tabela em
## http://cursos.leg.ufpr.br/ecr/entrada-e-saída-de-dados-no-r.html#exercícios-11

## Montando a tabela "na mão"
Condicao <- rep(c("Fumante", "Nao fumante"), each = 5, times = 2)
Sexo <- rep(c("Masculino", "Feminino"), each = 10)
Numero <- c(49, 64, 37, 52, 68, 27, 58, 52, 41, 30,
            54, 61, 79, 64, 29, 40, 39, 44, 34, 44)
dc <- data.frame(Condicao, Sexo, Numero)
str(dc)
dc

## Contagem
table(dc$Condicao, dc$Sexo)

## Total de casos por categoria
xtabs(Numero ~ Condicao, data = dc)
xtabs(Numero ~ Sexo, data = dc)
tab <- xtabs(Numero ~ Condicao + Sexo, data = dc)
tab
addmargins(tab)
## Proporção em relação ao total geral
prop.table(tab)
addmargins(prop.table(tab))
round(addmargins(prop.table(tab)), 2)
addmargins(prop.table(tab)) * 100
round(addmargins(prop.table(tab)) * 100, 1)

## Visualizações básicas
barplot(tab)
barplot(tab, legend = TRUE)
barplot(tab, beside = TRUE)
barplot(tab, beside = TRUE, legend = TRUE)
## Mosaico
mosaicplot(tab)

##======================================================================
## EXTRA se der tempo: carregando dados disponíveis no R
data(iris)
str(iris)
summary(iris)
plot(iris)
## Veja a descrição dos dados com
help(iris)

## Relações
plot(iris$Petal.Length, iris$Petal.Width)
plot(Petal.Width ~ Petal.Length, data = iris)
plot(Petal.Width ~ Petal.Length, data = iris,
     xlab = "Comprimento da pétala",
     ylab = "Largura da pétala")

## Subset de uma só espécie
versi <- subset(iris, Species == "versicolor")
str(versi)
versi <- droplevels(versi)
str(versi)
plot(Petal.Width ~ Petal.Length, data = versi)
plot(Petal.Width ~ Petal.Length, data = versi,
     xlab = "Comprimento da pétala",
     ylab = "Largura da pétala",
     main = "Versicolor",
     xlim = c(1, 7), ylim = c(0, 2.5))

## Usando plot com subset
plot(Petal.Width ~ Petal.Length, data = iris,
     subset = Species == "versicolor",
     xlab = "Comprimento da pétala",
     ylab = "Largura da pétala",
     main = "Versicolor",
     xlim = c(1, 7), ylim = c(0, 2.5))

## Histogramas
hist(versi$Petal.Width)
hist(versi$Petal.Length)

## Tudo junto
par(mfrow = c(1, 2))
hist(versi$Petal.Width)
hist(versi$Petal.Length)
par(mfrow = c(1, 1))

## Mais completo
par(mfrow = c(1, 2))
hist(versi$Petal.Width, main = "", xlab = "Largura",
     ylab = "Frequência")
hist(versi$Petal.Length, main = "", xlab = "Comprimento",
     ylab = "Frequência")
par(mfrow = c(1, 1))

## Boxplots
boxplot(Petal.Length ~ Species, data = iris)
boxplot(Petal.Width ~ Species, data = iris)

##----------------------------------------------------------------------
## Comparando pacotes gráficos

## Usando plot padrão com subset
par(mfrow = c(1, 3))
plot(Petal.Width ~ Petal.Length, data = iris,
     subset = Species == "setosa",
     xlab = "Comprimento da pétala",
     ylab = "Largura da pétala",
     main = "Setosa",
     xlim = c(1, 7), ylim = c(0, 2.5))
plot(Petal.Width ~ Petal.Length, data = iris,
     subset = Species == "versicolor",
     xlab = "Comprimento da pétala",
     ylab = "Largura da pétala",
     main = "Versicolor",
     xlim = c(1, 7), ylim = c(0, 2.5))
plot(Petal.Width ~ Petal.Length, data = iris,
     subset = Species == "virginica",
     xlab = "Comprimento da pétala",
     ylab = "Largura da pétala",
     main = "Virginica",
     xlim = c(1, 7), ylim = c(0, 2.5))
par(mfrow = c(1, 1))

## Usando lattice
library(lattice)
xyplot(Petal.Width ~ Petal.Length | Species, data = iris,
       layout = c(3, 1))

## Usando ggplot2
library(ggplot2)
ggplot(iris, aes(Petal.Length, Petal.Width)) +
    geom_point() +
    facet_wrap(~ Species)
