# r - programming 
# k mean clustring 
# 

library(rio)       # r input output
library(dplyr)     # r data manipualtion library 
library(ggplot2)   # r data visvualization library 

# to import a data frame 

data1 <- import("C:/workspace/R-Programming/daily.csv")
View(data1)     # to view dataset in our script 

data1.feature <- data1
data1.feature$class <- NULL
View(data1.feature)

# Scatter plot 
plot(data1.feature$positive,data1.feature$states)

data <- hclust(data1.feature$negative)

