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

ggplot(data= diamonds,aes(x=carat, y=price, col=cut)) + geom_point()


# box plot 
# 

ggplot(data= diamonds,aes(x=carat, y=price, fill=clarity)) + geom_boxplot()

# 
# Faceting 
#  With facetting, you can make multi-panel plots and control how the scales of
# one panel relate to the scales of another.

ggplot(data= diamonds,aes(x=clarity, y=carat, fill=cut)) + geom_boxplot() + facet_grid(~cut)


