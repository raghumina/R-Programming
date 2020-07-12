# Numerical

n1 <- 15
n1
typeof(n1)

n2 <- 1
n2
typeof(n2)

n3 <- 12.21
n3
typeof(n3)

s1 <- "hello"
s1
typeof(s1)

b1 <- TRUE
b1
typeof(b1)

b2 <- F
b2
typeof(b2)


# DATA STRUCTURES 

# vectors 

v1 <- c(1,2,3,4,5,6,7,8,9,0)
v1
print(v1)
is.vector(v1)

v2 <-c("a","b","c","d")
v2
is.vector(v2)

# matrix 
# number should be equal otherwise it will give error 

m1 <- matrix(c(T,T,F,T,F,T,T), nrow = 2)
m1
