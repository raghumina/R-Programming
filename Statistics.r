library(datasets)
head(iris)
summary(iris)

plot(iris)

summary(iris$Sepal.Length)  # quantative variable 
summary(iris$Species)   # categorical values 
summary(iris)  # all of the data frame 

pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, ggvis, httr,
               lubridate, plotly, rio, rmarkdown, shiny, stringr, tidyr)


p_load(psych)
p_help(psych)
p_help(psych, web = F)


# Describe()
# desc()
# use for quantative variable only not for catagorical variables 

desc(iris)
describe(iris)


hist(iris$Petal.Length[iris$Species == "versicolor"], main = "Petal length : versicolor ",
     col = "red")


hist(iris$Petal.Length[iris$Species == "setosa"], main = "Petal length : versicolor ",
     col = "blue")


hist(iris$Petal.Length[iris$Species == "virginica"], main = "Petal length : versicolor ",
     col = "green")

# SELECTORS

hist(iris$Petal.Length[iris$Species == "setosa" & iris$Petal.Length < 5.5], col = "purple")


View(iris)
View(sol)
