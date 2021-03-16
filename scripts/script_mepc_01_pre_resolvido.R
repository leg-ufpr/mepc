#########################################################################
##
## Disciplina Transversal
## MEPC
## Aula 1
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
## install.packages("rootSolve")
rootSolve::uniroot.all(function(x) x^2 - 5 * x + 6, interval = c(0, 5))

##----------------------------------------------------------------------
## FIM Script pré aula
##======================================================================
