2+2
print(2+2)
cat("two + two =", 2+2)
5-3
#test comments
5*5

5/3
5%%2
2^5
2**5
16%/%5 #Цілочисельне ділення

####################################################################
1024**(1/2)
sqrt(100)
####################################################################

log(10)
log(x=1024,base=2)
####################################################################

math_1 = log(10,3)
math_1+5

math_2 <- abs(5-9)

log(10) -> math_3

####################################################################

math_1 == math_2
math_1 != math_2
math_1 > math_2
math_1 < math_2

####################################################################

typeof(math_1)
class(math_1)

typeof(math_2)

one_int = 1L
typeof(one_int)


####################################################################

is.double(math_1)
is.integer(4L)

char1 <- "hello"

char2 <- "hello"

char3 <- 'he\'llo'
char3
####################################################################
t <- TRUE
f <-  FALSE
####################################################################

birth_year <- c(2001, 2003, 2002)
typeof(birth_year)
class(birth_year)
is.vector(birth_year)

hello <-  c('Hello', 'world')
hello

bool <-  c(TRUE, FALSE, TRUE)

from_five <- -5:5

from_six <-  6:-3

seq(1,100,2)

seq(from=1,to=100,by=2)
seq(0,100, length.out = 11)

rep(1:3,5)
rep(1:3,1:3)

c(from_five, from_six)

c(15, "!")
1:2+1:3

####################################################################
myMatrix <- matrix(data=1:16, nrow=4, byrow = TRUE)
myMatrix[3,3]

myMatrix2 <- matrix(data=1:16, nrow=4, byrow = TRUE, dimnames = list(c("col1","col2","col3","col4"),
                                                                     c("row1","row2","row3","row14")))
myMatrix2
