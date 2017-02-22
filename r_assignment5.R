# use %>% to simplify my code

library(magrittr)

load(url("https://storage.googleapis.com/r_rookies/straw_hat_df.RData"))
straw_hat_df$birth_date<- Sys.Date() %>%
  format("%Y") %>%
  as.numeric() %>%
  `-` (straw_hat_df$age) %>%
  paste(straw_hat_df$birthday, sep = '-') %>%
  as.Date()

#calculate BMI and put it into data fram

library(magrittr)
library(dplyr)
heights <- c(173, 168, 171, 189, 179)
weights <- c(65.4, 59.2, 63.6, 88.4, 68.7)
heights_and_weights <- data.frame(heights, weights)
heights_and_weights %>%
  mutate(bmi = weights / (heights / 100)^2) %>%
  View()
