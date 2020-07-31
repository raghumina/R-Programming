install.packages("animation")
#library("ggplot2")
#library("dplyr")
#library("ggfortify")
#library("rio")
library("animation")
# drugs_data <- import("Drugs1.csv")


file_drug <- file.choose("Drugs1.csv")

data_drug <- read.csv(file_drug)
View(data_drug)


data_drug$Accession.iD = NULL
data_drug$Name = NULL
data_drug$Absorption... = NULL

View(data_drug)

plot(data_drug)


data_drug_cluster <- kmeans(data_drug, 2)
print(data_drug_cluster)

data_drug_ani <- kmeans.ani(data_drug, 4 )




# Plot the heat map
