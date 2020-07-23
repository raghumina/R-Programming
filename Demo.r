# Practical 1
# K-mean clustring 
# library(rio)                      # for r input and output
library(stats)                      # for stastical data 
library(ggplot2)                    # for data visvualization
library(dplyr)                      # for data manipulation 
library(ggfortify)                  # for data visvualization
library(datasets)
View(iris)
# creating a data frame 
# or we can import a data frame 

# import("File path/file name" )

lengths <- c(12,14,15,13,13,16,19,20,20,17)  # variable creation
codons <- c(3,4,2,3,3,3,4,5,6,4)
orf <- c(2,1,2,2,2,1,1,4,3,2)
gc_con <- c(4,5,6,7,8,9,7,6,4,3)
demo <- data.frame(lengths, codons, orf, gc_con)
?rio
# Dataframe "demo" created 
View(demo)    # to view the data frame 
demo
plot(demo)    # basic scatter plot of demo 

plot(demo$lengths,demo$codons,
     col = "red",                  # color of clusters 
     xlab = "length",              # x axis name 
     ylab = "codons",              # y axis name 
     main = "plot of demo1")       # to creat a specific plot 
                                   # with color, name, other criteria 

x <- demo[1:4]
plot(x)

# to create other plots or graphgs 
# for example a histogram 

hist(demo$orf)


str(demo)                         # to see the structure of the data 

# IT IS NECESSARY TO HAVE ALL DATATYPE AS NUMERICAL 

summary(demo)   # Summary of the data 


# using K- mean cluster on DATA
# k-mean clustring on data can be applied through " kmean() " function 
# k- mean is a unsupervised learning


democluster <- kmeans(demo,2)
democluster
plot(democluster)


democluster4 <- kmeans(demo, centers =2 )

# Show the centres are representative of particular observation in cluster s
democluster4$centers
democluster4$cluster
democluster4$size
democluster4$tot.withinss
ggplot(demo)

# Plot the groups 

autoplot(democluster4, demo, frame = TRUE)
    








# elobow method to determine the optimizable numbre of clusters 

k.max <- 10    # max 10 cluster assumed 
wss <- rep(NA, k.max)
nClust <- list()
for (i in 1:k.max) {
   driveClasses <- kmeans(demo, i)
   wss[i] <- driveClasses$tot.withinss
   nClust[[i]] <- driveClasses$size
}
plot( 1:k.max, wss,
      type = "b", pch = 10,
      xlab = "Number of cluster K ",
      ylab = "Witin total cluster sum: demo")
