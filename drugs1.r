library(stats)
library(ggplot2)
library(dplyr)
library(ggfortify)










data <- import("Drugs.csv")
View(data)
data$Name = NULL
data$`Accession iD` = NULL
data$`Absorption(%)`= NULL
View(data)


data1 <- kmeans(data, 2)
print(data1)


data1$cluster

plot(data[c("Weight(Average)","Weight(Monoisotopic)")], col = data1$cluster)
