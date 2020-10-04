# Factor and Data Frame in R 
# Factors are the data objects which are used to categorize the data and store it as levels. 
# They can store both strings and integers. They are useful in the columns which
# have a limited number of unique values. Like "Male, "Female" and True, False etc.
# They are useful in data analysis for statistical modeling.


color1 <- c("red","green","blue")
as.factor(color1) -> color1
color1


#--------------------------------------------------------------------------------------#

# Data frame 
# two dimensionl heterogenous data strucutre

fruits <- data.frame(Name = c("apple","banana","mango"), price = c(12,12,21))
fruits
fruits$Name





