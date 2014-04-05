#demo:
#BarByVars(data, id.var="id", group.var="group", measure.vars=c("mass","score"))
#BarByVars(data, "id", "group", c("mass","score"))

BarByVars <- function (data, id.var, group.var, measure.vars) {
  library(reshape2)
  library(dplyr)
  library(ggplot2)
  id.vars <- c(id.var, group.var)
  melted2 <- melt(data, id.vars, measure.vars)
  grouped2 <- regroup(melted2, list(group.var,"variable"))
  means2 <- summarise(grouped2, mean=mean(value), sem=sd(value)/sqrt(length(value)))
  means.sem2 <- mutate(means2, lower=mean-sem, upper=mean+sem)
  qplot(x=get(group.var), y=mean, fill=variable,
        data=means.sem2, geom="bar", stat="identity", position="dodge",xlab=group.var)
  last_plot() + geom_errorbar(aes(ymax=upper, ymin=lower),
                              position=position_dodge(0.9), width=0.25)
}