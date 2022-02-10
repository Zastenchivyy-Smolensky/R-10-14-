data<-chickwts
menu1 <-subset(data$weight,data$feed=="sunflower")
menu2 <-subset(data$weight,data$feed=="casein")
t.test(menu1,menu2,paired=TRUE)

#t:統計検定量の実現値,df:t分布の自由度,p-value:p値
#mean of the differences :2つの群の平均値の差
