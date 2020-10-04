# Data visvualization

library(ggplot2)
View(diamonds)
?diamonds

# Histogram 
# 
ggplot(data= diamonds,aes(x=price)) + geom_histogram()

# to fill a specific color in the histogram
ggplot(data= diamonds,aes(x=price)) + geom_histogram(fill= "green")

# to make the hiatogram boundry red we use col attribute  
ggplot(data= diamonds,aes(x=price)) + geom_histogram(fill="green",col="red")


# Bar plot 

ggplot(data= diamonds,aes(x=cut)) + geom_bar(fill="red", col="blue")

ggplot(data= diamonds,aes(x=cut, fill= cut)) + geom_bar()


# Scatter plot 

# to make comparision between two numerical values 

ggplot(data= diamonds,aes(x=carat, y=price)) + geom_point()


