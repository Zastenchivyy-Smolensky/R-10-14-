data<-chickwts
data1 <- subset(data$weight, data$feed=="linseed")
data2 <- subset(data$weight, data$feed=="casein")
data3 <- data1[!is.na(data1)]#NA(欠損値)を抜いている.
data4 <- data2[!is.na(data2)]#NA(欠損値)を抜いた値である
#当分散の場合
t.test(data3,data4,var.equal=TRUE)
#不当分散の場合
t.test(data3,data4,var.equal = FALSE)

#t(統計検定量の実現値),df(t分布の自由度),p-value:p値
#mean of x , mean of y (対象となるデータの標本平均)
cat(0.0002606<0.05)
data<-chickwts
