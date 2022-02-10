data<-airquality
data
data1<-subset(data$Ozone,data$Month=="5")
data2<-subset(data$Ozone,data$Month=="9")

after1<-data1[!is.na(data1)]
after2<-data2[!is.na(data2)]

t.test(after1,after2,var.equal=TRUE)