var_1 <- c(37.1,35.1,35.5,34.9,35.4,37.0,35.0,35.4,35.2,35.7)
var_2 <- c(37.6,35.8,36.4,35.4,36.0,37.3,35.7,36.3,35.9,36.5)
data<-data.frame(var_1,var_2)
plot(
  data,
  main="鼓膜温度と直陽温度の関係",
  xlab="鼓膜温度",
  ylab="直腸温度",
  pch=20,
  col="red",
  cex=2,
  panel.first=grid(8,8)
)

coef<- cor(var_1,var_2)
salse.lm <- lm(var_2~var_1,data=data)
abline(salse.lm)