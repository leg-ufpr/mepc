#########################################################################
##
## Disciplina Transversal
## MEPC-2020
## Aula 2   27/05/2020
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

## Divida x por y

## Calcule z vezes y

## Calcule 2 vezes y, salvando o resultado em uma nova variável chamada
## 'w'

## Calcule x vezes w

## Convertendo escalas de temperatura.
## Considere que você quer converter a temperatura de 25°C (graus
## Celsius - C) para as escalas Kelvin (K) e Fahrenheit (F).

## Crie uma variável para armazenar o valor da temperatura em Celsius (25)

## Crie uma nova variável para armazenar o resultado da conversão da
## temperatura em Celsius para Kelvin através da seguinte relação:
## K = C + 273.15

## Crie uma nova variável para armazenar o resultado da conversão da
## temperatura em Celsius para Fahrenheit através da seguinte relação:
## F = (C * 9/5) + 32


## Agora faça o caminho inverso: converta a temperatura calculada em
## Kelvin para Celsius com
## C = K - 273.15

## Converta a temperatura em Fahrenheit para Celsius com
## C = (F - 32) * 5/9

## Encontre as raízes da equação x^2 - 5x + 6
## Veja https://pt.wikipedia.org/wiki/Equação_quadrática

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
## Explorando dados

## Base de dados já disponível no R
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
