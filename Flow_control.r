# DECISION MAKING STATEMENT 
# Conditional statement 
# 

# if condition

View(iris)
if(iris$Sepal.Length[1]>4){
  print("Sepal length is greater than 4")
}

if(iris$Sepal.Length[1]<4){                 # this will not get an output because condition is false

  print("Sepal length is greater than 4")
}


# if else...

if(iris$Sepal.Length[1]<4){              # here else condition will get printed 
  print("Sepal length is less than 4")
}else{
  print("Sepal length is greater than 4")
}


#--------------------------------------------------------------------------------#

# Looping Statement
# for and while
# will run the loop until condition gets true 

vec1 <- 1:9
for(i in vec1){
  print(i + 5)
}

#----------------------------------------

# while loop 

i = 1 
while(i < 10){
  print(i + 5)
  i = i + 1
}


#--------------------------------------------------------------------------------#

# User defined function 
# 
add_5 <- function(x){
  print(x + 5)
}
add_5(20)            # here x is 20 and result will be 25

