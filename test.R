
xlab = deparse(substitute(x))

subset()



library(dplyr) # for functions
library(hflights) # for data
head(hflights)

# Coerce to data table
hflights_dt <- tbl_dt(hflights)

# Caches data in local SQLite db
hflights_db1 <- tbl(hflights_sqlite(), "hflights")

# Caches data in local postgres db
hflights_db2 <- tbl(hflights_postgres(), "hflights")


carriers_df  <- group_by(hflights, UniqueCarrier)
carriers_dt  <- group_by(hflights_dt, UniqueCarrier)
carriers_db1 <- group_by(hflights_db1, UniqueCarrier)
carriers_db2 <- group_by(hflights_db2, UniqueCarrier)

library(arm)

set.seed(123456)
# Faking some data where x1 is unrelated to y
# while x2 perfectly separates y.
d <- data.frame(y  =  c(0,0,0,0, 0, 1,1,1,1,1),
                x1 = rnorm(10),
                x2 = sort(rnorm(10)))

fit <- glm(y ~ x1 + x2, data=d, family="binomial")

## Warning message:
## glm.fit: fitted probabilities numerically 0 or 1 occurred 

summary(fit)
fit <- bayesglm(y ~ x1 + x2, data=d, family="binomial")
display(fit)


# 定义老师对象和行为
teacher <- function(x, ...) UseMethod("teacher")
teacher.lecture <- function(x) print("讲课")
teacher.assignment <- function(x) print("布置作业")
teacher.correcting <- function(x) print("批改作业")
teacher.default<-function(x) print("你不是teacher")

# 定义同学对象和行为
student <- function(x, ...) UseMethod("student")
student.attend <- function(x) print("听课")
student.homework <- function(x) print("写作业")
student.exam <- function(x) print("考试")
student.default<-function(x) print("你不是student")

# 定义两个变量，a老师和b同学
a<-'teacher'
b<-'student'

# 给老师变量设置行为
attr(a,'class') <- 'lecture'
# 执行老师的行为
teacher(a)
[1] "讲课"

# 给同学变量设置行为
attr(b,'class') <- 'attend'
# 执行同学的行为
student(b)
[1] "听课"

attr(a,'class') <- 'assignment'
teacher(a)
[1] "布置作业"

attr(b,'class') <- 'homework'
student(b)
[1] "写作业"

attr(a,'class') <- 'correcting'
teacher(a)
[1] "批改作业"

attr(b,'class') <- 'exam'
student(b)
[1] "考试"

# 定义一个变量，既是老师又是同学 
ab<-'student_teacher'
# 分别设置不同对象的行为
attr(ab,'class') <- c('lecture','homework')
# 执行老师的行为
teacher(ab)
[1] "讲课"
# 执行同学的行为
student(ab)
[1] "写作业"
--------------------------------
# 给同学对象增加新的行为
 student.correcting <- function(x) print("帮助老师批改作业")

# 辅助变量用于设置初始值
 char0 = character(0)

# 实现继承关系
 create <- function(classes=char0, parents=char0) {
       mro <- c(classes)
       for (name in parents) {
             mro <- c(mro, name)
           ancestors <- attr(get(name),'type')
             mro <- c(mro, ancestors[ancestors != name])
         }
       return(mro)
   }

# 定义构造函数，创建对象
 NewInstance <- function(value=0, classes=char0, parents=char0) {
       obj <- value
      attr(obj,'type') <- create(classes, parents)
       attr(obj,'class') <- c('homework','correcting','exam')
       return(obj)
   }

# 创建父对象实例
 StudentObj <- NewInstance()

# 创建子对象实例
 s1 <- NewInstance('普通同学',classes='normal', parents='StudentObj')
 s2 <- NewInstance('课代表',classes='leader', parents='StudentObj')

# 给课代表，增加批改作业的行为
 attr(s2,'class') <- c(attr(s2,'class'),'correcting')

# 查看普通同学的对象实例
 s1
[1] "普通同学"
attr(,"type")
[1] "normal"     "StudentObj"
attr(,"class")
[1] "homework"   "correcting" "exam"      

# 查看课代表的对象实例
 s2
[1] "课代表"
attr(,"type")
[1] "leader"     "StudentObj"
attr(,"class")
[1] "homework"   "correcting" "exam"       "correcting"


# 创建优等生和次等生，两个实例
 e1 <- NewInstance('优等生',classes='excellent', parents='StudentObj')
 e2 <- NewInstance('次等生',classes='poor', parents='StudentObj')

# 修改同学考试的行为，大于85分结果为优秀，小于70分结果为及格
 student.exam <- function(x,score) {
       p<-"考试"
       if(score>85) print(paste(p,"优秀",sep=""))
       if(score<70) print(paste(p,"及格",sep=""))
   }

# 执行优等生的考试行为，并输入分数为90
 attr(e1,'class') <- 'exam'
 student(e1,90)
[1] "考试优秀"

# 执行次等生的考试行为，并输入分数为66
 attr(e2,'class') <- 'exam'
 student(e2,66)
[1] "考试及格"