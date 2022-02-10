data<-read.delim(
  "_硬化剤の量と強度.txt",
  header=TRUE,
  fileEncoding = "cp932"
)
plot(
  data,
  main="効果剤の量と郷土の関係",
  xlim=c(20,34),
  ylim=c(40,60),
  pch=20,
  cex=2,
  panel.first=grid(8,8)
)
var_1<-c(data[,1])
var_2<-c(data[,2])

salse.lm<-lm(var_2~var_1,data=data)
abline(salse.lm)
summary(salse.lm)

view