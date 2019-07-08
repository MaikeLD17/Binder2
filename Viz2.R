full_trains <- read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-02-26/full_trains.csv")
library(ggplot2)
library(tidyverse)



ggplot(aes(x = journey_time_avg), data = full_trains) + 
  geom_histogram(alpha = 0.5, data = subset(full_trains, service == "National"), bins = 20, fill = "red") + 
  geom_histogram(alpha = 0.15, bins = 20) +  
  labs(x = "JourneyTime (min.)", y = "Number of Instances", subtitle = "National Service trains highlighted in red "  ,title = "Histogram of Average Journey Time for trains on the SNCF Network")




