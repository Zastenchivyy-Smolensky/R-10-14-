data<-read.delim("_体重の変化.txt",header=TRUE,fileEncoding = "cp932")

before<-data$摂取前
after<-data$摂取後
t.test(before,after,paired=TRUE)