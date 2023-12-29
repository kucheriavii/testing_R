mtcars

plot(mtcars$mpg, mtcars$disp)
hist(mtcars$mpg,8)

mtcars %>%
  ggplot(
    mapping = aes(x = mpg, y = disp)
  ) +
  geom_point(color = "blue")

mtcars %>% ggplot(aes(mpg, disp)) + 
  geom_point(size=2, shape=1)


mtcars %>% ggplot(aes(mpg, disp)) + 
  geom_point()+
  geom_line()

mtcars %>% 
  ggplot(aes(mpg, disp)) + 
  geom_point(aes(color = as.factor(cyl), shape = as.factor(vs), size = 3))

mtcars %>%
  filter(cyl==8)

#manual colors
mtcars %>% 
  ggplot(aes(mpg, disp)) + 
  geom_point(aes(color = as.factor(cyl), shape = as.factor(vs), size = 3))+
  scale_color_manual(values = c("#ff0000", "#009999", "#220000"))


mtcars %>% 
  ggplot(aes(mpg, disp)) + 
  geom_point(aes(color = as.factor(cyl), shape = as.factor(vs), size = 3)) +
  scale_color_brewer(palette = 'Set1')



mtcars %>% 
  ggplot(aes(mpg, disp)) + 
  geom_point(aes(color = as.factor(cyl), shape = as.factor(vs), size = 3))+
  theme_void()+
  theme(legend.position = 'none')+
  theme(plot.background = element_rect(fill = "#A08000"))


mtcars %>% 
  ggplot(aes(disp, mpg, shape=as.factor(cyl))) +
  geom_point(size=3)+
  geom_smooth(method = 'lm', se=FALSE)
