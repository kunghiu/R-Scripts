library("foreign")
library(data.table)
library(dplyr)
library(ggplot2)
library(sjPlot)
datt2 <- data.frame(read.spss("D:/帮忙/眼科/neweyedata.sav"))
datt1 <- transform(datt2,
                   Hdif = abs(H - outcome),
                   Sdif = abs(S - outcome),
                   ALgroup = 1+(AL >= 28),
                   ALgroup2 = 1+(AL >= 28))
datt <- transform(datt1,
                  Hgroup = 1+(Hdif > 0.5)+(Hdif > 1),
                  Sgroup = 1+(Sdif > 0.5)+(Sdif > 1))
source("./TTest.R") #,encoding="UTF-8"
g1data <- datt[which(datt$ALgroup==levels(as.factor(datt$ALgroup))[1]),]
g2data <- datt[which(datt$ALgroup==levels(as.factor(datt$ALgroup))[2]),]

table1 <- PairedTTest(c("bfsanguang","afsanguang"), datt,"sanguang bf af")
table2 <- PairedTTest(c("Hdif","Sdif"), g1data,"group1, H VS S")
table3 <- PairedTTest(c("Hdif","Sdif"), g2data,"group2, H VS S")
table5 <- PairedTTest(c("Hdif","Sdif"), datt,"groupall, H VS S")
table4 <- TTest(c("Hdif","Sdif","age","before","bfsanguang","AL","cornea1","cornea2","H","S","outcome","afsanguang"),"ALgroup",datt)
TableView(table1,table2,table3,table5,table4)  #output table


sjt.xtab(datt$ALgroup,datt$Hgroup,
         variableLabels=c("AL group", "Haigis group"),
         showRowPerc=TRUE)

sjt.xtab(datt$ALgroup,datt$Sgroup,
         variableLabels=c("AL group", "SRK/T group"),
         showRowPerc=TRUE)

sjt.xtab(datt$lreye,datt$group)


sjt.xtab(datt$gender,datt$group)
#dattt <- tbl_dt(datt)
#dattt[gender=="female",]

#挑选更改数据
#plot(dattt$H,dattt$outcome,ylim=c(-4,2),xlim=c(-4,2))
#identify(dattt$H,dattt$outcome)

#最终版的总数据
#datt <- data.frame(read.dta("D:/帮忙/眼科/eyedata.dta"))

#source("./TTest.R") #,encoding="UTF-8"



datttwo1 <- data.frame(datt$H,datt$outcome,datt$group,datt$bfsanguang)
datttwo2 <- data.frame(datt$S,datt$outcome,datt$group,datt$afsanguang)
names(datttwo2)<-c("datt.H","datt.outcome","datt.group","datt.bfsanguang")
datttwo <- rbind(datttwo1,datttwo2) 
datttwo$group2 <- factor(rep(1:2,each=68),labels=c("Haigis","SRK/T"))

g1data <- datttwo[datttwo$datt.group=="short",]
g2data <- datttwo[datttwo$datt.group=="long",]




作图



(q <- qplot(datt.outcome,datt.H,data=g1data,size=1.8,shape=factor(group2),color=factor(group2),
            xlim=c(-4,3),ylim=c(-4,3),xlab="实际屈光(D)",ylab=sprintf("目\n标\n屈\n光\n(D)"))
 + geom_abline(intercept = 0, slope =1)
 + scale_size(guide=FALSE)
 + theme_classic()
 + scale_shape(guide = guide_legend(title = "测量方法"))
 + scale_color_discrete(guide = guide_legend(title = "测量方法"))
 + theme(axis.title.y = element_text(angle = 360 ))
)

(q <- qplot(datt.outcome,datt.H,data=g2data,size=1.8,shape=factor(group2),color=factor(group2),
            xlim=c(-4,3),ylim=c(-4,3),xlab="实际屈光(D)",ylab=sprintf("目\n标\n屈\n光\n(D)"))
 + geom_abline(intercept = 0, slope =1)
 + scale_size(guide=FALSE)
 + theme_classic()
 + scale_shape(guide = guide_legend(title = "测量方法"))
 + scale_color_discrete(guide = guide_legend(title = "测量方法"))
 + theme(axis.title.y = element_text(angle = 360 ))
)

(q <- qplot(datt.outcome,datt.H,data=datttwo,size=1.8,shape=factor(group2),color=factor(group2),
            xlim=c(-4,3),ylim=c(-4,3),xlab="实际屈光(D)",ylab=sprintf("目\n标\n屈\n光\n(D)"))
 + geom_abline(intercept = 0, slope =1)
 + scale_size(guide=FALSE)
 + theme_classic()
 + scale_shape(guide = guide_legend(title = "测量方法"))
 + scale_color_discrete(guide = guide_legend(title = "测量方法"))
 + theme(axis.title.y = element_text(angle = 360 ))
)

(q <- qplot(outcome,H,data=datt,size=1.8,shape=group,color=group,
            xlim=c(-4,3),ylim=c(-4,3),xlab="实际屈光(D)",ylab=sprintf("目\n标\n屈\n光\n(D)"))
 + geom_abline(intercept = 0, slope =1)
 + scale_size(guide=FALSE)
 + theme_classic()
 + scale_shape(guide = guide_legend(title = "眼轴长度"))
 + scale_color_discrete(guide = guide_legend(title = "眼轴长度"))
 + theme(axis.title.y = element_text(angle = 360 ))
)

(q <- qplot(outcome,S,data=datt,size=1.8,shape=group,color=group,
            xlim=c(-4,3),ylim=c(-4,3),xlab="实际屈光(D)",ylab=sprintf("目\n标\n屈\n光\n(D)"))
 + geom_abline(intercept = 0, slope =1)
 + scale_size(guide=FALSE)
 + theme_classic()
 + scale_shape(guide = guide_legend(title = "眼轴长度"))
 + scale_color_discrete(guide = guide_legend(title = "眼轴长度"))
 + theme(axis.title.y = element_text(angle = 360 ))
 )

datt <- datt[-(17),]
datt <- datt[-(16),]
纯黑色两条线
(q3 <- qplot(outcome,H,data=datt,size=1.5,xlim=c(-5,3),ylim=c(-5,3),xlab="实际屈光",ylab="Haigis预测屈光") + geom_smooth(method=lm,size=1)+geom_abline(intercept = 0, slope =1)+geom_text(aes(-0.95,-1.9,label=("(-1.57,-1.57)")),size=5)+ theme_classic())
summary(fit <- lm(datt$H~datt$outcome))
-1.57
(q3 <- qplot(outcome,S,data=datt,size=1.5,xlim=c(-5,3),ylim=c(-5,3),xlab="实际屈光",ylab="SRK/T预测屈光") + geom_smooth(method=lm,size=1)+geom_abline(intercept = 0, slope =1)+geom_text(aes(-0.5,-2.05,label=("(-1.00,-1.00)")),size=5)+ theme_classic())
summary(fit2 <- lm(datt$S~datt$outcome))
-1.00
------------------------------------------------------
  
datttwo <- tbl_dt(datttwo)

datttwo <- mutate(datttwo,
       diff=abs(datt.H - datt.outcome))


(q <- qplot(datt.outcome,diff,data=datttwo,size=1.8,shape=group2,color=group2,
            xlab="实际屈光(D)",ylab=sprintf("预\n测\n误\n差\n(D)"))
 + scale_size(guide=FALSE)
 + theme_classic()
 + geom_smooth(size=1.5)
 + scale_shape(guide = guide_legend(title = "测量方法"))
 + scale_color_discrete(guide = guide_legend(title = "测量方法"))
 + theme(axis.title.y = element_text(angle = 360 ))
)
(q <- qplot(datt.outcome,diff,data=datttwo,size=1.8,shape=datt.group,color=datt.group,
            xlab="实际屈光(D)",ylab=sprintf("预\n测\n误\n差\n(D)"))
 + facet_grid(.~group2)
 + scale_size(guide=FALSE)
 + theme_classic()
 + geom_smooth(size=1.5)
 + scale_shape(guide = guide_legend(title = "测量方法"))
 + scale_color_discrete(guide = guide_legend(title = "测量方法"))
 + theme(axis.title.y = element_text(angle = 360 ))
)
