library(pacman)

p_load(tidyverse, rvest, janitor, hrbrthemes, jsonlite)

m100 <- read_html('https://en.wikipedia.org/wiki/Men%27s_100_metres_world_record_progression')

m100 %>% 
  html_element("div+ .wikitable :nth-child(1)") %>%
  html_table

pre_iaaf <- m100 %>%
  html_element("table:nth-child(11)") %>%
  html_table %>%
  clean_names() %>%
  mutate(date = mdy(date))
pre_iaaf

iaaf_12_76 <- m100 %>%
  html_element("table:nth-child(17)") %>%
  html_table %>%
  clean_names() %>%
  mutate(date = mdy(date))
iaaf_12_76

iaaf_77 <- m100 %>%
  html_element("table:nth-child(23)") %>%
  html_table %>%
  clean_names() %>%
  mutate(date = mdy(date))
iaaf_77

iaaf_68_87 <- m100 %>%
  html_element("table:nth-child(27)") %>%
  html_table %>%
  clean_names() %>%
  mutate(date = mdy(date),
         athlete=str_replace(athlete, "\\[.\\]", "" ))
iaaf_68_87

#обєднання таблиць
mwr100 <- bind_rows(
  "Pre-IAAF" = pre_iaaf,
  "12Pre-automatic" = iaaf_12_76,
  "Modern" = iaaf_77,
  "Low-altitude" = iaaf_68_87,
  .id = 'era'
) %>%
  select(era, time, athlete, nationality, date)


mwr100 %>%
  count(nationality, sort=TRUE)

mwr100_plot <- mwr100 %>%
  ggplot(aes(date, time, color = fct_reorder2(era, date, time)))+
  geom_point(alpha = 0.7)+
  labs(
    title = "World records on 100m between men",
    x = "date",
    y="time",
    caption="source: wikipedia",
    color = "period"
  ) + theme_bw()
plotly::ggplotly(mwr100_plot)
