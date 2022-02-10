data<-read.delim("_容量検査.txt",header=TRUE,fileEncoding = "cp932")

prob1<-0.99
prob2<-0.95

n<-length(data$容量)
m<-mean(data$容量)
vr<-var(data$容量)
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
