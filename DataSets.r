# DATA SETS INTO R 
# First step towards machine learning 

House_Price <- read.csv("C:/Users/ashok/Desktop/BOOKS/Complete ML in R/1. Linear Regression/House_Price.csv",header = TRUE)
View(House_Price)
str(House_Price)
y <-House_Price <- read.csv("C:/Users/ashok/Desktop/BOOKS/Complete ML in R/1. Linear Regression/House_Price.csv",header = TRUE)
View(y)

# Univaraiate analysis
summary(House_Price)
y <- House_Price
hist(y$crime_rate)
pairs(~price+crime_rate+n_hos_beds+n_hot_rooms+rainfall,data = y)
barplot(table(y$airport))

# OBSERVATONS 
# OBSERVATIONS THAT NEED TO BE FIXED 
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

pairs(~price+crime_rate,data=y)
plot(y$price,y$crime_rate)

# TO CHANGE CRIME RATE VARIABLE 
y$crime_rate=log(1+y$crime_rate)

# TRANSFORMATION OF 4 DISTANCE VARIABLE INTO 1 DISTANCE VARIABLE 

y$avg_dist = (y$dist1+y$dist2+y$dist3+y$dist4)/4
View(y$avg_dist)
str(y$avg_dist)

# Delete unusable variables dist1,dist2,dist3,dist4
y <-y[,-7:-10]
View(y)

# will also remove bus terminal 
y <- y[,-14]

# CREATION OF DUMMY VARIABLE FOR THE NON NUMERICAL VARIABLE 
# CREATE A NEW VARIABLE AND ASSIGN ITS THE VALUES 0 AND 1 
# SUCH AS AIRPORT AND WATER_BODIES WHICH HAVE NON NUMERICAL VALUES 

# FOR DUMMY VARAIBLE CREATION WE WILL INSTALL A DUMMY VARIABLE PACKAGE 
install.packages("dummies")

y <- dummy.data.frame(y)
View(y)
y <- y[,-9]
y <- y[,-14]


# CO RELATION MATRIX IN R 
cor(y)

# TO ROUND UP DECIMAL VALUES UPTO 2
round(cor(y),2)

# remove park to ignore  multi colieanerity 
y<-y[,-16]


# Linear regression R
# lm function = linear model function 


sample_model <-lm(price~room_num,data = y)
summary(sample_model)


plot(y$room_num,y$price)

# to check the line on the modle 
abline(sample_model)

View(y)
# MULTIPLE LINEAR REGRESSION 

