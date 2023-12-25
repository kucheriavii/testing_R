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

x <- auction[auction$Year == 2012 & auction$TotalPay > 360000,]
x$JobTitle
