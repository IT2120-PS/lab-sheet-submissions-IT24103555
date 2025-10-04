setwd("C:\\Users\\USER\\Desktop\\IT24103555")
## Exercise 1
## Part i
# Generating random sample of size 25 from Normal(45, 2)
x <- rnorm(25, mean=45, sd=2)

## Part ii
# Hypothesis testing: H0: mu >= 46 vs H1: mu < 46
# Using t-test at 5% level of significance
t.test(x, mu=46, alternative="less")