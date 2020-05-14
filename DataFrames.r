# CREATION OF DATA FRAMES IN R 

a<-1:10
b<-1:10
dataframe1<-data.frame(a,b)
dataframe1
x<-dataframe1

# common functions related to data frames

# "ncol" returns the  number of column 
ncol(x)

# "nrow" returns the number of rows 
nrow(x)

# "dim" returns the dimension of the data frame
dim(x)

 # "names" return the names of coloumn 
names(x)

# "rownames" return the name of rows in data frame 
rownames(x)

# "head" return first few rows of data frame
head(x)

# "tail" returns the last few rows of data frames
tail(x)

seq(x)
