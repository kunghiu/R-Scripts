require(sjPlot) # load package
# Fit "dummy" models. Note that both models share the same predictors
# and only differ in their dependent variable
data(efc)
# fit first model
fit1 <- lm(barthtot ~ c160age + c12hour + c161sex + c172code, data=efc)
# fit second model
fit2 <- lm(neg_c_7 ~ c160age + c12hour + c161sex + c172code, data=efc)
# Print HTML-table to viewer pane
sjt.lm(fit1, fit2,
       labelDependentVariables=c("Barthel-Index", "Negative Impact"),
       labelPredictors=c("Carer's Age", "Hours of Care", "Carer's Sex", "Educational Status"),
       showStdBeta=TRUE, pvaluesAsNumbers=TRUE, showAIC=TRUE)


# retrieve value and variable labels
variables <- sji.getVariableLabels(efc)
values <- sji.getValueLabels(efc)
# simple frequency table
sjt.frq(efc$e42dep,
        variableLabels=variables['e42dep'],
        valueLabels=values[['e42dep']])


sjt.frq(as.data.frame(cbind(efc$e42dep, efc$e16sex, efc$c172code)),
        variableLabels=list(variables['e42dep'], variables['e16sex'], variables['c172code']),
        valueLabels=list(values[['e42dep']], values[['e16sex']], values[['c172code']]))


sjt.frq(efc$c160age,
        variableLabels=list("Carer's Age"),
        autoGroupAt=10)


efc.labels <- sji.getValueLabels(efc)
sjt.xtab(efc$e16sex, efc$e42dep,
         variableLabels=c("Elder's gender", "Elder's dependency"),
         valueLabels=list(efc.labels[['e16sex']], efc.labels[['e42dep']]))

sjt.xtab(efc$e16sex, efc$e42dep,
         variableLabels=c("Elder's gender", "Elder's dependency"),
         valueLabels=list(efc.labels[['e16sex']], efc.labels[['e42dep']]),
         showRowPerc=TRUE, showColPerc=TRUE, showExpected=TRUE)

sjt.xtab(efc$e16sex, efc$e42dep,
         variableLabels=c("Elder's gender", "Elder's dependency"),
         valueLabels=list(efc.labels[['e16sex']], efc.labels[['e42dep']]),
         showCellPerc=FALSE, showHorizontalLine=FALSE)

#imports
sji.SPSS()
sji.viewSPSS(efc)

sjt.df(efc)
sjt.df(efc[1:20,1:5], alternateRowColors=TRUE,
       orderColumn="e42dep", describe=FALSE)


data(efc)
# retrieve variable and value labels
varlabs <- sji.getVariableLabels(efc)
# recveive first item of COPE-index scale
start <- which(colnames(efc)=="c82cop1")
# recveive last item of COPE-index scale
end <- which(colnames(efc)=="c90cop9")
# create data frame with COPE-index scale
df <- as.data.frame(efc[,c(start:end)])
colnames(df) <- varlabs[c(start:end)]
sjt.pca(df, showMSA=TRUE, showVariance=TRUE)


sjt.corr(df, pvaluesAsNumbers=TRUE, 
         CSS=list(css.thead="border-top:double black; font-weight:normal; font-size:0.9em;",
                  css.firsttablecol="font-weight:normal; font-size:0.9em;"))

# recveive first item of COPE-index scale
start <- which(colnames(efc)=="c82cop1")
# recveive first item of COPE-index scale
end <- which(colnames(efc)=="c90cop9")
# retrieve variable and value labels
varlabs <- sji.getVariableLabels(efc)
vallabs <- sji.getValueLabels(efc)
sjt.stackfrq(efc[,c(start:end)],
             valuelabels=vallabs['c82cop1'],
             varlabels=varlabs[c(start:end)],
             alternateRowColors=TRUE)

value <- sjt.df(efc)
value$page.style
sjt.df(efc, CSS=list(css.firsttablecol="color:blue;font-style:italic;"))

sjt.df(efc, no.output=TRUE)$knitr
