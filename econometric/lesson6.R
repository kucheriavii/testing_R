library(tidyverse)
cars <- read_delim('https://raw.githubusercontent.com/Aranaur/datasets/main/datasets/cars2018.csv', delim = ';')

#xlsm
library(readxl)

cars_xl_list1 = read_excel("00_data/cars2018.xlsx")
cars_xl_list2 = read_excel("00_data/cars2018.xlsx", "list2")

sheets = excel_sheets("00_data/cars2018.xlsx");
cars_xl_test = read_excel("00_data/cars2018.xlsx", sheets[3])

glimpse(cars)

filter(cars, transmission == 'Automatic', gears==10)
cars_disp_cyl <- filter(cars, displacement > 60, cylinders==12)

cars_rec <- filter(cars, cylinders == 4 | cylinders == 6)

cars_in <- filter(cars, cylinders %in% c(3:5))

filter(cars, str_detect(model, "Audi"))
