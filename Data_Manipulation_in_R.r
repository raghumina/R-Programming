# Data Manipulation in R
# Data Manipulation is the process of finding insights by filtering, aggregating and 
# summerizing the raw data 
# 
# %>% pipe operator in R use to join to data frames or rows in R 



library(dplyr)
laptop_price <- read.csv("C:/workspace/R-Programming/laptops.csv")
View(laptop_price)


# need to load dplyr for using select method 

laptop_price %>% select(1,2) -> laptop_1_2
laptop_1_2


laptop_price %>% select(3:6) -> laptop_3_6
laptop_3_6

# or to select specific coloumns form a data frame

