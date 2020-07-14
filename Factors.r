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


#########################################################################################################


T <- 1:10     # form 1 to 10 
print(T)


t1 <- 10:1   # from 10 to 1 
print(t1)

# seq operator helps the varialbe run in a sequence 
# seq = sequence

?seq


# SPECIFY CHANGE IN VALUES 

(x4 <- seq(30, 0, by = -3))



(x5 <- seq(0, 30, by = 3))


# c = combine or concate 
# ENTer multiple values with c 

(x5 <- c(1,2,4,6,8,09))
print(x5)


# scan = read data live 
# from the user 

x6 <- scan()















