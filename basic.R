library(ggplot2)
library(dplyr)

rm(list = ls())

f <- function(x) {
  y = x^3
}

x = seq(from = -2, to = 2, by = 0.01)

data <- data.frame(x = x,
                   y = f(x))

chart <- ggplot(data, aes(x, y)) +
  geom_line() +
  theme_bw()

print(chart)