# principal component 

#
wine <- read.table("http://archive.ics.uci.edu/ml/machine-learning-databases/
                   wine/wine.data", sep=",")
View(wine)


# Name the variables
colnames(wine) <- c("Cvs","Alcohol","Malic acid","Ash","Alcalinity of ash",
                    "Magnesium", "Total phenols", "Flavanoids",
                    "Nonflavanoid phenols", "Proanthocyanins",
                    "Color intensity", "Hue",
                    "OD280/OD315 of diluted wines", "Proline")

# The first column corresponds to the classes
wineClasses <- factor(wine$Cvs)

# Use pairs
pairs(wine[,-1], col = wineClasses, upper.panel = NULL, pch = 16, cex = 0.5)
legend("topright", bty = "n", legend = c("Cv1","Cv2","Cv3")
       , pch = 16, col = c("black","red","green"),xpd = T,
       cex = 2, y.intersp = 0.5)



dev.off() # clear the format from the previous plot
winePCA <- prcomp(scale(wine[,-1]))
plot(winePCA$x[,1:2], col = wineClasses)


