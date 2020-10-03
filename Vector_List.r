# Vector and List in R
# They are the data types in R
# R's basic data types are character, numeric, integer, complex, and logical.
# R's basic data structures include the vector, list, matrix, data frame, and factors. 
# Objects may have attributes, such as name, dimension, and class.


# Vectors are homogenous single data structure
# Vector is a basic data structure in R. It contains element of the same type. 
# The data types can be logical, integer, double, character, complex or raw.
# A vector's type can be checked with the typeof() function.
# Vector is a single dimension data structure 
# the stored data should be of same time
# <- c here "c" is combine function which combines the data in the data types 

vector_1 <- c(1,2,3)           # numberical vector
vector_2 <- c("a","b","c")     # character vector
vector_3 <- c(T,F,T)           # boolean vector

# we can add different types of variable in the vector but the result will be accordinng 
# to the precedence orfer 

# for example 
mix_vector <- c(1,"2",T)
mix_vector   
typeof(mix_vector)

# the type of mix vector is character because the order of precedence of the character 
# value is higher then number and boolean 

# Extracting values from vector
mix_vector[2]
mix_vector[1]
mix_vector[3]
mix_vector[1:3] # for upto a specific range 

# by using [] and the number of the position of the value we can extract the desired value 
# from the vector


#--------------------------------------------------------------------------------------#

# List 
# Single dimensional heterogenous data structure 
# we can store different types of elements 
# 
l1 <- list(1,"1",T)
l1

# to check the class of the components of the list 
class(l1[[1]])
class(l1[[2]])

l2 <- list(c(1,2,3,4), c("1","2","c","d"), c(T,F,T,F))
l2
