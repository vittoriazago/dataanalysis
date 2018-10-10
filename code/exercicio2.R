
rm(list = ls())
setwd("data")

#a) Construir uma tabela de frequências; 
#b) Calcular as medidas de posição e as medidas de dispersão; 
#c) Faça um programa em R para calcular e gerar os gráficos.

## install.packages("xlsx")
library(xlsx)

#frequencia
eh <- read.xlsx("exercicio2.xls", sheetName = "Plan1")
head(eh)
#min = 2
#max = 97

brk<-seq(2,97, 9);
brk

classes<-c("1-10","11-20","21-30","31-40","41-50","51-60","61-70","71-80","81-90","91-100")

table(cut(eh$Casas,breaks=brk,right=FALSE,labels=classes))

plot(table(cut(eh$Casas,breaks=brk,right=FALSE,labels=classes)), ylab="Frequencia",
     main="Distribuição de Frequencias - Exercicio 2", xlab="Casas")


# Histograma
eh <- read.xlsx("exercicio2.xls", sheetName = "Plan1")
head(eh)

hist(eh$Casas,  main = "Exercicio 2", labels = TRUE, 
     col = c("blue", "green", "red", "lavender", "mistyrose", "cornsilk", "purple", "yellow"),
     ylab = "Frequência", xlab = "Dados")


# +++++
# Estatísticas Descritivas
# Média
ma <- read.xlsx("exercicio2.xls", sheetName = "Plan1")
head(ma)
xma = mean(ma$Casas)
xma
# Mediana
md <- read.xlsx("exercicio2.xls", sheetName = "Plan1")
head(md)
mediana = median(md$Casas)
mediana

# Moda
moda <- read.xlsx("exercicio2.xls", sheetName = "Plan1")
head(moda)

getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
result <- getmode(md$Casas)
print(result)


# Desvio padrao
ma <- read.xlsx("exercicio2.xls", sheetName = "Plan1")
head(ma)
xsd = sd(ma$Casas)
xsd

# Variancia
ma <- read.xlsx("exercicio2.xls", sheetName = "Plan1")
head(ma)
xvar = var(ma$Casas)
xvar
