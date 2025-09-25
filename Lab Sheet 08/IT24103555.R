setwd("C:\\Users\\USER\\Desktop\\IT24103555")
data <- read.table("Exercise - LaptopsWeights.txt", header=TRUE)
fix(data)
attach(data)
View(data)
#1)
pop.mean <- mean(Weights)
pop.sd   <- sd(Weights)

cat("Population mean =", pop.mean, "\n")
cat("Population SD =", pop.sd, "\n")

#2)
samples <- c()
n <- c()

for (i in 1:25){
  s <- sample(Weights, 6, replace = TRUE)
  samples <- cbind(samples, s)
  n <- c(n, paste("s", i))
}

colnames(samples) <- n

s.means <- apply(samples, 2, mean)
s.sds   <- apply(samples, 2, sd)

cat("Sample Means:\n")
print(s.means)

cat("\nSample Standard Deviations:\n")
print(s.sds)

#3)

mean.of.means <- mean(s.means)

sd.of.means <- sd(s.means)

cat("Mean of 25 sample means =", mean.of.means, "\n")
cat("SD of 25 sample means =", sd.of.means, "\n")

# Relationship with true mean and true SD
cat("Population mean =", pop.mean, "\n")
cat("Mean of sample means ≈ Population mean\n\n")

cat("Population SD =", pop.sd, "\n")
cat("SD of sample means =", sd.of.means, "\n")
cat("Population SD / sqrt(n) =", pop.sd/sqrt(6), "\n")
cat("SD of sample means ≈ Population SD / sqrt(n)\n")
