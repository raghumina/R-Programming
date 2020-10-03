# Matrix and array 
# 
# Matrix is 2 dimensional homogeneous data structure
# it have both rows and coloumns 

matrix_1 <- matrix(c(1,23,3,4,5,3,4))
matrix_1

matrix_2 <- matrix(c(1,2,3,4), nrow = 2, ncol = 3)
matrix_2          # creates a matrix of 2 rows and 3 coloumns 

matrix_3 <- matrix(c(1,2,3,4,5,6), nrow = 2, ncol = 3, byrow = T)
matrix_3       # if we have to store data by row 

matrix_3[2,2]

#--------------------------------------------------------------------#

# Array
# Array is a multidimensional homogenous data structure
# we can store vector over another vector here
# multiple vectors 

v1 <- c(1,2,3,4,5,6,7,8)
v2 <- c(8,7,6,5,4,3,2,1)

array_1 <- array(c(v1,v2), dim = c(2,3,2))
array_1

array_1[1,2,1]



