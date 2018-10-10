rm(list = ls())
setwd("data")
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


plot(md$Nfilhos, xlab="Quantidade total", ylab="Numero de filhos", 
     main="Exercicio 3 - Mediana", col="red", las=1, type = "l")
abline(mediana, 0, col="green")
dev.copy(device = jpeg, file = "../graph/exerc3_mediana.png", width = 600, height = 400, res = 100)
dev.off()

plot(md$Nfilhos, xlab="Quantidade total", ylab="Numero de filhos", main="Exercicio 3 - Moda", col="red", las=1, type = "l")
abline(moda, 0, col="deepskyblue")
dev.copy(device = jpeg, file = "../graph/exerc3_moda.jpeg", width = 600, height = 400, res = 100)
dev.off()




