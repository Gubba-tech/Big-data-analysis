#! /gpfs/software/R-3.6.0/lib64/R/bin/Rscript --vanilla

my_data <- read.csv("/gpfs/home/weicdeng/project/project1_data(1).csv")
fit1 <- lm(y~., data =my_data)
res <- fit1$residuals
intercept <- rep(0,5000)
beta1 <- rep(0,5000)
beta2 <- rep(0,5000)
beta3 <- rep(0,5000)
beta4 <- rep(0,5000)
beta5 <- rep(0,5000)
for(i in 1:5000){
  data1 <- my_data
  choice <- sample(res, size= 100000, replace = T)
  data1$y <- data1$y+choice
  fit_re <- lm(y~., data = data1)
  intercept[i] <- fit_re$coefficients[1]
  beta1[i] <- fit_re$coefficients[2]
  beta2[i] <- fit_re$coefficients[3]
  beta3[i] <- fit_re$coefficients[4]
  beta4[i] <- fit_re$coefficients[5]
  beta5[i] <- fit_re$coefficients[6]
}
table4 <- data.frame(intercept,beta1,beta2,beta3,beta4,beta5)
write.table(table4, 'table4.csv')
