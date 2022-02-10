data<-read.delim(
  "_硬化剤の量と強度.txt",
  header=TRUE,
  fileEncoding = "cp932"
)
var_1<-c(data[,1])
var_2<-c(data[,2])

salse.lm <- lm(var_2~var_1,data=data)
exp <- predict(salse.lm)
res <- residuals(salse.lm)
view <- data.frame(data,exp,res)
view