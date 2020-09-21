runif(n=100,min = 1,max = 100)
#runif(n = 100)  # so here random number generation will be between 1 to 10 but 
                 # it will generate 1000 random numbers between 1 - 10 

# runif function for random numbers 
# n = range
# min = minimum limit
# max = maximum limit 

# Lets plot a histogram to know the range of the random numbers
random_num_100 <- runif(n=100,min = 1,max = 100)
hist(random_num_100)

# mean of the random numbers 
mean(random_num_100)
sd(random_num_100)   # standard deviation

library("MonteCarlo")
View(snow)
