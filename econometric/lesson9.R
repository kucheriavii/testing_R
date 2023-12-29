mtcars

plot(mtcars$mpg, mtcars$disp)
hist(mtcars$mpg,8)

mtcars %>%
  ggplot(
    mapping = aes(x = mpg, y = disp)
  ) +
  geom_point(color = "blue")

mtcars
