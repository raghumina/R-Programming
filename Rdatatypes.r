# COURSE A DATA ANALYTCS USING R 

# DATA FRAMES

# LIST OF DATA FRAMES IN R BY DEFAULT 
data()

# how to view a particular data set 
View(CO2)
View(mtcars)

# lets create our own data set or frames 
Student <-c("Tom","Ben","Tyler","John","Will","Leo","Abhram","Sky","Sam","Scar","Rayan","Roger","William","Timothy","Tyson","Drake","Adom","Aries")
Weight <-c("56","65","45","65","78","76","78","56","87","56","65","65","54","98","50","45","65","76")
Gender <-c("M","M","M","M","M","M","M","M","M","M","M","M","M","M","M","M","M","M")
# CREATE DATAFFRAME USING THIS VALUES 
df <- data.frame(Student,Weight,Gender)
View(df)
