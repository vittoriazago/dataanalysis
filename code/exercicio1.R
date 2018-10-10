rm(list = ls())
setwd("data")

# As taxas de juros recebidas por 10 ações durante um certo período foram 
#(medidas em porcentagens) 2,59; 2,64; 2,60; 2,62; 2,57; 2,61; 2,50; 2,63; 2,64 (Os dados estão na planilha Excel “exercicio1.xls”).  
#calcular e gerar os gráficos da média, da mediana, do desvio padrão,
#da variância, do valor mínimo, do valor máximo e dos quartis Q1 e Q3. 
## install.packages("xlsx")
library(xlsx)

# +++++
# Estatísticas Descritivas
# Média
ma <- read.xlsx("exercicio1.xls", sheetName = "Plan1")
head(ma)
media = mean(ma$juros)
media
# Mediana
md <- read.xlsx("exercicio1.xls", sheetName = "Plan1")
head(md)
mediana = median(md$juros)
mediana

# Moda
moda <- read.xlsx("exercicio1.xls", sheetName = "Plan1")
head(moda)
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
moda <- getmode(md$juros)
moda


# Desvio padrao
ma <- read.xlsx("exercicio1.xls", sheetName = "Plan1")
head(ma)
desvio = sd(ma$juros)
desvio

# Variancia
ma <- read.xlsx("exercicio1.xls", sheetName = "Plan1")
head(ma)
variancia = var(ma$juros)
variancia


minimo<-min(ma$juros)
maximo<-max(ma$juros)

# +++++
# Estatísticas Descritivas
# Amplitude
normal.1 <- rnorm(10, media, desvio)
#Calcule mínimo e máximo e a amplitude destes valores:
range(normal.1)
diff( range(normal.1) )

#
# Amplitude
ampl <- read.xlsx("exercicio1.xls", sheetName = "Plan1")
head(ampl)
range(ampl)
diff( range(ampl) )

# Quartis
quartil <- read.xlsx("exercicio1.xls", sheetName = "Plan1")
head(quartil)

listaq <- sort(quartil$dados)
listaq
min(listaq)
max(listaq)
q1 = (length(listaq) + 1) / 4 
q1
listaq[q1]
q3 <- 3 * (length(listaq) + 1) / 4
q3
listaq[q3]
quantile(listaq)


dataFrame<- data.frame("Media" = media, "Mediana" = mediana, "Minimo" = minimo, "Maximo" = maximo, 
                       "Quad1" = q1, "Quad3" = q3, "DesvioPadrao" = desvio, "Variancia" = variancia)

names(dataFrame)

barplot(c(media,mediana,minimo,maximo,q1,q3,desvio,variancia),main="Grafico 1",
        names = c("Media","Mediana","Minimo","Maximo","Quad1","Quad3","DesvioPadrao","Variancia"),
        col = c("Red","Orange","Yellow","Green","Blue","Pink","Purple","Black"),ylab = "Intervalo", 
        xlab= "Variaveis",ylim=c(0,3))

