#Descriptive Statistics
data <- c(34,11,27,90,46,78,39,44,67,5,34,78,78)
meanD<-mean(data)

medianD<-median(data)

# Mode (using a custom function)
get_mode <- function(x) {
  ux <- unique(x)  # Get unique values in the input vector
  ux[which.max(tabulate(match(x, ux)))]  # Find the mode
}

modeD <- get_mode(data)  # Call the custom function with your data
print(paste("Mode:", mode_value))  # Print the result

sdD<-sd(data)

varD<-var(data)

#checking if calc of std dev is same as root val of var
sqrt(varD)==sdD


# Create a histogram
hist(data, main = "Histogram", xlab = "Values", ylab = "Frequency", col = "lightblue", border = "black")

# Create a boxplot
boxplot(data, main = "Boxplot", ylab = "Values", col = "lightgreen", border = "black")
