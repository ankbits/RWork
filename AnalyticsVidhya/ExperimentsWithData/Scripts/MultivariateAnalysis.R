boxplot(train$Sex,train$Hours.Per.Week,par(mar = c(12, 5, 4, 2)+ 0.1))
boxplot(train$Hours.Per.Week~train$Sex,main="BoxPlot by Gender",ylab="Hours per Week",las=1,xlab="Gender")
summary(train$Hours.Per.Week[train$Sex=='Male'])
summary(train$Hours.Per.Week[train$Sex=='Female'])
install.packages("gmodels")
library(gmodels)
installed.packages()
install.packages("ggplot2")
library(ggplot2)
CrossTable(train$Sex,train$Income.Group)


ggplot(train,aes(Sex, fill=Income.Group)) + geom_bar()+labs(title="Stacked Bar Chart", x="Sex",y="Count")+theme_bw()
ggplot(train,aes(Age, Hours.Per.Week)) + geom_point()
table(is.na(train))
colSums(is.na(test))
library(mlr)
imputed_data=impute(train,classes=list(factor=imputeMode()))
imputed_data
str(imputed_data)

train$Income.Group=ifelse(train$Income.Group=="<=50K",0,1)
train$bins=cut(train$Hours.Per.Week, breaks=c(0,35,40,45,50,55,100), labels=c("0-35", "36-40", "41-45", "46-50","51-55","56-100"))
train$Income.Group=ifelse(train$Income.Group=="<=50K",0,1)

train=train[,-c(1)]
install.packages("rpart")
library(rpart)
set.seed(333)
