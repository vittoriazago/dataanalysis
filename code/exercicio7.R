rm(list = ls())
setwd("data")
library(xlsx)

# Grafico de barras
eb <- read.xlsx("exercicio7.xls", sheetName = "Plan1")
head(eb)

barplot(eb$Atendimento, names.arg = eb$Areas,
        col = c("blue", "green", "red", "lavender"), 
        legend.text = eb$inscritos, sub = "Gráfico de Barras", 
        main = "Atendimentos")


dev.copy(device = jpeg, file = "../graph/exerc7_barras.png", width = 600, height = 400, res = 100)
dev.off()