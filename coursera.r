# 
n <- 28
print(n)

name1 <- "tommy"
print(name1)

name2 <- "jerry"
print(name1name2)

remove(x)

# MATRICES 

mat <-matrices1(row(2),col(2))
print(m)

library(datasets)
head(iris)
summary(iris)
plot(iris)
plot()

# to time to detach the data base 

detach("package:datasets", unload = TRUE)
dev.off()


# lets install a package 

install.packages

library(pacman)
require(pacman)

pacman ::p_load(pacman,tidyr,stringr)

p_unload(all)


library(datasets)
head(iris)

?plot

# PLOT WITH OPTION

plot(iris$Species)
plot(iris$Petal.Length)
plot(iris$Sepal.Length)
plot(iris$Sepal.Width)
plot(iris$Petal.Width)


# col = cplor of the graph
# main  = title of the plot 
# xlab = x axis
# ylab = y axsis

plot(iris$Sepal.Length, iris$Sepal.Width, col= "green", pch =  19, main = "sEPA LENGTH AND WIDTH",
     xlab = "PETAL LEGTH", ylab = "PETAL WIDTH")

# PLOT FORMULAS WITH PLOT
plot(cos,0, 2*pi)
plot(exp,1,5)


# formula plot with options 
# dnorm = density of normal distribution 

plot(dnorm,-3,3, col = "red", main = "standard normal distribution",
     xlab = "z-score",
     ylab = "density")

# detach the dataset 
detach("package:datasets", unload = TRUE)
