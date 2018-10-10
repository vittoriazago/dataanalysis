rm(list = ls())
setwd("data")

library(xlsx)

#frequencia

eh <- read.xlsx("exercicio9.xls", sheetName = "Plan1")
head(eh)
classes<-c("4-5","6-7","8-9","10-11","12-13","14-15","16-17","18-19","20-21","22-24")

brk<-seq(4,24,2);
brk


table(cut(eh$Salarios,breaks=brk,right=FALSE,labels=classes))

plot(table(cut(eh$Salarios,breaks=brk,right=FALSE,labels=classes)), ylab="Frequencia",
     main="Exercicio 9", xlab="Salarios")

#histograma 

eh <- read.xlsx("exercicio9.xls", sheetName = "Plan1")
head(eh)

hist(eh$Salarios,  main = "Histograma", labels = TRUE, 
     col = c("blue", "green", "red", "lavender", "mistyrose", 
             "cornsilk", "purple", "yellow"),
     ylab = "Exercicio 9 ", xlab = "Dados")



