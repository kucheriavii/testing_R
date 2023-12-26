100+100 #addition
50-111 #subtraction
50*50 #multiplication
100/8 #division
100%%3 #full division

a <- 50
b <- 60

a < b & a != b

a < b | a > b

a >b & a == 50

auction.data <- read.csv("c:\\data_science\\R\\R\\Salaries.csv")
head(auction.data)
auction <- read.csv("c:\\data_science\\R\\R\\Salaries.csv")
View(auction)

x <- auction[auction$Year == 2012 & auction$TotalPay > 300000,]
x$JobTitle

x <- 1:100
x

a = 50L #Щоб створити integer використовуй L
typeof(a)
b = 50 #створить double
typeof(b)

v1 <- c(1,2,3,4,5)
class(v1)
typeof(v1)

v2<-c('hello', 'world')
v2
