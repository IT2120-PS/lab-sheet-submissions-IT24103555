setwd("C:\\Users\\USER\\Desktop\\IT24103555(4)")

#Part 1
#Here, the vending machine owner claims that customers choose the four snack types (A, B, C, D) with equal probability.
#That means the probability for each snack type would be 0.25.
#So the null hypothesis will be: the probability for each snack type is 0.25.
#The alternative hypothesis will be: at least one snack type has a probability different from 0.25.

#Part 2
#To conduct the test, observed counts will be stored in a variable called "observed"
#And probabilities for each snack type will be stored in a variable called "prob"
observed <- c(120, 95, 85, 100)
prob <- c(0.25, 0.25, 0.25, 0.25)
#To conduct the test, the "chisq.test" command will be used as follows:
chisq.test(x = observed, p = prob)

# Part 3
# Consider 5% level of significance for the test.
# Rejection Region: If the p-value for the test is less than 0.05, 
# reject the null hypothesis at 5% level of significance.
# P-value for the test is 0.08966.
# Conclusion: Since the p-value (0.08966) is greater than 0.05, 
# do not reject the null hypothesis at 5% level of significance.
# Therefore, we can conclude that the probability for each snack type is the same (0.25).