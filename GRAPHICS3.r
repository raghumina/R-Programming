# SCATTER PLOTS 
# FOR VISVUALIZING THE ASSOCIATION BETWEEN TWO QUANTATIVE VARIABLES 

library(datasets)
View(mtcars)

head(mtcars)

hist(mtcars$wt, col = "red")
hist(mtcars$mpg, col = "blue")

plot(mtcars$mpg,mtcars$wt, col = "red")


# OVERLAYING PLOTS 

head(lynx)

hist(lynx)

hist(lynx, col = "blue")

curve(dnorm(x, mean = mean(lynx), sd = sd(lynx)),
      col = "red",  # color of curve
      lwd = 2,  # line width of 2 pixle 
      add = TRUE)  # super impose on previous graph