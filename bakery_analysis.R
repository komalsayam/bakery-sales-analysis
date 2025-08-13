
cat("\n Croissants \n")
croissants_x <- 0:3
croissants_p <- c(0.1, 0.3, 0.4, 0.2)

croissants_mean <- sum(croissants_x * croissants_p)
cat("Mean:", croissants_mean, "\n")

croissants_variance <- sum((croissants_x - croissants_mean)^2 * croissants_p)
cat("Variance:", croissants_variance, "\n")

croissants_sd <- sqrt(croissants_variance)
cat("Standard Deviation:", croissants_sd, "\n")


cat("\nMuffins \n")
muffins_x <- 0:3
muffins_p <- c(0.2, 0.4, 0.3, 0.1)

muffins_mean <- sum(muffins_x * muffins_p)
cat("Mean:", muffins_mean, "\n")

muffins_variance <- sum((muffins_x - muffins_mean)^2 * muffins_p)
cat("Variance:", muffins_variance, "\n")

muffins_sd <- sqrt(muffins_variance)
cat("Standard Deviation:", muffins_sd, "\n")


cat("\n Donuts\n")
donuts_x <- 0:3
donuts_p <- c(0.3, 0.4, 0.2, 0.1)

donuts_mean <- sum(donuts_x * donuts_p)
cat("Mean:", donuts_mean, "\n")

donuts_variance <- sum((donuts_x - donuts_mean)^2 * donuts_p)
cat("Variance:", donuts_variance, "\n")

donuts_sd <- sqrt(donuts_variance)
cat("Standard Deviation:", donuts_sd, "\n")

par(mfrow = c(1, 3))

barplot(croissants_p, names.arg = croissants_x, col = "skyblue", 
        main = "Croissants", xlab = "Pastries Sold", ylab = "Probability")

barplot(muffins_p, names.arg = muffins_x, col = "lightgreen", 
        main = "Muffins", xlab = "Pastries Sold", ylab = "Probability")

barplot(donuts_p, names.arg = donuts_x, col = "pink", 
        main = "Donuts", xlab = "Pastries Sold", ylab = "Probability")
