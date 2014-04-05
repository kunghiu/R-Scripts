library("foreign")
datt2 <- data.frame(read.spss("D:/帮忙/眼科/eyedata.sav"))
datt1 <- transform(datt2,
                  Hdif = abs(H - outcome),
                  Sdif = abs(S - outcome),
                  ALgroup = 1+(AL >= 28),
                  ALgroup2 = 1+(AL >= 28))
datt <- transform(datt1,
                  Hgroup = 1+(Hdif > 0.5)+(Hdif > 1),
                  Sgroup = 1+(Sdif > 0.5)+(Sdif > 1))
write.dta(redatt, "D:/帮忙/眼科/eyedatarevised.dta")
write.dta(datt, "D:/帮忙/眼科/eyedata.dta")
最终版的总数据
datt <- data.frame(read.dta("D:/帮忙/眼科/eyedata.dta"))

dattshort <- dattt[group=="short",]
plot(dattshort$S,dattshort$outcome,ylim=c(-8,2),xlim=c(-8,2))
identify(dattshort$S,dattshort$outcome)





redatt <- edit(datt2)
source("./TTest.R") #,encoding="UTF-8"
datttwo1 <- data.frame(datt$H,datt$outcome,datt$group,datt$bfsanguang)
datttwo2 <- data.frame(datt$S,datt$outcome,datt$group,datt$afsanguang)
names(datttwo2)<-c("datt.H","datt.outcome","datt.group","datt.bfsanguang")
datttwo <- rbind(datttwo1,datttwo2) 
datttwo$group2 <- factor(rep(1:2,each=68),labels=c("Haigis","SRK/T"))

g1data <- datttwo[datttwo$datt.group=="short",]
g2data <- datttwo[datttwo$datt.group=="long",]
barplot(datt$datt.bfsanguang,datt$group2)
write.dta(datt,file="./final.dta")
(q1 <- qplot(datt.outcome,datt.H,data=datttwo,shape=factor(datttwo$group),size=1.5,color=factor(datttwo$group),xlim=c(-5,3),ylim=c(-5,3),xlab="实际屈光",ylab="预测屈光") 
 + scale_shape_manual(values=c("1" = 1,"2" = 17),guide = guide_legend(title = "预测方法"))
 +scale_color_manual(values = c("1" = "blue","2" = "red"),guide = guide_legend(title = "预测方法"))+geom_abline(intercept = 0, slope =1)+ theme_classic())
qplot(datt.bfsanguang,data=datttwo)+facet_grid(datt.bfsanguang~datttwo$group2)

datt$ALgroup <- factor(datt$ALgroup, levels=c(1,2),labels=c("<28",">=28"))
datt$Hgroup <- factor(datt$Hgroup, levels=c(1,2,3),labels=c("<=0.5","0.5<Hdif<=1",">1"))
datt$Sgroup <- factor(datt$Sgroup, levels=c(1,2,3),labels=c("<=0.5","0.5<Hdif<=1",">1"))

g1data <- datt[which(datt$ALgroup==levels(as.factor(datt$ALgroup))[1]),]
g2data <- datt[which(datt$ALgroup==levels(as.factor(datt$ALgroup))[2]),]

table1 <- PairedTTest(c("bfsanguang","afsanguang"), datt,"sanguang bf af")
table2 <- PairedTTest(c("Hdif","Sdif"), g1data,"group1, H VS S")
table3 <- PairedTTest(c("Hdif","Sdif"), g2data,"group2, H VS S")
两组间进行比较：
datt1 <- transform(redatt,
                   Hdif = abs(H - outcome),
                   Sdif = abs(S - outcome),
                   ALgroup = 1+(AL >= 28),
                   ALgroup2 = 1+(AL >= 28))
datt <- transform(datt1,
                  Hgroup = 1+(Hdif > 0.5)+(Hdif > 1),
                  Sgroup = 1+(Sdif > 0.5)+(Sdif > 1))

table4 <- TTest(c("Hdif","Sdif","age","before","bfsanguang","AL","cornea1","cornea2","H","S","outcome","afsanguang"),"ALgroup",datt)
TableView(table4)
H与S之间比较：
g1data <- datt[which(datt$ALgroup==levels(as.factor(datt$ALgroup))[1]),]
g2data <- datt[which(datt$ALgroup==levels(as.factor(datt$ALgroup))[2]),]
table2 <- PairedTTest(c("Hdif","Sdif"), g1data,"group1, H VS S")
table3 <- PairedTTest(c("Hdif","Sdif"), g2data,"group2, H VS S")
TableView(table2,table3)




TableView(table1,table2,table3,table4)  #output table


library(sjPlot)

sjt.xtab(datt$ALgroup,datt$Hgroup,
         variableLabels=c("AL group", "Haigis group"),
         showRowPerc=TRUE)

sjt.xtab(datt$ALgroup,datt$Sgroup,
         variableLabels=c("AL group", "SRK/T group"),
         showRowPerc=TRUE)

sjt.xtab(datt$Sgroup,datt$Hgroup,
         variableLabels=c("SRK/T group", "Haigis group"),
         showRowPerc=TRUE)

library(ggplot2)
datt <- datt[2:68,]
(q1 <- qplot(outcome,H,data=datt,shape=factor(datt$ALgroup2),size=1.5,color=factor(datt$ALgroup2),xlim=c(-5,3),ylim=c(-5,3),xlab="实际屈光",ylab="Haigis预测屈光")
 + scale_shape_manual(values=c("1" = 16,"2" = 17),guide = guide_legend(title = "眼轴长度"))
 +scale_color_manual(values = c("1" = "darkblue","2" = "red"),guide = guide_legend(title = "眼轴长度"))
 +geom_abline(intercept = 0, slope =1)+ theme_classic())
(q2 <- qplot(outcome,S,data=datt, shape=factor(datt$ALgroup2),size=1.5,color=factor(datt$ALgroup2),xlim=c(-5,3),ylim=c(-5,3),xlab="实际屈光",ylab="SRK/T预测屈光") + scale_shape_manual(values=c("1" = 1,"2" = 17),guide = guide_legend(title = "眼轴长度"))+scale_color_manual(values = c("1" = "blue","2" = "red"),guide = guide_legend(title = "眼轴长度"))+geom_abline(intercept = 0, slope =1)+ theme_classic())
(q3 <- qplot(outcome,H,data=datt,shape=factor(datt$ALgroup2),size=1.5,color=factor(datt$ALgroup2),xlim=c(-5,3),ylim=c(-5,3),xlab="实际屈光",ylab="Haigis预测屈光") + scale_shape_manual(values=c("1" = 1,"2" = 17),guide = guide_legend(title = "眼轴长度"))+geom_smooth(method=lm,size=1)+scale_color_manual(values = c("1" = "blue","2" = "red"),guide = guide_legend(title = "眼轴长度"))+geom_abline(intercept = 0, slope =1)+ theme_classic())
(q4 <- qplot(outcome,S,data=datt,shape=factor(datt$ALgroup2),size=1.5,color=factor(datt$ALgroup2),xlim=c(-5,3),ylim=c(-5,3),xlab="实际屈光",ylab="Haigis预测屈光") + scale_shape_manual(values=c("1" = 1,"2" = 17),guide = guide_legend(title = "眼轴长度"))+geom_smooth(method=lm,size=1)+scale_color_manual(values = c("1" = "blue","2" = "red"),guide = guide_legend(title = "眼轴长度"))+geom_abline(intercept = 0, slope =1)+ theme_classic())
(q5 <- qplot(Hdif,Sdif,data=datt,shape=factor(datt$ALgroup2),size=1.5,color=factor(datt$ALgroup2),xlim=c(-1,3),ylim=c(-1,3),xlab="Haigis预测差值",ylab="SRK/T预测差值") + scale_shape_manual(values=c("1" = 1,"2" = 17),guide = guide_legend(title = "眼轴长度"))+scale_color_manual(values = c("1" = "blue","2" = "red"),guide = guide_legend(title = "眼轴长度"))+geom_abline(intercept = 0, slope =1)+ theme_classic())
(q5 <- qplot(H,S,data=datt,shape=factor(datt$ALgroup2),size=1.5,color=factor(datt$ALgroup2),xlim=c(-5,3),ylim=c(-5,3),xlab="Haigis",ylab="SRK/T") + scale_shape_manual(values=c("1" = 1,"2" = 17),guide = guide_legend(title = "眼轴长度"))+scale_color_manual(values = c("1" = "blue","2" = "red"),guide = guide_legend(title = "眼轴长度"))+geom_abline(intercept = 0, slope =1)+ theme_classic())


summary(fit <- lm(datt$outcome~datt$H))
plot(lm(datt$outcome~datt$S))

summary(fit <- lm(datt$outcome~datt$AL*datt$AL+datt$AL+datt$cornea1*datt$cornea1+datt$cornea1))
summary(fit2 <- lm(datt$H~datt$outcome))

(q3 <- qplot(outcome,H,data=datt,size=1.5,xlim=c(-5,3),ylim=c(-5,3),xlab="实际屈光",ylab="Haigis预测屈光") + geom_smooth(method=lm,size=1)+geom_abline(intercept = 0, slope =1)+geom_text(aes(-1.05,-1.95,label=("(-1.35,-1.35)")))+ theme_classic())
(q3 <- qplot(outcome,S,data=datt,size=1.5,xlim=c(-5,3),ylim=c(-5,3),xlab="实际屈光",ylab="SRK/T预测屈光") + geom_smooth(method=lm,size=1)+geom_abline(intercept = 0, slope =1)+geom_text(aes(-1.05,-1.95,label=("(-1.395,-1.395)")))+ theme_classic())


lm(datt$outcome~datt$H)

anova(fit,fit2)
datt$new <-predict(fit)
datt$new <- (2.3*datt$S+1.5)
(q5 <- qplot(outcome,new,data=datt,shape=factor(datt$ALgroup2),size=1.5,color=factor(datt$ALgroup2),xlim=c(-5,3),ylim=c(-5,3),xlab="实际屈光",ylab="Haigis预测屈光")  + scale_shape_manual(values=c("1" = 1,"2" = 17),guide = guide_legend(title = "V"))+geom_smooth(method=lm,size=1)+scale_color_manual(values = c("1" = "blue","2" = "red"),guide = guide_legend(title = "V"))+geom_abline(intercept = 0, slope =1)+ theme_classic())


matrix(datt$outcome,datt$new,datt$H)
cor(datt$outcome,datt$H)


两组内分别作图
(q1 <- qplot(datt.outcome,datt.H,data=g1data,shape=factor(g1data$group2),size=1.5,color=factor(g1data$group2),xlim=c(-5,3),ylim=c(-5,3),xlab="实际屈光",ylab="预测屈光") + scale_shape_manual(values=c("1" = 1,"2" = 17),guide = guide_legend(title = "预测方法"))+scale_color_manual(values = c("1" = "blue","2" = "red"),guide = guide_legend(title = "预测方法"))+geom_abline(intercept = 0, slope =1)+ theme_classic())
(q1 <- qplot(datt.outcome,datt.H,data=g2data,shape=factor(g2data$group2),size=1.5,color=factor(g2data$group2),xlim=c(-5,3),ylim=c(-5,3),xlab="实际屈光",ylab="预测屈光") + scale_shape_manual(values=c("1" = 1,"2" = 17),guide = guide_legend(title = "预测方法"))+scale_color_manual(values = c("1" = "blue","2" = "red"),guide = guide_legend(title = "预测方法"))+geom_abline(intercept = 0, slope =1)+ theme_classic())


sjt.xtab(datt$lreye,datt$group)
chisq.test(table(datt$lreye,datt$group))

sjt.xtab(datt$gender,datt$group)
chisq.test(table(datt$gender,datt$group))
