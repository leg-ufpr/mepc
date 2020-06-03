##======================================================================
## Esse é o script mostrado e construído na aula do dia 2020-05-27. Ele
## é usado aqui para criar uma continuação na aula do dia 2020-06-03.

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
temp_c
temp_C <- 30
temp_C
temp.c <- 25
tempC <- 25

## NOTE sobre nomes de variáveis:
## - Não podem começar com número
## - Não podem conter espaço
## - "Sensível ao caso"
## - Podem ser separadas por ponto, underline, ou snakeCase ou CamelCase

## Crie uma nova variável para armazenar o resultado da conversão da
## temperatura em Celsius para Kelvin através da seguinte relação:
## K = C + 273.15
temp_k <- temp_c + 273.15
temp_k
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


##----------------------------------------------------------------------
## FIM Script pré aula
##======================================================================

x <- 2
vet <- c(5, 3, 2)
vet
length(vet)

temp <- c(temp_c, temp_k, temp_f)
temp
names(temp)
names(temp) <- c("Celsius", "Kelvin", "Fahrenheit")
names(temp)
temp

## Regra da reciclagem

vet
vet + 2
vet + c(2, 4, 5)

vet + c(2, 4)

## Indexação
vet[1]
vet[3]
vet[-1]
vet[c(1, 3)]
vet[-c(1, 3)]
vet[]

## Seleção condicional
vet[3]
vet[vet == 2]
vet[vet >= 3]
vet[vet != 3]

vet == 2


prec <- c(218.3, 166.2, 147, 95.7, 113.5, 94.1, 108.3, 74, 141.4,
          138.7, 124.4, 154.2)
summary(prec)
mean(prec)
hist(prec)
plot(prec)

## Tudo no R é um objeto!
## Os objetos podem ter diferentes formatos.

nomes <- c("João", "Maria", "José")
nomes

sol <- c(160.5, 151.3, 163.1, 155.5, 148.8, 141.3, 162.1,
         173, 124.3, 136.7, 163.5, 164.7)

## O script da aula do dia 2020-05-27 termina aqui
##======================================================================

##======================================================================
## Continuação

## A ideia agora é "misturar" coisas mais aplicadas com coisas mais
## conceituais, começando pela continuação desse exemplo de Curitiba.

##----------------------------------------------------------------------
## PERGUNTAS da aula anterior:

## 1. Aline Aparecida: como plotar sendo y = valores médios de
## temperatura e x = horas de 0 a 23, sendo que todas as horas devem
## aparecer no eixo X?
## Resposta nos gráficos mais abaixo.

## 2. André Vinícius: Não faz diferença entre reais e inteiros? Como
## 9./5. ou 9/5
## Resposta: não, porque
9/5
9./5.
typeof(9)
typeof(9/5)
typeof(9./5.)
9L
typeof(9L)
as.integer(9)
typeof(as.integer(9))
##----------------------------------------------------------------------

##======================================================================
## Entrada de dados manual

temp <- c(20.9, 21, 20.1, 18.3, 15.1, 13.9, 13.5, 14.6, 15.3,
          17.1, 18.9, 20.2)
prec <- c(218.3, 166.2, 147, 95.7, 113.5, 94.1, 108.3, 74, 141.4,
          138.7, 124.4, 154.2)
sol <- c(160.5, 151.3, 163.1, 155.5, 148.8, 141.3, 162.1,
         173, 124.3, 136.7, 163.5, 164.7)

##----------------------------------------------------------------------
## Dados de horas de sol, precipitação e temperatura, por mês, na cidade
## de Curitiba. Ver tabela em:
## https://pt.wikipedia.org/wiki/Curitiba#Clima

## Temperatura média mensal --------------------------------------------
temp <- c(20.9, 21, 20.1, 18.3, 15.1, 13.9, 13.5, 14.6, 15.3,
          17.1, 18.9, 20.2)
## NOTE falar sobre colocar tudo em uma linha ou quebrar linha (no
## script)
## NOTE mostrar indexação
temp[1]
temp[c(1, 3)]

## Medidas resumo
mean(temp)
median(temp)
sd(temp)
summary(temp)

## Dando nome para os elementos
meses <- c("Jan", "Fev", "Mar", "Abr", "Mai", "Jun", "Jul",
           "Ago", "Set", "Out", "Nov", "Dez")
meses
length(meses)
names(temp)
names(temp) <- meses
names(temp)
temp
## Medidas resumo
mean(temp)
median(temp)
sd(temp)
summary(temp)
range(temp)
min(temp)
max(temp)
## Indexação
temp[1]
temp["Jan"]
temp[c(1, 3)]
temp[c("Jan", "Mar")]

## Como descobrir temperaturas máximas e mínimas
which.min(temp)
which.max(temp)
temp[which.min(temp)]
temp[which.max(temp)]

## Objetos reservados no R
month.abb
month.name
letters
LETTERS

## Gráficos de série temporal
plot.ts(temp)
plot(temp, type = "l")
plot(temp, type = "l", xlab = "Mês", ylab = "Temperatura")
plot(temp, type = "l", xlab = "Mês", ylab = "Temperatura",
     ylim = c(5, 25))

## Para aparecer o mês 1
## NOTE resposta para a pergunta 1
plot(temp, type = "l", xlab = "Mês", ylab = "Temperatura",
     ylim = c(5, 25), axes = FALSE)
axis(2)
axis(1, at = 1:12, labels = 1:12)
box()

## Incluindo os meses identificados pelo nome
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

## Usando boxplot
quantile(temp)
## ver help(quantile) e mostrar que xistem 9 tipos implementados para o
## cálculo dos quantis
## Esses dois são equivalentes
fivenum(temp)
boxplot.stats(temp)$stats
boxplot(temp)
boxplot(temp, horizontal = TRUE)

## Comparando histograma com boxplot
par(mfrow = c(2, 1))
hist(temp)
boxplot(temp, horizontal = TRUE, ylim = c(12, 22))
par(mfrow = c(1, 1))

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

## Usando boxplot
quantile(prec)
fivenum(prec)
boxplot.stats(prec)$stats
boxplot(prec)
boxplot(prec, horizontal = TRUE)

## Comparando histograma com boxplot
par(mfrow = c(2, 1))
hist(prec)
boxplot(prec, horizontal = TRUE, ylim = c(50, 250))
par(mfrow = c(1, 1))

summary(prec)

## "Explorando" mais detalhes (se for necessário)
boxplot(prec, horizontal = TRUE, ylim = c(50, 250), axes = FALSE)
seq_prec <- seq(50, 250, 5)
axis(1, at = seq_prec, labels = seq_prec)
## axis(2) # não é o correto
box()
## grid(col = "gray")

## Variação
boxplot(prec, horizontal = TRUE, ylim = c(50, 250), axes = FALSE)
seq_prec <- seq(50, 250, 5)
axis(1, at = seq_prec, labels = seq_prec, las = 2, cex.axis = 0.8)
box()
grid()

## Relação entre temperatura e precipitação ----------------------------

## Pode fazer isso
plot(temp, prec)
## mas...

## Cria um data frame para as duas variáveis, incluindo os meses para
## referência
clima <- data.frame(meses, temp, prec, row.names = NULL,
                    stringsAsFactors = TRUE)
clima
str(clima)
summary(clima)
dim(clima)
length(clima)

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

## Completo
plot(sol, type = "o", xlab = "Mês", ylab = "Horas de sol",
     ylim = c(120, 180), axes = FALSE,
     pch = 19, col = "red",
     main = "Média das horas de sol na cidade de Curitiba",
     sub = "Fonte: https://pt.wikipedia.org/wiki/Curitiba#Clima")
axis(2)
axis(1, at = 1:12, labels = meses)
box()

## Distribuição das horas de sol
hist(sol)
hist(sol, freq = FALSE) # não é proporção, e sim densidade
hist(sol, xlab = "Horas de sol", ylab = "Frequência",
     main = "Média das horas de sol na cidade de Curitiba")
box()

## Usando boxplot
quantile(sol)
fivenum(sol)
boxplot.stats(sol)$stats
boxplot(sol)
boxplot(sol, horizontal = TRUE)

## Comparando histograma com boxplot
par(mfrow = c(2, 1))
hist(sol)
boxplot(sol, horizontal = TRUE, ylim = c(120, 180))
par(mfrow = c(1, 1))

## EXTRA
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
## cbind(clima, sol)
summary(clima)
clima

## NOTE que da para fazer isso
plot(clima)

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

## clima_long <- stack(clima[, 2:4])
## str(clima_long)
## histogram(~values | ind, data = clima_long, layout = c(3, 1))


## FIM Entrada de dados manual
##======================================================================

##----------------------------------------------------------------------
## Funções
## Outros tipos de vetores (incluindo indexação)
## VER próxima sessão
##----------------------------------------------------------------------

##======================================================================
## Importando dados de planilhas

##----------------------------------------------------------------------
## Importar os dados do Gapminder em
## http://www.leg.ufpr.br/~fernandomayer/data
## Importando pela url
url <- "http://www.leg.ufpr.br/~fernandomayer/data/pib_gapminder.csv"
dados <- read.table(url, header = TRUE,
                    sep = ",", dec = ".",
                    stringsAsFactors = FALSE)
str(dados)

## Importando do arquivo local
dados <- read.table("pib_gapminder.csv", header = TRUE,
                    sep = ",", dec = ".",
                    stringsAsFactors = FALSE)
str(dados)

##----------------------------------------------------------------------
## Explorando (conhecendo) a base de dados

## Quais sao os paises?
unique(dados$pais)
length(unique(dados$pais))

## Quantos anos existem? Quais?
unique(dados$ano)
length(unique(dados$ano))
table(dados$ano)

## São 142 países observados em 12 anos
142 * 12
nrow(dados)

## Qualitativas --------------------------------------------------------

## Quais são os continentes?
unique(dados$continente)
table(dados$continente)
prop.table(table(dados$continente))
addmargins(table(dados$continente))
addmargins(prop.table(table(dados$continente)))

## Graficos para variaveis qualitativas
barplot(table(dados$continente))
barplot(table(dados$continente),
        xlab = "Continentes",
        ylab = "Frequência",
        main = "Ocorrência dos continentes")
barplot(sort(table(dados$continente)))
barplot(sort(table(dados$continente), decreasing = TRUE))
## BAD
pie(table(dados$continente))

## Tabelas de dupla entrada
table(dados$ano, dados$continente)
addmargins(table(dados$ano, dados$continente))

## Quantitativas -------------------------------------------------------

## Resumos de expVida
summary(dados)
quantile(dados$expVida)
fivenum(dados$expVida)
mean(dados$expVida)
sd(dados$expVida)
sd(dados$expVida)/mean(dados$expVida)
## NOTE pode falar de função aqui
cv <- function(x){
    sd(x)/mean(x)
}
cv(dados$expVida)

## Construindo tabelas de frequencia para var. quantitativas
sqrt(length(dados$expVida))
nclass.Sturges(dados$expVida)
nclass.FD(dados$expVida)
range(dados$expVida)
seq(20, 90, by = 10)
length(seq(20, 90, by = 10))
classes <- cut(dados$expVida, breaks = seq(20, 90, by = 10))
classes
table(classes)
addmargins(table(classes))

## Frequencia relativa
prop.table(table(classes))
addmargins(prop.table(table(classes)))
cbind("f" = addmargins(table(classes)),
      "fr" = addmargins(prop.table(table(classes))))

## Histograma
hist(dados$expVida)
hist(dados$expVida, breaks = seq(20, 90, by = 10))
hist(dados$expVida, nclass = 8)

## Boxplot
boxplot(dados$expVida)

## Boxplot por continente
boxplot(expVida ~ continente, data = dados)

## Boxplot por país
boxplot(expVida ~ pais, data = dados)
## Usando subset na função
boxplot(expVida ~ pais, data = dados,
        subset = continente == "Americas")
boxplot(expVida ~ pais, data = dados,
        subset = continente == "Americas",
        cex.axis = 0.5, las = 3, xlab = "")
## Para alguns países
boxplot(
    expVida ~ pais, data = dados,
    subset = pais %in% c("Argentina", "Brazil", "Paraguay", "Uruguay")
)

## Descobrindo a grafia dos nomes
grep("Bra", dados$pais)
grep("Bra", dados$pais, value = TRUE)
grep("Par", dados$pais)
grep("Par", dados$pais, value = TRUE)

## Para facilitar, faz um subset nos dados -----------------------------
## dados_am <- subset(dados, continente == "Americas")
## str(dados_am)

## Subset mais "restrito"
## paises <- c("Argentina", "Brazil", "Chile", "Peru",
##             "Colombia", "Ecuador", "Paraguay", "Uruguay",
##             "Venezuela") ## "Bolivia", "Peru"
paises <- c("Argentina", "Brazil", "Paraguay", "Uruguay")
dados_am <- subset(dados, pais %in% paises)
str(dados_am)

## Os mesmos gráficos podem ser feitos, mas agora sem a necessidade do
## subset em todas as funções
boxplot(expVida ~ pais, data = dados,
        subset = continente == "Americas")
boxplot(expVida ~ pais, data = dados,
        subset = pais %in% paises)
boxplot(expVida ~ pais, data = dados_am)
boxplot(expVida ~ pais, data = dados_am, las = 3, xlab = "")

## E para fazer um histograma por país?
hist(dados_am$expVida)
hist(expVida ~ pais, data = dados_am) # FAIL

## O modo trabalhoso
par(mfrow = c(2, 2))
hist(dados_am$expVida[dados_am$pais == "Argentina"], main = "Argentina",
     xlab = "Expectativa de vida", ylab = "Frequência")
hist(dados_am$expVida[dados_am$pais == "Brazil"], main = "Brazil",
     xlab = "Expectativa de vida", ylab = "Frequência")
hist(dados_am$expVida[dados_am$pais == "Paraguay"], main = "Paraguay",
     xlab = "Expectativa de vida", ylab = "Frequência")
hist(dados_am$expVida[dados_am$pais == "Uruguay"], main = "Uruguay",
     xlab = "Expectativa de vida", ylab = "Frequência")
par(mfrow = c(1, 1))
## Problemas de escala, etc

## Necessário usar outro sistema gráfico
library(lattice) ## ----------------------------------------------------
histogram(~ expVida, data = dados_am)
histogram(~ expVida | pais, data = dados_am, as.table = TRUE)
library(ggplot2) ## ----------------------------------------------------
ggplot(dados_am, aes(expVida)) +
    geom_histogram(bins = 10)
ggplot(dados_am, aes(expVida)) +
    geom_histogram(bins = 10) +
    facet_wrap(~ pais)

## Gráficos de séries temporais ----------------------------------------
plot(expVida ~ ano, data = dados_am)
xyplot(expVida ~ ano | pais, data = dados_am, type = "l",
       as.table = TRUE)
xyplot(expVida ~ ano | pais, data = dados_am, type = "l",
       as.table = TRUE,
       scales = list(x = list(rot = 90)))
## ggplot2
ggplot(dados_am, aes(ano, expVida)) +
    geom_line() +
    facet_wrap(~ pais) +
    theme(axis.text.x = element_text(angle = 90))

##----------------------------------------------------------------------
## Gráficos de dispersão
plot(expVida ~ pibPercap, data = dados_am)
plot(expVida ~ pibPercap, data = dados_am, subset = pais == "Brazil")
xyplot(expVida ~ pibPercap, data = dados_am)
## A escala atrapalha a interpretação
xyplot(expVida ~ pibPercap | pais, data = dados_am,
       as.table = TRUE)
## Mantém expVida fixo, varia pibPercap
xyplot(expVida ~ pibPercap | pais, data = dados_am,
       as.table = TRUE, scales = list(x = list(relation = "free")))
## Varia nos dois sentidos
xyplot(expVida ~ pibPercap | pais, data = dados_am,
       as.table = TRUE, scales = list(relation = "free"))
## ggplot2
ggplot(dados_am, aes(pibPercap, expVida)) +
    geom_point() +
    facet_wrap(~ pais)
ggplot(dados_am, aes(pibPercap, expVida)) +
    geom_point() +
    facet_wrap(~ pais, scales = "free_x")
ggplot(dados_am, aes(pibPercap, expVida)) +
    geom_point() +
    facet_wrap(~ pais, scales = "free")

##----------------------------------------------------------------------
## Tabelas resumo
str(dados_am)
names(dados_am)

## Usando apply
apply(dados_am[, 5:6], 2, mean)
apply(dados_am[, 5:6], 2, summary)

## Usando s/lapply
sapply(dados_am[, 5:6], mean)
lapply(dados_am[, 5:6], mean)
sapply(dados_am[, 5:6], summary)
lapply(dados_am[, 5:6], summary)

## Usando tapply (categorias)
with(dados_am, tapply(expVida, pais, mean))
with(dados_am, tapply(expVida, ano, mean))

## Com duas variaveis separadoras
with(dados_am, tapply(expVida, list(pais, ano), mean))
with(dados_am, tapply(expVida, list(ano, pais), mean))

## Com duas variaveis resposta ...
with(dados_am, tapply(data.frame(expVida, pibPercap), pais, mean))
## ... tem que usar o aggregate
aggregate(expVida ~ pais, data = dados_am, mean)
## Com mais de uma variavel
aggregate(cbind(expVida, pibPercap) ~ pais, data = dados_am, mean)
## Com mais de um divisor
aggregate(expVida ~ pais + ano, data = dados_am, mean)
## Com duas variaveis e dois divisores
aggregate(cbind(expVida, pibPercap) ~ pais + ano, data = dados_am, mean)

## E para fazer com mais de uma função?
## Ver a função ddply do pacote plyr
library(plyr)
## Usando um divisor
ddply(dados_am, .(pais), summarize,
      media = mean(expVida))
ddply(dados_am, .(pais), summarize,
      media = mean(expVida),
      var = var(expVida))
ddply(dados_am, .(pais), summarize,
      media = mean(expVida),
      var = var(expVida),
      mediana = median(expVida))
## Usando dois divisores
ddply(dados_am, .(pais, ano), summarize,
      media = mean(expVida))

## FIM Importando dados de planilhas
##======================================================================

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
## Entrada de dados manual 2

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
