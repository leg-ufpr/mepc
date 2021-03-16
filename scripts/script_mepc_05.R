#########################################################################
##
## Disciplina Transversal
## MEPC
## Aula 5
##
## Profs Fernando Mayer e Paulo Justiniano
##
#########################################################################

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
boxplot(expVida ~ continente, data = dados,
        notch = TRUE, varwidth = TRUE)

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

## install.packages("ggplot2")
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
  facet_wrap(~ pais)
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
## install.packages("plyr")
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
