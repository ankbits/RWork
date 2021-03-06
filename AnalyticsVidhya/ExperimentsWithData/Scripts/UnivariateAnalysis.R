train<-read.csv("train.csv")
test<-read.csv("test.csv")
train_cont<-subset(train,select = c(ID,Age,Hours.Per.Week))
train_cat<-subset(train,select = -c(ID,Age,Hours.Per.Week))
summary(train_cont)
install.packages("pastecs")
library(pastecs)
options(scipen = 100)
options(digits = 2)
stat.desc(train_cont)
apply(train_cat,2,function(x){length(unique(x))})
table(train_cat$Race)
as.matrix((prop.table(table(train_cat$Race))))
head(sort(table(train_cat$Native.Country),decreasing = T),10)
head(round(sort(prop.table(table(train_cat$Native.Country)),decreasing = T),6),20)
summary(train_cont$Age)
