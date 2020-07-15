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

