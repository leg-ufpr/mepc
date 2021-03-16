# mepc

Este projeto está encapsulado com o
[renv](https://rstudio.github.io/renv/articles/renv.html).

Depois de clonar, abra o R na raíz do projeto e faça

```r
renv::restore()
```

Isso irá configurar e instalar todos os pacotes necessários.

Caso inclua (ou atualize) mais pacotes, rode

```r
renv::snapshot()
```
