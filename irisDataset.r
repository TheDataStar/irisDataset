
# Loading dataset.
iris <- ("iris.csv")
data(iris)
head(iris)

# Showing dataset dimensions.
dim(iris)

# Summary of iris dataset, provides minimum, maximum, median, mean, Q1, and Q3 of all numerical features.
summary(iris)

boxplot(Sepal.Length ~ Species, data=iris, main="Speal Length of various species", xlab="Species", ylab="Sepal Length", col = c("blue", "green", "red"))

# Data formatted into notched boxplot using Petal Length instead of Sepal Length.
boxplot(Petal.Length ~ Species, data=iris, main="Petal Length", xlab="Species", ylab="Petal Length", notch=TRUE, col =c("blue", "green", "red"))

# Saving plots (this example turns it into a pdf file). To be used in IDE such as Rstudio.
pdf(''iris.pdf'')
boxplot(Petal.Length ~ Species, data=iris, main="Petal Length", xlab="Species", ylab="Petal Length", notch=TRUE, col =c("blue", "green", "red"))
def.off() #returns plot to IDE

# The plot function is used to plot two numerical variables and helps in determining a relationship between them. Does not allow for differentiation between species.
plot(Sepal.Length ~ Sepal.Width, data=iris, xlab="Sepla Length", ylab="Sepal Width", main="Scatterplot of Speal width v. Length")

# Lattice graphics, xyplot function.
install.packages("lattice")
library(lattice)
xyplot(Sepal.Width ~ Sepal.Length, data=iris, groups=Species, auto.key=list(corner=c(0,0), x=0, y=0.85, cex=1.5), cex=1.5, scales=list(cex=1.5))

# compaer and contrast of 2d scatterplot with regression line on plot.
plot(Petal.Length ~ Petal.Width, data=iris, main="Pedal Width v. Length")
abline(lm(Petal.Length ~ Petal.Width, data=iris), col="blue")

# correlation coefficient between variables.
cor(iris$Petal.Width, iris$Petal.Length)

#2d scatterplot comparison with lattice graphics.
xyplot(Petal.Width ~ Petal.Length, data=iris, groups= Species, auto.key=list(corner=c(0,0), x=0, y=0.85, cex=1.5), cex=1.5, scales=list(cex=1.5))
xyplot(Petal.Width ~ Petal.Length, data=iris, groups=Species, auto.key=TRUE)

# Histogram
hist(iris$Petal.Length)
hist(iris$Petal.Length, breaks=12, col="purple")

# Lattice graphics
histogram(iris$Petal.Length, breaks=12, type="count", main="Histogram")

# A density plot function is a variation on the histogram and estimates densities for data.
# the points at the bottom of the graph represents the actual density of the points that relate to the peaks of the graph.
densityplot(iris$Petal.Length)
