#! /gpfs/software/R-3.6.0/lib64/R/bin/Rscript --vanilla

table1 <- read.csv("/gpfs/home/weicdeng/project/hw1/table1.csv",sep = " ",header = TRUE)
table2 <- read.csv("/gpfs/home/weicdeng/project/hw1/table2.csv",sep = " ",header = TRUE)
table3 <- read.csv("/gpfs/home/weicdeng/project/hw1/table3.csv",sep = " ",header = TRUE)
table4 <- read.csv("/gpfs/home/weicdeng/project/hw1/table4.csv",sep = " ",header = TRUE)
table5 <- read.csv("/gpfs/home/weicdeng/project/hw1/table5.csv",sep = " ",header = TRUE)
table6 <- read.csv("/gpfs/home/weicdeng/project/hw1/table6.csv",sep = " ",header = TRUE)
table7 <- read.csv("/gpfs/home/weicdeng/project/hw1/table7.csv",sep = " ",header = TRUE)
table8 <- read.csv("/gpfs/home/weicdeng/project/hw1/table8.csv",sep = " ",header = TRUE)
table9 <- read.csv("/gpfs/home/weicdeng/project/hw1/table9.csv",sep = " ",header = TRUE)
table10 <- read.csv("/gpfs/home/weicdeng/project/hw1/table10.csv",sep = " ",header = TRUE)
table <- rbind(table1,table2,table3,table4,table5,table6,table7,table8,table9,table10)
a0 <- rbind(mean(table$intercept),quantile(table$intercept,0.25),quantile(table$intercept,0.75))
a1 <- rbind(mean(table$beta1),quantile(table$beta1,0.25),quantile(table$beta1,0.75))
a2 <- rbind(mean(table$beta2),quantile(table$beta2,0.25),quantile(table$beta2,0.75))
a3 <- rbind(mean(table$beta3),quantile(table$beta3,0.25),quantile(table$beta3,0.75))
a4 <- rbind(mean(table$beta4),quantile(table$beta4,0.25),quantile(table$beta4,0.75))
a5 <- rbind(mean(table$beta5),quantile(table$beta5,0.25),quantile(table$beta5,0.75))
b <- cbind(a0,a1,a2,a3,a4,a5)
table_ci <- round(b,5)
row.names(table_ci) <- c("mean","25%","75%")
colnames(table_ci) <- c("intercept", "beta1", "beta2","beta3","beta4","beta5")
write.csv(table_ci,"/gpfs/home/weicdeng/project/hw1/CI.csv")
