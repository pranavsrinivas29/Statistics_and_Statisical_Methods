#Distributions

#Normal Distribution (Approximation using Central Limit Theorem):
# Set a seed for reproducibility
set.seed(123)

# Generate random data from a normal distribution (mean = 0, sd = 1, n = 50)
normal_data <- rnorm(50, mean = 0, sd = 1)

# Visualize the distribution
hist(normal_data, main = "Normal Distribution", xlab = "Values", col = "lightgreen", border = "black")

# Display density plot
plot(density(normal_data), main = "Density Plot: Normal Distribution", col = "lightgreen", lwd = 2)

# Display summary statistics
summary(normal_data)


#################################################################################

#Uniform Distribution
# Generate random data from a uniform distribution (n = 50)
uniform_data <- runif(50)

# Visualize the distribution
hist(uniform_data, main = "Uniform Distribution", xlab = "Values", col = "lightblue", border = "black")

# Display summary statistics
summary(uniform_data)

#################################################################################
#Binomial Distribution

# Generate random data from a binomial distribution (size = 10, prob = 0.5, n = 50)
binomial_data <- rbinom(50, size = 10, prob = 0.5)

# Visualize the distribution
hist(binomial_data, main = "Binomial Distribution", xlab = "Values", col = "lightcoral", border = "black")

plot(density(binomial_data), main = "Density Plot: Binomial Distribution", col = "lightgreen", lwd = 2)

# Display summary statistics
summary(binomial_data)
#################################################################################

#Poisson Distribution

# Generate random data from a Poisson distribution (lambda = 2, n = 50)
poisson_data <- rpois(50, lambda = 2)

# Visualize the distribution
hist(poisson_data, main = "Poisson Distribution", xlab = "Values", col = "lightpink", border = "black")
plot(density(poisson_data), main = "Density Plot: Poisson Distribution", col = "lightgreen", lwd = 2)


# Display summary statistics
summary(poisson_data)

#################################################################################

#Exponential Distribution
# Generate random data from an exponential distribution (rate = 0.5, n = 50)
exponential_data <- rexp(50, rate = 0.5)

# Visualize the distribution
hist(exponential_data, main = "Exponential Distribution", xlab = "Values", col = "lightyellow", border = "black")
plot(density(exponential_data), main = "Density Plot: Exponential Distribution", col = "lightgreen", lwd = 2)

# Display summary statistics
summary(exponential_data)

#################################################################################

#Geometric Dist
# Generate random data from a geometric distribution (prob = 0.2, n = 50)
geometric_data <- rgeom(50, prob = 0.2)

# Visualize the distribution
hist(geometric_data, main = "Geometric Distribution", xlab = "Values", col = "lightcoral", border = "black")
plot(density(geometric_data), main = "Density Plot: Geometric Distribution", col = "lightgreen", lwd = 2)

# Display summary statistics
summary(geometric_data)

#################################################################################
#Gamma Distribution
# Generate random data from a gamma distribution (shape = 2, rate = 1, n = 50)
gamma_data <- rgamma(50, shape = 2, rate = 1)

# Visualize the distribution
hist(gamma_data, main = "Gamma Distribution", xlab = "Values", col = "lightcyan", border = "black")

# Display summary statistics
summary(gamma_data)
