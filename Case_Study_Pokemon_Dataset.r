
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


