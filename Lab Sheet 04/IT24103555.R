# 1.
setwd("C:\\Users\\IT24103555\\Desktop\\IT24103555")
branch_data <- read.csv("Exercise.txt", header=TRUE)
head(branch_data)
str(branch_data)

# 2.
# Branch - Integer (Nominal)
# Sales_X1 - Numeric(Ratio)
# Advertising_X2 - Numeric(Ratio)
# Years_X3 - Integer(Ratio)

# 3.
boxplot(branch_data$Sales_X1, main="Boxplot of Sales", ylab="Sales")

#4.
fivenum(branch_data$Advertising)
IQR(branch_data$Advertising_X2)

#5.

find_outliers <- function(x) {
  Q1 <- quantile(x, 0.25)
  Q3 <- quantile(x, 0.75)
  IQR_value <- Q3 - Q1
  
  lower_bound <- Q1 - 1.5 * IQR_value
  upper_bound <- Q3 + 1.5 * IQR_value
  
  outliers <- x[x < lower_bound | x > upper_bound]
  
  return(outliers)
}

outliers_in_years <- find_outliers(branch_data$years)

print(outliers_in_years)
