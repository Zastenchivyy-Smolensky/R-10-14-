boxplot(
  Speed~Run, #y軸~x軸
  morley,
  xlab="速さ",
  ylab="Expt"
)


cat("分散分析")
A<-morley$Speed
B<-morley$Run
anova(lm(A~B))

TukeyHSD(aov(A~B))
#p=0.0004827<0.05なので帰無仮設は棄却,ラット種類によって薬効果に差がある.