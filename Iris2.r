View(iris)                        
Iris.file <- iris               
Iris.file$Species <- NULL
View(Iris.file)
result <- kmeans(Iris.file, 3)
result
plot(iris[c("Petal.Length", "Petal.Width")],col = result$cluster)

library(rio)
import("doodle.csv")
