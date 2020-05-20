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
## Script pré aula
##----------------------------------------------------------------------

## Tudo que está depois de um '#' é um comentário e não será executado.

## O R como uma calculadora
2 + 2    # Com o cursor nesta linha, aperte Ctrl + Enter

## O comando acima é "enviado" ao console (abaixo) e executado. No
## entanto, o resultado da operação não está armazenada em nenhum lugar.
## Para "salvar" o resultado, atribua a operação à uma variável qualquer
x = 2 + 2

## Note que o resultado da operação não é mostrado. Para visualizar o
## resultado, digite o nome da variável
x

## Vamos criar uma nova variável, como resultado de outra operação
y = 3 * 2
y

## Podemos agora fazer operações com estas variáveis, como por exemplo
x + y

## Para visualizar as variáveis que criamos, usamos a função ls()
ls()

## Para remover as variáveis criadas, usamos a função rm()
rm(x, y)

## Verifique que 'x' e 'y' não existem mais
ls()


## Agora é a sua vez!

## Cria três variáveis: 'x', 'y' e 'z', com os respectivos valores: 5,
## 3, e 2.
x = 5
y = 3
z = 2
## NOTE que = deveria ser <-
x <- 5
y <- 3
z <- 2
## NOTE que também poderia fazer
x <- 5; y <- 3; z <- 2

## Divida x por y
x/y

## Calcule z vezes y
z * y

## Calcule 2 vezes y, salvando o resultado em uma nova variável chamada
## 'w'
w <- 2 * y
2 * y -> w
w

## Calcule x vezes w
x * w

## Convertendo escalas de temperatura.
## Considere que você quer converter a temperatura de 25°C (graus
## Celsius - C) para as escalas Kelvin (K) e Fahrenheit (F).

## Crie uma variável para armazenar o valor da temperatura em Celsius (25)
temp_c <- 25
## NOTE sobre nomes de variáveis:
## - Não podem começar com número
## - Não podem conter espaço
## - "Sensível ao caso"
## - Podem ser separadas por ponto, underline, ou snakeCase ou CamelCase

## Crie uma nova variável para armazenar o resultado da conversão da
## temperatura em Celsius para Kelvin através da seguinte relação:
## K = C + 273.15
temp_k <- temp_c + 273.15
(temp_k <- temp_c + 273.15)

## Crie uma nova variável para armazenar o resultado da conversão da
## temperatura em Celsius para Fahrenheit através da seguinte relação:
## F = (C * 9/5) + 32
(temp_f <- temp_c * 9/5 + 32)
## NOTE sobre ordem de operações
(temp_f <- (temp_c * 9/5) + 32)

## Agora faça o caminho inverso: converta a temperatura calculada em
## Kelvin para Celsius com
## C = K - 273.15
(temp_c <- temp_k - 273.15)

## Converta a temperatura em Fahrenheit para Celsius com
## C = (F - 32) * 5/9
(temp_c <- temp_f - 32 * 5/9)
## NOTE sobre ordem de operações
(temp_c <- (temp_f - 32) * 5/9)
## Abrindo a conta
77 - 32 * 5/9 # errado
32 * 5/9 # esse é o primeiro passo
77 - 17.77778 # o resultado do primeiro passo é usado aqui, causando o
              # erro
(77 - 32) * 5/9 # certo - parenteses primeiro

## NOTE sobre "sobreposição" de resultados no mesmo objeto (apesar do
## resultado ser o mesmo, temp_c é sobrescrito)

## NOTE por que 9/5 e não 1.8?
## Representação numérica em computadores: aritmética de ponto flutuante
9/5
print(9/5, digits = 22)
1.8
print(1.8, digits = 22)

## Encontre as raízes da equação x^2 - 5x + 6
## Veja https://pt.wikipedia.org/wiki/Equação_quadrática
a <- 1; b <- -5; c <- 6
## Fórmula de Bhaskara
(-b - sqrt(b^2 - 4 * a * c))/(2 * a)
(-b + sqrt(b^2 - 4 * a * c))/(2 * a)
## Visualização
curve(x^2 - 5 * x + 6, from = 0, to = 5)
abline(h = 0, lty = 2)
segments(x0 = 2, y0 = -1, x1 = 2, y1 = 0, col = 2)
segments(x0 = 3, y0 = -1, x1 = 3, y1 = 0, col = 2)
points(2, 0, pch = 19, col = 2)
points(3, 0, pch = 19, col = 2)

## Usando uniroot
uniroot(function(x) x^2 - 5 * x + 6, interval = c(0, 5))
uniroot(function(x) x^2 - 5 * x + 6, interval = c(0, 2.5))$root
uniroot(function(x) x^2 - 5 * x + 6, interval = c(2.5, 5))$root
rootSolve::uniroot.all(function(x) x^2 - 5 * x + 6, interval = c(0, 5))

##----------------------------------------------------------------------
## FIM Script pré aula
##======================================================================

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
## http://cursos.leg.ufpr.br/ecr/entrada-e-sa%C3%ADda-de-dados-no-r.html#exerc%C3%ADcios-11

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
prop.table(tab)
addmargins(prop.table(tab))

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
