library("rio")
drugs <- import("Drugs.csv")
View(drugs)

drugs$Name = NULL
drugs$`Accession iD` = NULL
View(drugs)


plot(drugs)
drugs_mean <- kmeans(drugs,2)













