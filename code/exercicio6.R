rm(list = ls())
setwd("data")

library(xlsx)
library(qcc)

# Grafico de barras
eb <- read.xlsx("exercicio6.xls", sheetName = "Plan1")
head(eb)

atendimento<- data.frame(eb$Qualidade, eb$Npessoas)
atendimento

dados <- eb$Npessoas
names(dados)<- eb$Qualidade
dados

pareto.chart(dados)



dev.copy(device = jpeg, file = "../graph/exerc6_pareto.png", width = 600, height = 400, res = 100)
dev.off()