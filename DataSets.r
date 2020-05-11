# DATA SETS INTO R 
# First step towards machine learning 

House_Price <- read.csv("C:/Users/ashok/Desktop/BOOKS/Complete ML in R/1. Linear Regression/House_Price.csv",header = TRUE)
View(House_Price)
str(House_Price)
y <-House_Price <- read.csv("C:/Users/ashok/Desktop/BOOKS/Complete ML in R/1. Linear Regression/House_Price.csv",header = TRUE)
View(y)
remove(y)

# Univaraiate analysis
summary(House_Price)
y <- House_Price
hist(y$crime_rate)
pairs(~price+crime_rate+n_hos_beds+n_hot_rooms+rainfall,data = y)
barplot(table(y$airport))

# OBSERVATONS 
#n_hot_room and rainfall have outliers
# n_hos_beds has missing values 
# bus_ter is a useless varaible 
# Crime_rate have some functionality with price 
# OUT LIER TREATMENET 
quantile(y$n_hot_rooms,0.99)
#this is to remove the errors 
#and make the data more clean and understandable 
#following the concepts of the outlier treatment 
# uv = upper value 
# lv = lower value 

# removl of outlier in n_hot_rooms
uv = 3*quantile(y$n_hot_rooms,0.99)
y$n_hot_rooms[y$n_hot_rooms>uv] <-uv
summary(y$n_hot_rooms)

# removal of outlier in rainfall
lv = 0.3*quantile(y$rainfall, 0.01)
y$rainfall[y$rainfall<lv] <- lv
summary(y$rainfall)


#to find the mean related quey 
mean(y$n_hos_beds)
mean(y$n_hos_beds,na.rm = T)

# MISSING VALUE IMPUTATION IN R
# TO IDENTIFY BLAk VALUES IN VARIABLE
which(is.na(y$n_hos_beds))

# Repalcing blank valueswith mean
y$n_hos_beds[is.na(y$n_hos_beds)] <-mean(y$n_hos_beds,na.rm = T)
summary(y$n_hos_beds)

# SEASONALITY IN DATA 
# WE CAN REMOVE IT BY MULTIPICATION FACTOR 
