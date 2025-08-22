
setwd("C:\\Users\\it24102340\\Desktop\\IT24102340")
getwd()
branch_data <- read.csv("Exercise.txt",header = TRUE)
head(branch_data)


#Q2
str(branch_data)
 #Q#
boxplot(branch_data$Sales_X1,
        main = "sales Distribution",
        outliine = "sales",
        col="green")

#Q4
summary(branch_data$Advertising_X2)
fivenum(branch_data$Advertising_X2)
IQR(branch_data$Advertising_X2)

#Q5
find_outlier <- function(x){
  Q1 <- quantile(x,0.25)
  Q3 <- quantile(x,0.75)
  IQR_val <- Q3 - Q1
  lower <-Q1-1.5 *IQR_val
  upper <- Q3+1.5*IQR_val
  outlier <- x[x<lower | x>upper]
  return(outlier)
  
                 
  
}
find_outlier(branch_data$Years_X3)