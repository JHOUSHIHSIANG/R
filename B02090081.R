# First R program
X <-5
X
# Second R program
y <- c(1,2,3,4,5)
plot(y)

z <- c(2,4,6,8,10)
plot(y,z)

#R ex.image
demo(graphics)

#Iris
data(iris)
plot(iris)

#Taiwan map
install.packages("ggmap")
library("ggmap")
map.taiwan <- get_map(location="Taiwan",zoom=8)
ggmap(map.taiwan)

#套件安裝
install.packages("C50")

#套件載入
library(C50)

#套件移除
remove.packages("C50")

#套件更新
update.pages()

#R test

x <- 10
x
y <- x^2
z <-sqrt(y)
z

#mode & length
x1 <- 10
mode(x1)
length(x1)
x2 <-10.11
mode(x2)
length(x2)
x3<- T
x3
mode(x3)
length(x3)
x4<- "hello"
mode(x4)
length(x4)
x5 <- 4+2i
mode(x5)
length(x5)
x6 <- c(1,2,3,4,5)
mode(x6)



#2016/10/13
x_dataframe[3,2]
x_dataframe[4,]
x_dataframe[2]
x_dataframe$age
x_dataframe <- edit(x_dataframe)
x_dataframe


#list 列表
id <- c(1,2,3)
sex <- c("male","male","female")
pay <- c(30000,40000,45000)
y_dataframe <- data.frame(id,sex,pay)
gender <- factor(c("男","男","女"))
Paul.Family <- list(name="Paul", wife="Iris",
no.kids=3, kids.age=c(25,28,30), gender,
y_dataframe)

Paul.Family

Paul.Family$kids.age
Paul.Family[4]
Paul.Family[[4]]

#錯誤用法 Paul.Family[4][2]
Paul.Family[[4]][2]


#CH2 資料的讀取&寫入
getwd()
setwd("c:/")   #更改路徑
getwd()

x <- read.table("X.csv",sep=",",header=TRUE)
x
x$age
x[1,2]

#FOR迴圈
x <-0
for(i in 1:5) x <- x+i
x

x<-0
y<-0
for(i in 1:5){x<-x+i;y<-i^2}
x
y

#while
sum <- 0
i<-1
while(i <=10){sum <- sum +i ; i<- i+1}
sum

#repeat
sum <- 0
f <- 1
repeat{
    sum <- sum + i
    if (i >10) break
}
sum

# %% 餘數 %/% 商

sum <- 0
for(i in 1:50){
  if(i %% 2 ==0)next
  sum <- sum + i
}
sum

#apply
x<- array(1:24,dim=c(4,6))
x
apply(x,1,sum)
apply(x,2,sum)


#自訂函數
myfun <- function(x){y <- x+2; return(y)}
myfun(1)
myfun(100)

# <<- 改變函數的值
x <- 1
myfun <- function(x){x <-2:print(x)}
myfun(x)
x
x<-1
myfun <- function(x){x<<-2:print(x)}
myfun(x)
x

#隨堂練習 階層N!

myfun<- function(n=1){
  for(i in 1:n)
  y<-1
  y <- y * i
 return(y) }
myfun(10)

#考試
#1
setwd("c:/cert/")
x<- read.csv("A-1.csv", header=FALSE)
x
str(x)
x<- as.matrix(x)
mean(x)
summary(x)

#2
setwd("c:/cert/")
x<- read.csv("A-3.csv", header=FALSE)
x
str(x)
x<- as.matrix(x)
max(x)

#3
setwd("c:/cert/")
x<- read.csv("A-4.csv", header=FALSE)
x
str(x)
x<- as.matrix(x)
quantile(x,0.25)
summary(x)


#4
setwd("c:/cert/")
x<- read.csv("A-5.csv", header=TRUE)
x
str(x)
x<- as.matrix(x)
max(x)-min(x)


#5
setwd("c:/cert/")
x<- read.csv("A-6.csv", header=FALSE)
x
str(x)
x<- as.matrix(x)
var(x)

#6
setwd("c:/cert/")
x<- read.csv("C-1.csv", header=TRUE)
x
hour <-x[2]
grade <-x[3]
cor(hour, grade)
cor(grade, hour)

#7  List彈性最大
#8  R的迴圈指令for while repeat

#9

#10
exec <- function(x){
  if(x==0) x_sum=1
  else
    x_sum= x*exec(x-1)
    return(x_sum)
}
exec(4)

#11 na.rm=TRUE
#12
a<-matrix(1:12,nrow=3, byrow=TRUE)
a
apply(a,1,sum)
apply(a,2,sum)

#13
x <- c(1,1,1,3,2,2,3)
table(x)

#14 非高階繪圖語言 identity(互動式繪圖)

#15 
x <- c(1,2,5)
y <- c(3,5,10)
(rbind(x,y))

#16
x <- c(1,2,3)
summary(x)
#17 註解符號 (#)
#18 宣告的第一字母為 . 或者 英文 不可為數字
#19
ifelse(2>=3,2,3)

#20 
x1 <- 9%%5
x2 <- 9%/%2
x1
x2
(9/2)

#第四章
demo(graphics)
demo(image)

#高階繪圖
y<-sin(1:20)
plot(y,type="l",main="Sin Plot",xlab="X",ylab="Y")

#低階繪圖
title(sub="圖4-2")
points(5,0.5)

#互動式繪圖
plot(2,2)
pts<-locator(n=3)
pts

x<-c(1,3,5)
y<-c(5,3,5)
plot(x,y)
identify(x,y,"My Labels")