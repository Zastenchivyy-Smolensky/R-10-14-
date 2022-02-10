data<-read.delim(
  "_清涼飲料水売上.txt",
  header=TRUE,
  fileEncoding = "cp932"
)
plot(
  data,
  main="硬貨剤の量と強度と関係",
  xlim=c(22,40),
  ylim=c(40,440),
  pch=20,
  col="red",
  cex=1,
  panel.first=grid(8,8)
)
var_1<-c(data[,1])
var_2<-c(data[,2])

salse.lm<-lm(var_2~var_1,data=data)
abline(salse.lm)
summary(salse.lm)


exp <- predict(salse.lm)
res <- residuals(salse.lm)
res
mean(res)

View <- data.frame(data,exp,res)
View
