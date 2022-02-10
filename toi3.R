data<-chickwts

prob1<-0.99
prob2<-0.95
data2<-subset(data$weight,data$feed=="sunflower")
data2
n<-length(data2)
m<-mean(data2)
vr<-var(data2)
se<-sqrt(vr/n)

t<-abs(qt((1-prob1)/2,n-1))
border_low<-m-t*se
border_upp<-m+t*se
cat("99%信頼区間\n")
cat(border_low,"<=母平均(μ)<=",border_upp,"\n")
cat("t値=",t,"\n")

t<-abs(qt((1-prob2)/2,n-1))
border_low<-m-t*se
border_upp<-m+t*se

cat("95%信頼区間\n")
cat(border_low,"<=母平均(μ)<=",border_upp,"\n")
cat("t値=",t,"\n")
