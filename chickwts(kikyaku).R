#体重の変化.txtをdataに代入
data <- chickwts
data1 <- subset(data$weight, data$feed=="sunflower")
data2 <- subset(data$weight, data$feed=="casein")
#摂取後の体重をベクトルに代入
mean_m1 <- mean(data1)#摂取前の体重の平均
mean_m2 <- mean(data2)#摂取後の体重の平均
change <- data2-data1#変化量を求める
derom <- sd(change)/sqrt(length(change)) #検定統計量の分母の計算
numer <- mean(change)#検定統計量の分子の計算
st <- numer/derom#検定統計量の実現値を求める
dof <- length(change)-1#自由度を求める

#自由度がサンプルサイズの合計-2のt分布における下側確率0.025のt値を求める
t_low <- qt(0.025,dof)
#自由度がサンプルサイズの合計-2のt分布における上側確率0.025のt値を求める
t_upp <- qt(0.025,dof,lower.tail = FALSE)

curve(dt(x,dof),-3,3)#自由度N-1のt分布のグラフを描く
abline(v=qt(0.025,dof))#下側確率0.025のt値のところにラインを引く
abline(v=qt(0.975,dof))#上側確率0.975のt値のところにラインを引く