#demo
#table1 <- PairedTTest(c("Hdif","Sdif"),datt,"outcome y")
#table2 <- TTestOne("Hdif", "group", datt)
#rbind(table1,table2)
#HtmlTable(rbind(table1,table2))
#TTest(c("Hdif","Sdif", "AL"), "group", datt)
#TTest("Hdif", "group", datt)
#TableView(table2,table1)


#Paired T Test into a table

PairedTTest <- function(varlist,data,comments="Not specified"){
  attach(data)
  #T compute
  ttest <- t.test(get(varlist[1]),get(varlist[2]))
  #table making
  box1 <- matrix("",2,1)
  box2 <- matrix("",2,4)
  box3 <- matrix("",2,2)
  box1[1] <- comments
  box2[,1] <- varlist
  box2[,2] <- length(get(varlist))
  box2[,3] <- c(round(mean(get(varlist[1])),digits=3),round(mean(get(varlist[2])),digits=3))
  box2[,4] <- c(round(sd(get(varlist[1])),digits=3),round(sd(get(varlist[2])),digits=3))
  box3[1,] <- round(c(ttest$statistic,ttest$p.value),digits=3)
  outtable <- data.frame(cbind(box1,box2,box3))
  detach(data)
  #name changing
  colnames(outtable) <- c("Variable", "Group", "N", "Mean", "SD", "t value", "P value")
  return(outtable)
}



#Two-sample T Test into a table

TTestOne <- function(y, x, data, comments="Not specified"){
  attach(data)
  #T computing
  ttest <- t.test(get(y) ~ get(x))
  #table making
  box1 <- matrix("",2,1)
  box2 <- matrix("",2,4)
  box3 <- matrix("",2,2)
  box1[1] <- y
  box2[,1] <- levels(as.factor(get(x)))
  group1 <- get(y)[get(x)==levels(as.factor(get(x)))[1]]
  group2 <- get(y)[get(x)==levels(as.factor(get(x)))[2]]
  box2[,2] <- c(length(group1),length(group2))
  box2[,3] <- round(c(mean(group1),mean(group2)),digits=3)
  box2[,4] <- round(c(sd(group1),sd(group2)),digits=3)
  box3[1,] <- round(c(ttest$statistic,ttest$p.value),digits=3)
  outtable <- data.frame(cbind(box1,box2,box3))
  detach(data)
  #name changing
  colnames(outtable) <- c("Variable", "Group", "N", "Mean", "SD", "t value", "P value")
  return(outtable)
}

#Two-sample T Test into a table, one line per variable

TTest <- function(ylist, x, data, comments="Not specified"){
  attach(data)
  tab <- list()
  for(y in ylist) {
    #T computing
    ttest <- t.test(get(y) ~ get(x))
    #table making
    box1 <- matrix("",1,1)
    box2 <- matrix("",1,2)
    box3 <- matrix("",1,2)
    box1[1] <- y
    group1 <- get(y)[get(x)==levels(as.factor(get(x)))[1]]
    group2 <- get(y)[get(x)==levels(as.factor(get(x)))[2]]
    box2[1] <- paste0(round(mean(group1),digits=2),"±",round(sd(group1),digits=2))
    box2[2] <- paste0(round(mean(group2),digits=2),"±",round(sd(group2),digits=2))
    box3[1] <- format(round(ttest$statistic,digits=3), nsmall=3)
    box3[2] <- format(round(ttest$p.value,digits=3), nsmall=3)
    tab[[y]] <- cbind(box1,box2,box3)
  }
  outtable <- do.call("rbind", tab)
  #name changing
  outtable <- data.frame(outtable)
  colnames(outtable) <- c("Variable", paste(levels(as.factor(get(x)))[1],"(M±SD) n=", length(group1)),
                          paste0(levels(as.factor(get(x)))[2],"(M±SD) n=", length(group2)), "t value", "P value")
  
  detach(data)
  return(outtable)
}

#Two-sample T Test into a table, two lines per variable

TTest2Row <- function(ylist, x, data, comments="Not specified"){
  attach(data)
  tab <- list()
  for(y in ylist) {
    #T computing
    ttest <- t.test(get(y) ~ get(x))
    #table making
    box1 <- matrix("",2,1)
    box2 <- matrix("",2,4)
    box3 <- matrix("",2,2)
    box1[1] <- y
    box2[,1] <- levels(as.factor(get(x)))
    group1 <- get(y)[get(x)==levels(as.factor(get(x)))[1]]
    group2 <- get(y)[get(x)==levels(as.factor(get(x)))[2]]
    box2[,2] <- c(length(group1),length(group2))
    box2[,3] <- round(c(mean(group1),mean(group2)),digits=3)
    box2[,4] <- round(c(sd(group1),sd(group2)),digits=3)
    box3[1,] <- round(c(ttest$statistic,ttest$p.value),digits=3)
    tab[[y]] <- cbind(box1,box2,box3)
    }
  detach(data)
  outtable <- do.call("rbind", tab)
  #name changing
  outtable <- data.frame(outtable)
  colnames(outtable) <- c("Variable", "Group", "N", "Mean", "SD", "t value", "P value")
  return(outtable)
}


TableView <- function(...){
  library(xtable)
  htmlFile <- tempfile(fileext=".html")
  arg <- paste("<br><br>", sapply(list(...), function(x){print(xtable(x), type="html")}),"<br>")
  writeLines(c(sprintf(
    "<html>\n<head>\n<meta http-equiv=\"Content-type\" content=\"text/html;charset=utf-8\">
    <style type=\"text/css\">
    table,td,th{border-collapse:collapse;border-style:solid;border-width:2 0 2 0;}
    td{background-color:#eee;}\nth{background-color:#ccc;}
    </style>\n</head>"), arg), htmlFile)
  rstudio::viewer(htmlFile)
}


HtmlTable <- function(x){
  library(xtable)
  print(xtable(x), type="html", html.table.attributes = getOption("xtable.html.table.attributes",
                                                                "border=2 cellspacing=0"))
}


