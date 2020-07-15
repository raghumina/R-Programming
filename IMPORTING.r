# IMPORTING DATA 
# BY TRADITRIONL WAY 
# IMPORTING DATA A .CSV FILE 

data1 <- read.csv("C:/Users/ashok/Desktop/BOOKS/Complete ML in R/1. Linear Regression/Customer.csv")
print(data1)
View(data1)
plot(data1$Customer.ID,data1$Age, col = "red")


# Another way of importing data is 
install_formats("rio")
library(rio)


# to open any url page on R 


browseURL("https://github.com/raghumina/R-Programming/blob/master/Import.r")

# csv 
# easier than traditional way 
Customercsv <- import("C:/Users/ashok/Desktop/BOOKS/Complete ML in R/1. Linear Regression/Customer.csv")
print(Customercsv)

# TEXT FILES 
# 
Customertxt <- import("C:/Users/ashok/Desktop/BOOKS/Sequence.txt")
print(Customertxt)
head(Customertxt)
View(Customertxt)
