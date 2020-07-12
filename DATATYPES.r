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

m2 <- matrix(c("a","b",
               "c","d"),
             nrow = 2,
             byrow = T)

print(m2)


# ARRAYS

# GIVE DATA THEN DIMENSION 
# ROW COLOUMN TABLE 

a1 <- array(c(1:24),c(4,3,2))  # it says 2 table of 4 rows and 3 coloumns
print(a1)

# lets check anotger example 

a2 <-array(c(1:24),c(2,2,6))  # 6 table of 2 rows and 2 coloumns 
print(a2)


# can combine vectors of same length but different types 

vnumeric<- c(1,2,3)
vcharacter<- c("a","b","c")
vlogical <- c(T,T,F)


