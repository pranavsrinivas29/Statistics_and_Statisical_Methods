# Load the dataset
data("AirPassengers")

# Print the first few rows of the dataset
head(AirPassengers)

pdf("Regression_AirPassengers_Plots.pdf", width = 7, height = 5)
# Plot the time series
plot(AirPassengers, main="Monthly Airline Passengers 1949-1960",
     xlab="Year", ylab="Number of Passengers", col="blue")


# Decompose the time series into seasonal, trend, and irregular components
decomp <- decompose(AirPassengers)

# Plot the decomposed components
plot(decomp)


# Install and load the tseries package for the adf.test function
if (!require(tseries)) install.packages("tseries", dependencies = TRUE)
library(tseries)

# Perform the Augmented Dickey-Fuller Test
adf.test(AirPassengers, alternative = "stationary")

install.packages("forecast")
library(forecast)

# Automatically fit an ARIMA model
fit <- auto.arima(AirPassengers)

# Summarize the model
summary(fit)

# Forecast future values
forecast <- forecast(fit, h=12)  # Forecast the next 12 months

# Plot the forecast
plot(forecast)


# Check residuals
acf_results<-acf(residuals(fit), main="ACF of Residuals")
acf_results


hist(residuals(fit), breaks=30, main="Histogram of Residuals")



Box.test(residuals(fit), lag=log(length(residuals(fit))), type="Ljung-Box")

# Assuming 'h' is the size of the holdout sample
train <- window(AirPassengers, end=c(1958,12))
test <- window(AirPassengers, start=1959)
fit <- auto.arima(train)
forecasts <- forecast(fit, h=length(test))

# Plot forecasts against the actual series
plot(forecasts)
lines(test, col='red')

accuracy(forecasts, test)
dev.off()
