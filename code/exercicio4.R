rm(list = ls())
setwd("data")
library(xlsx)
#Faça uma distribuição de frequências e o gráfico histograma 
#correspondente em R. 

#frequencia
eh <- read.xlsx("exercicio4.xls", sheetName = "Plan1")
head(eh)

classes<-c("5-6","7-8","9-10","11-12")

table(cut(eh$Salarios,breaks=4,right=FALSE,labels=classes))

plot(table(cut(eh$Salarios,breaks=4,right=FALSE,labels=classes)), ylab="Frequencia",
     main="Distribuição de Frequencias - Exercicio 4", xlab="Salarios")

dev.copy(device = jpeg, file = "../graph/exerc2_freq.png", width = 600, height = 400, res = 100)
dev.off()

# Histograma
eh <- read.xlsx("exercicio4.xls", sheetName = "Plan1")
head(eh)

hist(eh$Salarios,  main = "Histograma", labels = TRUE, 
     col = c("blue", "green", "red", "lavender", "mistyrose", "cornsilk", "purple", "yellow"),
     ylab = "Frequência", xlab = "Dados")

dev.copy(device = jpeg, file = "../graph/exerc2_hist.png", width = 600, height = 400, res = 100)
dev.off()
