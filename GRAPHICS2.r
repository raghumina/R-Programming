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

View(iris)
# HISTOGRAMS BY GROUPS 

# PUT GRAPH IN 3 ROWS AND 1 COLOUMN

par(mfrow = c(3, 1))

# Histogram For each species using options 

hist(iris$Petal.Width [iris$Species == "verginica"], xlim = c(0, 3), breaks = 9,
     col = "blue")


hist(iris$Petal.Width [iris$Species == "versicolor"], xlim = c(0, 3), breaks = 9,
     col = "yellow")


hist(iris$Petal.Width [iris$Species == "setosa"], xlim = c(0, 3), breaks = 9,
     col = "red")



