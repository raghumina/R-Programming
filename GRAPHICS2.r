# graphics 2 
# BAR CHARTS OR BAR PLOTS 

library(datasets)
?datasets
library(help = "datasets")
data.frame(mtcars)
head(mtcars)
View(mtcars)
barplot(mtcars$disp)

# NEED A TABLE WITH FREQUENCIES WITH EACH CATAGEROY
cylinders <-table(mtcars$cyl)
barplot(cylinders, col = "red")
plot(cylinders)


# HISTOGRAMS BY GROUPS 

# PUT GRAPH IN 3 ROWS AND 1 COLOUMN

par(mfrow = c(3, 1))

# Histogram For each species using options 

