# SCATTER PLOTS 
# FOR VISVUALIZING THE ASSOCIATION BETWEEN TWO QUANTATIVE VARIABLES 

library(datasets)
View(mtcars)

head(mtcars)

hist(mtcars$wt, col = "red")
hist(mtcars$mpg, col = "blue")

plot(mtcars$mpg,mtcars$wt, col = "red")


#