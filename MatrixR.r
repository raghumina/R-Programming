# MATRICES IN R
a<-1:10
b<-1:10


# nrows and ncoloumns in R
matrix(c,nrow = 5,ncol = 5)
matrix(b,nrow = 5,ncol = 5)
 a<- matrix(c,nrow = 5,ncol = 5)
b<- matrix(b,nrow = 5,ncol = 5) 

# functons or r
a*b
a/b
a+b
z<-a*b

# Naming of rows and coloumns 
colnames(z)<-c("first","second","third","fourth","fifth")
z
row.names(z)<-c("first","second","third","fourth","fifth")
z

# MATRIX OPERATIONS 
matrix(1:9,byrow = F,nrow = 3)
a<- matrix(1:30,byrow = ,nrow = 5)
a
a[3,3]

a[1:2,5]


a<- 1:30
# binding of matrix 
# cbind = coloumn 
b<-31:3
cbind(a,b)


# traspose of matrix
t(a)


# sum of coloumns 
colSums(a)

a<-1:10
matrix(1:9,byrow = T,nrow = 3)
a<- matrix(1:30,byrow = ,nrow = 5)
b<-1:10
# mean 
rowMeans(a)
colMeans(a)
