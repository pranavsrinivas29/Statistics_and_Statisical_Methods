# Load the necessary library
install.packages("caret")

library(datasets)
library(caret)
library(nnet)  # For multinom function


# Load the data
Dataset<-data("iris")
Dataset

summary(iris)


plot(iris$Petal.Length, iris$Petal.Width, col=iris$Species)
legend("topright", legend=levels(iris$Species), col=1:3, pch=1)

plot(iris$Sepal.Length, iris$Sepal.Width, col=iris$Species)
legend("topright", legend=levels(iris$Species), col=1:3, pch=1)


# Split the data into training and testing sets
set.seed(123)  # For reproducibility
indexes <- createDataPartition(iris$Species, p=0.7, list=FALSE)
train_data <- iris[indexes,]
test_data <- iris[-indexes,]



# Build the logistic regression model using multinomial logistic regression
model <- multinom(Species ~ ., data=train_data)

# Summarize the model
summary(model)


# Evaluate the model
predictions <- predict(model, test_data)
confusionMatrix(predictions, test_data$Species)


# Example of making predictions on new data
new_data <- data.frame(Sepal.Length=c(5.1, 5.9), Sepal.Width=c(3.5, 3.0),
                       Petal.Length=c(1.4, 4.2), Petal.Width=c(0.2, 1.5))
predict(model, new_data)



# Load the necessary library
install.packages("GGally")
library(GGally)

# Open the PDF device
pdf("Multiple_Iris_Plots.pdf", width = 7, height = 5)
# Create a pair plot
ggpairs(iris, aes(color = Species))


# Boxplot for comparing distributions of sepal length among species
boxplot(Sepal.Length ~ Species, data = iris,
        main = "Sepal Length by Species",
        xlab = "Species", ylab = "Sepal Length",
        col = c("lightblue", "lightgreen", "lightpink"))

# Boxplot for comparing distributions of sepal length among species
boxplot(Sepal.Width ~ Species, data = iris,
        main = "Sepal Length by Species",
        xlab = "Species", ylab = "Sepal Length",
        col = c("lightblue", "lightgreen", "lightpink"))

# Load necessary library
library(ggplot2)

# Density plot for petal length colored by species
ggplot(iris, aes(x = Petal.Length, fill = Species)) +
  geom_density(alpha = 0.5) +
  ggtitle("Density Plot of Petal Length by Species")


# Scatter plot with regression line for Sepal.Width and Sepal.Length
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  ggtitle("Scatter Plot with Regression Line: Sepal Width vs. Sepal Length")


# Histogram for petal width
hist(iris$Petal.Width, col = "cyan", main = "Histogram of Petal Width",
     xlab = "Petal Width", breaks = 20)

# Load necessary library
install.packages("corrplot")
library(corrplot)

# Calculate correlation matrix
cor_matrix <- cor(iris[, 1:4])

# Plot the correlation heatmap
corrplot(cor_matrix, method = "circle")
dev.off()
