# MONTE CARLO SIMULATION 

# SOME IMPORTANT TERMS:
## FUNCTIONS FOR PROBABLITY DISTRUBUTION 
# rnorm: generate random normal varaints with a given mean and standard deviation
# dnorm: evaluvate the normal probablity density 
# pnorm: evaluvate the cumulative distribution function for a normal distribution 
# rpois: generate random poisson variates with given rate 
# poisson: is a discrete probablity distribution that expresses the probablity of a given number
# of events occuring in fix interval of time 

# runif function for random numbers 
# n = range
# min = minimum limit
# max = maximum limit 

runif(n=10000,min = 1,max = 100)
#runif(n = 100)  # so here random number generation will be between 1 to 10 but 
# it will generate 1000 random numbers between 1 - 10 

# Lets plot a histogram to know the range of the random numbers
random_num_100 <- runif(n=100,min = 1,max = 100)
hist(random_num_100)

# mean of the random numbers 
mean(random_num_100)
sd(random_num_100)   # standard deviation

# sd or standard deviation: is measure of amount of variance or dispersion of a set of value
# 

norm_simu <- rnorm(n = 100,mean = 5,  sd = 2)
norm_simu

par(mfrow=c(3,1))   # par function to include nrows and ncoloumns
plot(norm_simu)
hist(norm_simu)
#hist(norm_simu, freq = F)
curve(dnorm(x, mean = 8,sd = 2),from = 0,to = 10, add = T,col = "red")

# Summary statistics
mean(norm_simu)
sd(norm_simu)


# replicate() is like for loop replicate the process for given n times 
norm_sim_all <- replicate(n = 4, rnorm(n = 100, mean = 5, sd = 2))
print(norm_sim_all)

par(mfrow=c(2,2))
apply(X = norm_sim_all,MARGIN = 2, FUN = hist)
apply(X = norm_sim_all,MARGIN = 2, FUN = mean)
apply(X = norm_sim_all,MARGIN = 2, FUN = sd)

# apply is a r function which works like for or while loop in r 
# it is use in r to decrease the codelines





# a new monte carlo problem 
# The great spinner of probability!

#In this game landing on 'yellow' you gain 1 point, 'red' you lose 1 point and 'blue' you gain 2 points.
#We can easily calculate the expectation: 
#  E(\text{spinner}) = 1/2 \cdot 1 + 1/4 \cdot -1 + 1/4 \cdot 2 = 0.75E(spinner)=1/2???1+1/4??????1+1/4???2=0.75
#This could have been calculated with a Monte Carlo simulation, but the hand calculation is really easy.
#Let's ask a trickier question "After 10 spins what is the probability that you'll have less then 0 points?"
#There are methods to analytically solve this type of problem,
#but by the time they are even explained we could have already written our simulation!

#To solve this with a Monte Carlo simulation we're going to sample from our Spinner 10 times,
#and return 1 if we're below 0 other wise we'll return 0. We'll repeat this 100,000 times to see how often it happens!


runs <- 100000
#simulates on game of 10 spins, returns whether the sum of all the spins is < 1
play.game <- function(){
  results <- sample(c(1,1,-1,2),10,replace=T)
  return(sum(results) < 0)
}
mc.prob <- sum(replicate(runs,play.game()))/runs
print(mc.prob)


