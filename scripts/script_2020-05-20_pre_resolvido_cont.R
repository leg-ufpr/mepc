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
##----------------------------------------------------------------------

##======================================================================
## Importando dados de planilhas
