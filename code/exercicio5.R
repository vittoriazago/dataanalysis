rm(list = ls())
setwd("data")

library(xlsx)

# Grafico de barras
eb <- read.xlsx("exercicio5.xls", sheetName = "Plan1")
head(eb)

bp <- barplot(eb$QtdPessoas, names.arg = eb$Marcas,
        col = c("blue", "green", "red", "lavender"), 
        legend.text = eb$inscritos, sub = "Gráfico de Barras", 
        main = "Preferência de marcas")

dev.copy(device = jpeg, file = "../graph/exerc5_barras.png", width = 600, height = 400, res = 100)
dev.off()