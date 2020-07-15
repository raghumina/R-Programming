# Modelling of data in r 
# Hierarchial clustering 
library(dplyr)
library(datasets)
View(mtcars)
head(mtcars)

cars <- mtcars[, c(1:3, 6:7, 9:11)]  # SELECT VARAIBLE
print(cars)

# compute and plot clusters 
# hiaerarchial clustroing 

# pips from dplyr 

hc <- cars %>%   # gets cars data 
  dist %>%       # compute distance matix 
  hclust()       # computer hiarearchyial cluster 

print(hc)

plot(hc, col = "red")


# ADD BOXES TO PLOT 

rect.hclust(hc, k = 2, border = "grey")
rect.hclust(hc, k = 3, border = "blue")
rect.hclust(hc, k = 4, border = "yellow")
rect.hclust(hc, k = 5, border = "green")


#########################################################################################################

# PRINCIPAL COMPONENTS 

pacman::p_load(pacman, dplyr, GGally, ggplot2, rio, ggthemes, ggvis, httr, rmarkdown, shiny, stringr, tidyr,
               lubridate)

library(datasets)
head(mtcars)
               

carss <- mtcars[, c(1:4, 6:7, 9:11)]
head(carss)

plot(carss)



# compute pca
 pc <- prcomp(carss, 
              center = TRUE,      # CENTRE MEANS TO 0
              scale = TRUE)      # SET UNIT VARIANCE
 
plot(pc)
summary(pc)