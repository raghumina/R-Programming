# COURSE A DATA ANALYTCS USING R 

# DATA FRAMES

# LIST OF DATA FRAMES IN R BY DEFAULT 
data()

# how to view a particular data set 
View(CO2)
View(mtcars)

# lets create our own data set or frames 
# put the values in variables 
Student <-c("Tom","Ben","Tyler","John","Will","Leo","Abhram","Sky","Sam","Scar","Rayan","Roger","William","Timothy","Tyson","Drake","Adom","Aries")
Weight <-c("56","65","45","65","78","76","78","56","87","56","65","65","54","98","50","45","65","76")
Gender <-c("M","M","M","M","M","M","M","M","M","M","M","M","M","M","M","M","M","M")
# CREATE DATAFFRAME USING THIS VALUES 
df <- data.frame(Student,Weight,Gender)
View(df)

# to check number of rows and coloumn 
nrow(df)
ncol(df)

# dimension of data frame 
dim(df)

# summary of the data set or frame
summary(df)

# reading bottom data 
tail(df)

# to access particular data from the data set or frame
df$Student

# Acessing specific data from the table or frame
df[7,3]
df[2,2]

# to acess particular column 
df[,2]

# to access whole table expect a particular coloumn 
df[,-3]

# data frame for just particular set of data 
df[2:3]
df[2:2]
df[1:2]
df[1:1,]

df[["Student"]]
df[["Weight"]]

# using drop command 
df[,1,drop = F]
df[,1,drop = T]

# Subset function 
subset()
subset(df, subset = Gender == "M")
Weight.ordered <- order(df["Weight"])
df[Weight.ordered,]