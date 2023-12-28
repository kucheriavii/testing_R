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

filter(cars, str_detect(model, "Audi|Acura"))

#slice

slice(cars,8:10) #з 8 по 10
slice(cars, 100,5,10) #тільки 100,5 та 10
slice(cars, -1, -3, -5) #Всі, окрім 1,3 та 5

slice_max(cars, cylinders)
slice_min(cars, cylinders)
slice_sample(cars, n=10) #return random elements
slice_sample(cars, n=10, replace=TRUE) #return random elements can elements be repeated 

slice_sample(filter(cars, transmission=='Manual', cylinders == 12), n=30, replace = TRUE)

head(cars, 10)

sort(sqrt(abs(sin(1:10))))

#PIPE передає аргумент в наступну функцію (аналог sort(sqrt(abs(sin(1:10)))))
##################################
1:10 %>% sin() %>%
  abs() %>% 
  sqrt() %>% sort()

filter(cars, transmission=='Manual', cylinders == 12) %>% 
  slice_sample(.data = ., n = 2) #крапка . показує куди вставляти дані

#сортування даних
#############################################
cars %>% 
  filter(transmission=='Manual') %>% 
  slice_sample(n = 10) %>%
  arrange(model_index)

cars %>% 
  filter(transmission=='Manual') %>% 
  slice_sample(n = 10) %>%
  arrange(desc(model_index))
  

cars %>% 
  filter(transmission=='Manual') %>% 
  slice_sample(n = 10) %>%
  arrange(-model_index)

cars %>% 
  arrange(cylinders, model)   #сортування за двома параметрами


# відбір стовбчиків
########################################
cars %>% 
  select(model, transmission)

cars %>% 
  select(!c(model, transmission)) #виключити колонки з вибірки

cars %>%
    select(starts_with('m'))

cars %>% 
  select(ends_with('s'))

cars %>% 
  select(contains('ode'))

cars %>% 
  select(matches('[abcdefl]_'))

cars %>% 
  select(where(is.character))

cars %>% 
  select(where(is.numeric))

a <- cars %>% 
  select(where(is.character), everything()) #спочатку символьні, далі всі інші

cars %>% 
  relocate(transmission, .before=model) #поміняти стовбці місцями

cars %>% 
  relocate(model, .after=model_index) #поміняти стовбці місцями

cars %>% 
  relocate(contains("_"), .after=model)

cars %>% 
  rename(id = model_index,
         "max ethanol" = max_ethanol) %>% 
  select("max ethanol")

cars %>% 
  rename_with(toupper) #columns to uppercaase

cars %>% 
  rename_with(toupper, starts_with('m')) #columns which starts with 's' to uppercaase

cars_rename <- cars %>% 
  rename('max ethanol'=max_ethanol, 
         'model index'=model_index)
cars_rename

cars_rename %>% 
  rename_with(~gsub(' ', '_', .x))

cars_rename %>% 
  set_names(names(.) %>% str_replace(' ', '_') %>% str_to_title())

