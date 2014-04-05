library(foreign)
spear <- read.spss("D:/帮忙/齐鲁李涛/spear.sav")
head(spear)
spear <- data.frame(spear)

library(ggplot2)
library(grid)
grid.newpage()
pushViewport(viewport(layout=grid.layout(1,2)))

print(a, vp=viewport(layout.pos.row=1,layout.pos.col=1))
print(b, vp=viewport(layout.pos.row=1,layout.pos.col=2))

a <- qplot(TMPRSS4, ECADHERIN, data=spear)
b <- qplot(TMPRSS4, ECADHERIN, data=spear, geom="jitter")

table(spear$TMPRSS4, spear$ECADHERIN)
cor(spear$TMPRSS4, spear$ECADHERIN)
cor(spear$TMPRSS4, spear$ECADHERIN, method = "spearm")

library(ggplot2)
library(grid)
#generate a new page, or erase the current one.
grid.newpage()
#maintain a Viewport tree, which describe the regions and coordinate systems.
pushViewport(viewport(layout=grid.layout(1,2)))
#generate two ggplot2 objects.
a <- qplot(TMPRSS4, ECADHERIN, data=spear)
b <- qplot(TMPRSS4, ECADHERIN, data=spear, geom="jitter")
#print them into the Viewport, or the page.
print(a, vp=viewport(layout.pos.row=1,layout.pos.col=1))
print(b, vp=viewport(layout.pos.row=1,layout.pos.col=2))
#also, you can define a function to make the print process more concise.

library(gridExtra)
a <- qplot(TMPRSS4, ECADHERIN, data=spear)
b <- qplot(TMPRSS4, ECADHERIN, data=spear, geom="jitter")
grid.arrange(a,b,ncol=2)
