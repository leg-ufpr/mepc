#########################################################################
##
## Disciplina Transversal
## MEPC-2020
## Aula 4   10/06/2020
##
## Profs Fernando Mayer e Paulo Justiniano
##
#########################################################################

##======================================================================
## SÓ VEJA ESSE SCRIPT DEPOIS DE TENTAR RESOLVER O ANTERIOR!
##======================================================================

## Os dados abaixo se referem às horas de sol por mês, na cidade de
## Curitiba, conforme disponíveis em
## https://pt.wikipedia.org/wiki/Curitiba#Clima
sol <- c(160.5, 151.3, 163.1, 155.5, 148.8, 141.3, 162.1,
         173, 124.3, 136.7, 163.5, 164.7)

## A pergunta que você deve responder é: qual o *percentual* de sol em
## cada mês?

## Para simplificar, faça algumas suposições:
## 1. Considere que um mês contém em média 30 dias
## 2. Considere que cada dia possui, em média, 10 horas de duração
## Com isso:
## 1. Calcule a quantidade média de horas em um mês
## 2. Divida as horas de sol mensal pela quantidade de horas mensal,
## e multiplique por 100, para obter o percentual de horas de sol por mês

## Média de horas totais por mês, de acordo com a simplificação
## 30 dias * 10 horas = 300 horas por mês
(horas_mes <- 30 * 10)

## Percentual de sol
(sol_perc <- (sol/horas_mes) * 100)

## Faça um sumário estatístico do percentual de sol mensal
summary(sol_perc)

## Faça um histograma do percentual de sol mensal
hist(sol_perc)

## Faça um boxplot do percentual de sol mensal
boxplot(sol_perc)

## Faça um gráfico de série temporal do percentual de sol mensal
plot(sol_perc, type = "l")

## Versão com mais elementos
plot(sol_perc, type = "l", ylim = c(0, 100))
abline(h = 50, lty = 2, col = 2) # linha que indica 50%
