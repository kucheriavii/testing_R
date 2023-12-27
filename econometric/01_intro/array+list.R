my_array <- array(1:16, dim=c(4,4,2))
my_array


myList <- list(
  vec = seq(1,100,20),
  gendalf = "You shall not pass!",
  my_matrix = matrix(matrix(1:16, nrow = 4))
)

myList[[1]][5]

myList$vec[5]

my_df <- data.frame(
  name = c("Frodo", "Arwen", "Logolas"),
  sex = c("male", "female", "male"),
  age = c(51,2700,2931),
  one_ring = c(TRUE, FALSE, FALSE)
)

my_df

my_df["name"]
my_df[1]

my_df[2,3]
str(my_df)

head(my_df,1)
tail(my_df,1)
my_df['race'] = c('hobbit', 'elf', 'elf')

head(my_df)

names(my_df)[3]

#factor

race <- factor(c('elf', 'hobbit', 'orc', 'dwarf'),
               levels =c('elf', 'hobbit', 'orc', 'dwarf', 'human'),
               ordered = FALSE)
race

temp <- factor(
  x = c('low', 'low', 'medium', 'low', 'hight'),
  levels = c('low', 'medium', 'hight'),
  ordered = TRUE
)

temp[1] < temp[3]

#libraries

rownames(installed.packages(priority = "base"))
rownames(available.packages())


install.packages("tidyverse")

library(tidyverse)

install.packages("devtools")

devtools::install_github("yihui/xaringan")

