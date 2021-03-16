#########################################################################
##
## Disciplina Transversal
## MEPC-2020
## Aula 3   03/06/2020
##
## Profs Fernando Mayer e Paulo Justiniano
##
#########################################################################

## Crie um vetor que armazene a sua idade e das pessoas em sua casa
## (ou de amigos, parentes, etc). Quanto mais dados você conseguir, melhor.
idade <- c(37, 30, 62, 31, 61)

## Crie um vetor para armazenar as alturas das mesmas pessoas
altura <- c(171, 179, 186, 188, 170) # altura em cm

## Crie um vetor para armazenar o peso das mesmas pessoas
peso <- c(66, 68, 102, 78, 71) # pesos em kg

## Pergunte a cor favorita para cada uma das pessoas, e armazene esse
## resultado em um vetor
cor <- c("Amarelo", "Rosa", "Azul Marinho", "Violeta", "Azul")

## Crie um vetor com os nomes das respectivas pessoas
nomes <- c("Maria", "Marta", "Lucas", "José", "Catarina")

## Atribua os nomes do vetor acima para cada um dos vetores anteriores
## (idade, altura, peso, cor favorita)
names(idade)
names(altura)
names(peso)
names(cor)

names(idade) <- nomes
names(altura) <- nomes
names(peso) <- nomes
names(cor) <- nomes

idade
altura
peso
cor

## Calcule a média de idade, altura e peso
mean(idade)
mean(altura)
mean(peso)

## Faça um histograma das idades
hist(idade)

## Faça um gráfico de dispersão entre altura e peso (considerando que o peso
## depende da altura)
plot(x = altura, y = peso)

## OPCIONAL: crie um data frame para armazenar estas informações (com cada coluna
## do data frame sendo uma variável)
dados <- data.frame(nomes, idade, altura, peso, cor)
dados
str(dados)

## Faça um sumário estatístico do data frame
summary(dados)
