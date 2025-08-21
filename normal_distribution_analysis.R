
# Load necessary package
set.seed(123)

# Parameters
mu <- 175
sigma <- 10

# 1. Plot the Probability Density Function (PDF)
x <- seq(140, 210, length=1000)
pdf_values <- dnorm(x, mean=mu, sd=sigma)
jpeg("pdf_plot.jpg")
plot(x, pdf_values, type="l", lwd=2, col="blue",
     main="PDF of Normal Distribution (mu=175, sigma=10)",
     xlab="Height (cm)", ylab="Density")
dev.off()

# 2. Calculate Probabilities
# (a) P(X < 165)
p1 <- pnorm(165, mean=mu, sd=sigma)

# (b) P(170 < X < 180)
p2 <- pnorm(180, mean=mu, sd=sigma) - pnorm(170, mean=mu, sd=sigma)

# (c) 90th percentile
q90 <- qnorm(0.90, mean=mu, sd=sigma)

# Save results to a text file
sink("output.txt")
cat("Probability that a male is shorter than 165 cm:", p1, "\n")
cat("Probability that a male is between 170 and 180 cm:", p2, "\n")
cat("Height corresponding to the 90th percentile:", q90, "\n")
sink()

# 3. Simulate Data
sample_data <- rnorm(1000, mean=mu, sd=sigma)

# Histogram with theoretical PDF
jpeg("histogram_overlay.jpg")
hist(sample_data, breaks=30, probability=TRUE, col="lightgray",
     main="Histogram of Sampled Heights with Theoretical PDF",
     xlab="Height (cm)", ylab="Density")
lines(x, pdf_values, col="red", lwd=2)
dev.off()
