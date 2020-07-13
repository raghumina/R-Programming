# Factors 
# 
##

# create a data 
(x1 <- 1:3)
(y <- 1:9)

# combine variables 

(df1 <- cbind.data.frame(x1, y))

(typeof(df1$x1))
(typeof(df1$y))     # both are of integer type 

(str(df1))

# AS.FACTOR 

(x2 <- as.factor(c(1:3)))
(y1 <- as.factor(c(1:9)))


(df2 <- cbind.data.frame(x2, y1))