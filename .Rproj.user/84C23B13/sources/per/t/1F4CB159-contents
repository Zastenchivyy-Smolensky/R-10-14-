tb1 <- chickwts

tb2 <- subset(tb1$weight,tb1$feed=="soybean")
# ==を２つ使って、feedの中で使いたい餌を指定する方法！！
tb2

# 信頼区間の求めかた
data <- tb2

prob <- 0.95 #信頼度（今回は95%）を設定
n <- length(data) #サンプルのサイズを決定
m <- mean(data) #標本平均を求める
vr <- var(data) #標本分散を求める
se <- sqrt(vr/n) #標本誤差を求める

t <- abs(qt((1-prob)/2,n-1))
#t値の絶対値を求める

border_low <- m-t*se
border_upp <- m+t*se

cat(border_low,"≦母平均(u)≦",border_upp,"\n")
#95%の時の信頼区間
#215.1754 ≦母平均(u)≦ 277.6818 
cat("t値=",t,"\n")
#95%の時のt値
#t値= 2.160369 

prob <- 0.99 #信頼度（今回は99%）を設定
n1 <- length(data) #サンプルのサイズを決定
m1 <- mean(data) #標本平均を求める
vr1 <- var(data) #標本分散を求める
se1 <- sqrt(vr/n) #標本誤差を求める

t1 <- abs(qt((1-prob)/2,n-1))
#t値の絶対値を求める

border_low <- m-t1*se
border_upp <- m+t1*se

cat(border_low,"≦母平均(u)≦",border_upp,"\n")
#99%の時の信頼区間
#202.8512 ≦母平均(u)≦ 290.006 
cat("t1値=",t1,"\n")
#t1値= 3.012276 
