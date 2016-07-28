CPS=read.csv("CPSData.csv",header = T)
sort(table(CPS$Industry),decreasing = T)
sort(table(CPS$State),decreasing = T)
table(CPS$Citizenship)
prop.table(table(CPS$Citizenship))
0.05386818+0.88832615
table(CPS$Race,CPS$Hispanic)
summary(CPS)

table(CPS$Region, is.na(CPS$Married))
table(CPS$Sex, is.na(CPS$Married))
table(CPS$Age, is.na(CPS$Married))
table(CPS$Citizenship, is.na(CPS$Married))

table(CPS$State, is.na(CPS$MetroAreaCode))
sort(tapply( is.na(CPS$MetroAreaCode),CPS$State,mean),decreasing = T)
