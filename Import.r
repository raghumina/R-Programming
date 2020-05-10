# DATA INPUT IN R
#1.
data()
#2.
library(help = "datasets")


# MANUAL DATA ENTERY 
x1 <- 1:10
x2 <- c(1:10)
x5 <- seq(4,40, by = 4)
x7 <- c(1,10,23,43)
# TO ENTER DATA ONE BY ONE MANUALLy 
x6 <- scan()


# IMPORTING FROM CSV OR TEXT FILES 
# IMPORT .TXT FILES 
Pdb <- read.table("C:/Users/ashok/Documents/New folder/Pdb.txt", header = FALSE, sep = "\t")
str(Pdb)
# IMPOER CSV FILES
Customer <- read.csv("C:/Users/ashok/R Data Imports/Customer.csv", header = TRUE)
str(Customer)
Customer
View(Customer)
