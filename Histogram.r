print(" hello ")
Student <- read.csv("C:/Users/ashok/R Data Imports/Student.csv",header = TRUE)
View(Student)
Student
# CREATING HISTOGRAM IN R
hist(Student$Age)
hist(Student$Age, breaks = 10)

# TO CHECK FREQUENCY DENSITY OR TO SPECIFIY THE CRITERIA 
hist(Student$Age, breaks = 10,c(0,10,15,30), freq = TRUE,col = "blue")
hist(Student$Age, breaks = 10,c(0,10,15,30), freq = TRUE,col = "blue",main  = "studet age")

barplot(Student$Experience..Years.)
y <- Student

