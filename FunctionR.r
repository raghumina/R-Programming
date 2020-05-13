# FUNCTIONS 

# how to create a user defined functions in R

# a example :

celsius_to_kelvin <- function(temp_C) {
  temp_K <- temp_C + 273.15
  return(temp_K)
}

# test a udf (user defined function )
celsius_to_kelvin(300)
