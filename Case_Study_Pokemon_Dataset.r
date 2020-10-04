
# Case study 
# here we will use pokemon data set 
# we will apply all skills we learned till now 


pokemon <- read.csv("C:/workspace/R-Programming/pokemon.csv")
View(pokemon)

nrow(pokemon)   # to know the number ofo rows 
ncol(pokemon)

# tabulation of categorical coloumns

table(pokemon$is_legendary)
table(pokemon$generation)
table(pokemon$type1)

# min-max hp

min(pokemon$hp)
max(pokemon$hp)

min(pokemon$speed)
max(pokemon$speed)

# checking missing values
is.na(pokemon$abilities)
is.na(pokemon$is_legendary)
is.na(pokemon$type2)

sum(is.na(pokemon$type2))
sum(is.na(pokemon$percentage_male))


# Reanaming coloumns 

colnames(pokemon)[colnames(pokemon)] == "type1" <- primary_type
View(pokemon)


#------------------------------------------------------------------------------------------------#

library(dplyr)

pokemon %>% filter(pokemon$type1=="grass") -> grass_pokemon
grass_pokemon


min(grass_pokemon$speed)  # 10
max(grass_pokemon$speed)  # 145

mean(grass_pokemon$sp_attack)  # 74
mean(grass_pokemon$sp_defense) # 69

# Visvualizing stats of grass pokemon
library(ggplot2)

# for hp
ggplot(data= grass_pokemon,aes(x=hp)) + geom_histogram(fill="red",col="black")

# for height 


