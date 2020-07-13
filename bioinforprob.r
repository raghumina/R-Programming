# Load the required packages 
library(stats)
library(ggplot2)
library(dplyr)


# to create a data frame 
# data frame sol which will consist of OBJECT . ATTRIBUTESX AND ATTRIBUTESY 

Object <- c("Medicine-A","Medicine-B","Medicine-C","Medicine-D")
Attributesx <- c(1,2,4,5)
AttributesY <- c(1,1,3,4)
sol <- data.frame(Object, Attributesx, AttributesY)
View(sol)

# NOW PLOTTING A SCATTER PLOT 
plot(sol, col = "red")

# plot of x and y axis 
plot(sol$Attributesx, sol$AttributesY, col = "red",
     xlab = "molecular weight",
     ylab = "pH",
     main = "Medicine")




# k mean clustring 


sol-km = kmeans(sol, centers = 1)

KMs$cluster
