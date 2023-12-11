# Sample data (replace with your own data)
sample_scores <- c(65, 72, 68, 75, 71, 70, 73, 69, 74, 68)

# Hypotheses
null_hypothesis <- 70
alternative_hypothesis <- "two.sided"

# Perform one-sample t-test
t_test_result <- t.test(sample_scores, mu = null_hypothesis, alternative = alternative_hypothesis)

# Display the results
cat("Test Statistic:", t_test_result$statistic, "\n")
cat("P-value:", t_test_result$p.value, "\n")

# Make a decision
if (t_test_result$p.value < 0.05) {
  cat("Reject the null hypothesis. There is significant evidence of a difference.\n")
} else {
  cat("Fail to reject the null hypothesis. There is not enough evidence of a difference.\n")
}
##############################################################################################
# Create a contingency table (replace with your own data)
data <- matrix(c(30, 20, 15, 25), nrow = 2)

# Perform chi-square test for independence
chi_square_result <- chisq.test(data)

# Display the results
cat("Chi-Square Statistic:", chi_square_result$statistic, "\n")
cat("P-value:", chi_square_result$p.value, "\n")

# Make a decision
if (chi_square_result$p.value < 0.05) {
  cat("Reject the null hypothesis. There is significant evidence of an association.\n")
} else {
  cat("Fail to reject the null hypothesis. There is not enough evidence of an association.\n")
}
