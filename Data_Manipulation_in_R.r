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

laptop_price %>% select("ScreenResolution","Cpu") -> laptop_reso_cpu
laptop_reso_cpu

# to select specific coloumns which starts with specific alphabets 

laptop_price %>% select(starts_with("P")) -> laptop_P
laptop_P


# to select specific coloumns which ends with specific alphabets 


laptop_price %>% select(ends_with("s")) -> laptop_s
laptop_s


# Combining select and filter 
# to filter out specific data 


# FILTER 

# Filter those laptops where company is dell 
 
laptop_price %>% filter(Company=="Dell") -> laptop_Dell
View(laptop_Dell)

# Filter those laptops where company is dell and screen size in greater than 15 inch

laptop_price %>% filter(Company=="Dell" & Inches> 15) -> laptop_Dell_screenS
View(laptop_Dell_screenS)

# Combining Select and Filter 

# FOR Selecting specific coloumns with a specific conditions 

laptop_price %>% select("Company","Product","Price_euros") %>% filter(Company =="Dell") -> laptop_final
View(laptop_final)
