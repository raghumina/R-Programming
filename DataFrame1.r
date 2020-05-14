 # WORKING ON DATA FRAMES 
data()
View(DNase)
str(DNase)

# Creating my own dataframe

Names <-c ("tom","alan","sumer","tomi","yolo")
Weight <-c ("34","65","65","90","78")
Height <-c ("5.5","5.9","6.0","5.10","6.1")
Gender <-c ("M","M","F","M","F")

# Link all of them
Students<-data.frame(Names,Weight,Height,Gender)


# function on data frame
View(Students)
ncol(Students)
dim(Students)
summary(Students)
head(Students)
plot(Students)
 # for particular data
df$X.Height.
df[,1,drop =  F]
subset(df,subset = Gender == "M")
