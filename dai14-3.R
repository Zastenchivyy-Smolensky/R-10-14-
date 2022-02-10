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

f <- var_2~a*var_1^2+b*var_1+c
obj <- nls(f,start=c(a=0,b=0,c=0))

df<-data.frame(var_1=seq(20,34,length=1000))
yy<-predict(obj,df)
par(new=TRUE)
plot(
  df$var_1,
  yy,
  type = "1",
  col="blue",
  xlim=c(20,34),
  ylim=c(40,60),
  xlab="効果剤の量",
  ylab="強度"
)
