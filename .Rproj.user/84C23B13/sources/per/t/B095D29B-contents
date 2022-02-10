data <- morley

data1<-data[data$Expt=="1",]#Exotが1
data2<-data[data$Expt=="2",]#Exptが2
data3<-data[data$Expt=="3",]#Exptが3
data4<-data[data$Expt=="4",]#Exptが4
data5<-data[data$Expt=="5",]#Exptが5

spdata1<-data1$Speed#Exptが1,Speedのみデータ
spdata2<-data2$Speed#Exptが2,Speedのみデータ
spdata3<-data3$Speed#Exptが3,Speedのみデータ
spdata4<-data4$Speed#Exptが4,Speedのみデータ
spdata5<-data5$Speed#Exptが5,Speedのみデータ

a <- length(spdata1)#長さ,個数を返す
b <- length(spdata2)
c <- length(spdata3)
d <- length(spdata4)
e <- length(spdata5)

#/////////箱ひげ図
boxplot(
  Speed~Expt, #y軸~x軸
  main="光の速度の測定結果",
  data,
  xlab = "factor(Expt)",
  ylab = "Speed"
)
#/////////////////////分散分析
variate <- c(spdata1,spdata2,spdata3,spdata4,spdata5)
sa <- factor(c(rep("Expt1",a),rep("Expt2",b),rep("Expt3",c),rep("Expt4",d),rep("Expt5",e)))
cat("Expt1→平均=",mean(spdata1),"不偏分散=",var(spdata1),"標本標準偏差=",sd(spdata1))
cat("Expt2→平均=",mean(spdata2),"不偏分散=",var(spdata2),"標本標準偏差=",sd(spdata2))
cat("Expt3→平均=",mean(spdata3),"不偏分散=",var(spdata3),"標本標準偏差=",sd(spdata3))
cat("Expt4→平均=",mean(spdata4),"不偏分散=",var(spdata4),"標本標準偏差=",sd(spdata4))
cat("Expt5→平均=",mean(spdata5),"不偏分散=",var(spdata5),"標本標準偏差=",sd(spdata5))
#帰無仮説:各グループの平均が等しい(実験回数にかかわらず,速度は等しい)
#対立仮説:各グループの平均が等しい(実験回数により,速度に差がある)
anova(lm(variate~sa))
summary(aov(variate~sa))
oneway.test(variate~sa,var.equal = TRUE)
#p=0.00311<0.55なので,帰無仮説を棄却(5標本の平均値に差がある)したがって,
#実験毎によい速度に差がある.->対立仮説

#////////////////ターキー法
TukeyHSD(aov(variate~sa))
#4つの群の平均の可能な限りの組み合わせが示され,それぞれのペアについて,平均誤差(diff)
#95%信頼区間の下限(lwr),上限(upr),p値(p adj)
#Expt4-Expt1,Expt5-Expt1について見ると,p値は優位水準0.05よりも小さいことから
#Aとの間に有意差があると判断する事ができる.Expt2,Expt3,Expt4,Expt5の間ではp値は0.05
#よりも大きいため,有意差なしと判断できる.