data<-read.delim("_採点.txt",header=TRUE,fileEncoding = "cp932")

menu1<-data$当店
menu2<-data$ライバル店[!is.na(data$ライバル店)]
t.test(menu1,menu2,var.equal=TRUE)