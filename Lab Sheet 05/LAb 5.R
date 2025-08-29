#q1

getwd()
setwd("C:\\Users\\it24102340\\Desktop\\IT24102340")
Delivery_Times<-read.table("Exercise - Lab 05.txt",header=TRUE,sep=",")
Delivery_Times

#q2
names(Delivery_Times)<-("DeliveryTimes")
attach(Delivery_Times)
histogram <- hist(DeliveryTimes,main="Histogram for Delivery Times",breaks = seq(20,70,length=10),right=FALSE)

#q3
#The distribution is approximately symmetric and bell-shaped, resembling a normal distribution centered around 40 minutes

#q4

cum.freq <- cumsum(freq)

new <- c()
for(i in 1:length(breaks)){
  if(i==1) {
    new[i]=0
  } else {
    new[i]= cum.freq[i-1]
  }
}

plot(breaks, new, type = 'l', main = "Cumulative Frequency Polygon for Delivery Times", 
     xlab = "DeliverTimes", ylab = "Cumulative Frequency", ylim = c(0,max(cum.freq)))
cbind(UpperLimit = breaks, CumulativeFrequency = new)