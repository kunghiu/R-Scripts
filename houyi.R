library("sjPlot")
datt <- sji.SPSS("D:/帮忙/侯毅/Untitled2.sav",enc="UTF-8")

sjt.xtab(datt$cause,datt$V1)
table(datt$cause,datt$V1)

fisher.test(table(datt$cause,datt$V1))
