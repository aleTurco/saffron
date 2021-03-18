#saffron production data analysis
library(tidyverse)
library(dslabs)
library(ggplot2)
library(gridExtra)
data("relig_income")

d1 <- relig_income %>% filter(!str_detect(religion, "Other") & !str_detect(religion, "refused"))

p1 <- d1 %>% ggplot(aes(religion, `$100-150k`, color = religion)) + geom_col()
p2 <- d1 %>% ggplot(aes(religion, `<$10k`, color = religion)) + geom_col()
p3 <- d1 %>% ggplot(aes(religion, `$50-75k`, color = religion)) + geom_col()

grid.arrange(p2, p3, p1, ncol = 3)