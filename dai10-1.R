data<-c(206,216,195,176,193,259,212,226,205,193)
prob<-0.95
n<-length(data)
m<-mean(data)
vr<-var(data)
se<-sqrt(vr/n)

t<-abs(qt((1-prob)/2,n-1))

border_low<-m-t*se
border_upp<-m+t*se

cat(border_low,"<=母平均(μ)<=",border_upp,"\n")
cat("t値=",t,"\n")