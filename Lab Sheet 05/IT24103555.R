setwd("C:\\Users\\USER\\Desktop\\IT24103555")
##01)

Delivery_Times<-read.table("Exercise - Lab 05.txt", header=TRUE)

##02)
histogram<-hist(Delivery_Times$Delivery,
                main="Histogram of Delivery Times",
                xlab = "Delivery Time",
                ylab = "Frequency",
                breaks = seq(20, 70,length = 10),
                right = FALSE)

##03)
##The distribution is roughly symmetric with a peak around 40 minutes, but the right side is a little higher than the left.

##04)
breaks <- round(histogram$breaks)
freq <- histogram$counts

cum_freq <- cumsum(freq)

new <- c()

for(i in 1:length(breaks)) {
  if(i == 1) {
    new[i] = 0
  } else {
    new[i] = cum_freq[i-1]
  }
}

plot(breaks, new, type = "l", main = "Cumulative Frequency Polygon (Ogive) for Delivery Times", xlab = "Delivery Time (minutes) - Upper Class Limit", ylab = "Cumulative Frequency", ylim = c(0, max(new)))

