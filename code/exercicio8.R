rm(list = ls())
setwd("data")

library(xlsx)

#frequencia
eh <- read.xlsx("exercicio8.xls", sheetName = "Plan1")
head(eh)

classes<-c("1.55-1.59","1.60-1.64","1.65-1.69","1.70-1.74","1.75-1.79","1.80-1.84","1.85-1.89")

table(cut(eh$Altura,breaks=7,right=FALSE,labels=classes))

plot(table(cut(eh$Altura,breaks=7,right=FALSE,labels=classes)), ylab="Frequencia",
     main="Distribuição de Frequencias - Exercicio 8", xlab="Alturas")



# Histograma
eh <- read.xlsx("exercicio8.xls", sheetName = "Plan1")
head(eh)

hist(eh$Altura,  main = "Histograma", labels = TRUE, 
     col = c("blue", "green", "red", "lavender", "mistyrose", 
                "cornsilk", "purple", "yellow"),
     ylab = "Altura média dos pacientes ", xlab = "Dados")

