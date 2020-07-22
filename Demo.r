# Practical 1
# K-mean clustring 


# creating a data frame 
lengths <- c(12,14,15,13,13,16,19,20,20,17)
codons <- c(3,4,2,3,3,3,4,5,6,4)
orf <- c(2,1,2,2,2,1,1,4,3,2)
gc_con <- c(4,5,6,7,8,9,7,6,4,3)
demo <- data.frame(lengths, codons, orf, gc_con)

# Dataframe "demo" created 
View(demo)    # to view the data frame 

plot(demo)    # basic scatter plot of demo 

plot(demo$lengths,demo$codons, col = "red", xlab = "length",
     ylab = "codons",
     main = "plot of demo1")       # to creat aspecific plot 
                                   # with color, name, other criteria 

# to create other plots or graphgs 
# for example a histogram 

hist(demo$orf,demo$gc_con, col = "blue ")

