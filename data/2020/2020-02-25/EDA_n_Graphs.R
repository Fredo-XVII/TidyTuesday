# EDA and Visualization

library(tidyverse)
library(sf)
# Simple EDA

head(measles) %>% View()
tail(measles) %>% View()
summary(measles)

measles_base <- measles %>% 
  dplyr::filter(!is.na(enroll),
                !is.na(lng),
                !is.na(lat)
                )
summary(measles_base)

measles_base %>% 
  ggplot(aes(x = xmed, y = xper, col = as.factor(xrel))) +
  geom_point()
