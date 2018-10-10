#Faça uma distribuição de frequências e o gráfico histograma 
#correspondente em R. 

rm(list = ls())

# Localizando o arquivo .xls
setwd("data")

## install.packages("xlsx")
library(xlsx)

# Mediana
md <- read.xlsx("exercicio3.xls", sheetName = "Plan1")
head(md)
mediana = median(md$Nfilhos)
mediana

# Moda
moda <- read.xlsx("exercicio3.xls", sheetName = "Plan1")
head(moda)

getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
result <- getmode(md$Nfilhos)
print(result)