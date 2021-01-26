library(ggplot2)

# WIPE ALL OUT ####
rm(list = ls())

##### THIS IS THE FUNCTION OUTPUT #####################
f <- function(x) {

  y = x^2
  
}
#######################################################

# FUNCTION DOMAIN (A SELECTION OF) ####
x = seq(from = -2, to = 2, by = 0.01) 

# DATASET WITH DOMAIN/RANGE (INPUT/OUTPUT) ####
data <- data.frame(x = x,
                   y = f(x))          

# CREATE CHART #####
print(
  ggplot(data, aes(x, y)) +
    geom_line(color = "red") +
    geom_hline(yintercept = 0) +
    geom_vline(xintercept = 0) +
    theme_bw() + 
    labs(title = paste0(gsub("\\{|\\}", "", body(f)), collapse = " "))
)
