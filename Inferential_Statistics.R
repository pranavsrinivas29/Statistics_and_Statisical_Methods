#t-test
#One Sample t-test
# Sample data
data <- c(22, 18, 25, 30, 28, 35, 20, 28, 32, 26)

# One-sample t-test (testing if the mean is different from a given value, e.g., 25)
t_test_result <- t.test(data, mu = 25)
print(t_test_result)


#Two sample t-test
# Two samples (e.g., test if two groups have different means)
group1 <- c(22, 18, 25, 30, 28)
group2 <- c(35, 20, 28, 32, 26)

# Two-sample t-test
t_test_result <- t.test(group1, group2)
print(t_test_result)

#################################################################

#ANOVA - Analysis of Variance
# Example with three groups
group1 <- c(30, 32, 28, 25, 29)
group2 <- c(35, 38, 40, 32, 30)
group3 <- c(22, 18, 25, 30, 28)

# Perform ANOVA
anova_result <- aov(c(group1, group2, group3) ~ rep(c("Group1", "Group2", "Group3"), each = 5))
print(summary(anova_result))

#################################################################

# Example with two variables
x <- c(2, 4, 5, 7, 8)
y <- c(10, 15, 12, 20, 18)

# Correlation
correlation <- cor(x, y)
print(paste("Correlation:", correlation))

# Linear regression
regression_model <- lm(y ~ x)
print(summary(regression_model))

#################################################################

# Example with a contingency table
observed <- matrix(c(30, 20, 15, 25), nrow = 2, byrow = TRUE)
colnames(observed) <- c("Group1", "Group2")
rownames(observed) <- c("CategoryA", "CategoryB")

# Chi-square test
chi_square_result <- chisq.test(observed)
print(chi_square_result)

#################################################################
#Logistic regression
# Load the mtcars dataset
data(mtcars)

# Explore the first few rows of the dataset
head(mtcars)

# Create a binary outcome variable (1 if mpg > 20, 0 otherwise)
mtcars$high_mpg <- as.numeric(mtcars$mpg > 20)

# Fit logistic regression model
logistic_model <- glm(high_mpg ~ hp + wt, family = "binomial", data = mtcars)

# Display the summary of the model
summary(logistic_model)

