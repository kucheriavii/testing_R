library(dplyr)
library(pacman)
library(tidyverse)
str(iris)
bind_rows(iris, iris)
iris_tbl <- as_tibble(iris)
iris_tbl

diamonds
str(diamonds)

glimpse(iris_tbl)

#read
cars_2018 <- read_csv2('https://raw.githubusercontent.com/Aranaur/datasets/main/datasets/cars2018.csv', ";")
cars_2018 = ""
cars_2018 <- read.delim('https://raw.githubusercontent.com/Aranaur/datasets/main/datasets/cars2018.csv', sep = ";")
cars_2018
cars_2018_local <- read.csv2("00_data/cars2018.csv")
head(cars_2018_local)[1:3]

#xlsx
library(readxl)

