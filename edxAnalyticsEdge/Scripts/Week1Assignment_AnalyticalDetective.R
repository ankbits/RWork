mvt=read.csv("mvtWeek1.csv",header = T,stringsAsFactors = T)
nrow(mvt)
max(mvt$ID)
min(mvt$Beat)
summary(mvt)
length(which(mvt$Arrest))
match("ALLEY",mvt$LocationDescription)
table(mvt$LocationDescription)
summary(mvt$LocationDescription)

DateConvert = as.Date(strptime(mvt$Date, "%m/%d/%y %H:%M"))
median(DateConvert)
class(mvt$Date)
mvt$Month = months(DateConvert)
mvt$Weekday = weekdays(DateConvert)
mvt$Date = DateConvert


hist(mvt$Date, breaks=100)
boxplot(mvt$Date ~ mvt$Arrest)
table(mvt$Arrest,mvt$Year)
sort(table(mvt$LocationDescription))
Top5=subset(mvt,LocationDescription=="PARKING LOT/GARAGE(NON.RESID.)" 
            | LocationDescription=="STREET" 
            | LocationDescription=="ALLEY" 
            | LocationDescription=="DRIVEWAY - RESIDENTIAL" 
            | LocationDescription=="GAS STATION")
nrow(Top5)      
table(Top5$LocationDescription,Top5$Arrest)
table(Top5$Weekday,Top5$LocationDescription)
table(Top5$LocationDescription, Top5$Weekday)
1-18/24
  