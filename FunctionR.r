# FUNCTIONS 

# how to create a user defined functions in R

# a example :

celsius_to_kelvin <- function(temp_C) {
  temp_K <- temp_C + 273.15
  return(temp_K)
}

# test a udf (user defined function )
celsius_to_kelvin(300)


# another example 
say.name<-function()
{
  print("tommy")
}

say.name()

# user defined function with multiparameter
say.name<-function(a1,a2,a3)
{
  print(sprintf("HELLO %s %s %s",a1,a2,a3))
}

say.name("xyz","qwe","towo")




# DO CALL FUNCTION 
mean.it<-function(x ,func = mean)
{
  do.call(func, args = list(x))
}

mean.it(100:10000)
mean.it(100:1000,sum)
mean.it(10:100)



  