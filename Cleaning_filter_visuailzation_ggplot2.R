# Load packages
library("tidyverse")
library("ggplot2")
library("dplyr")

hotel_bookings <- read_csv("hotel_bookings.csv")

# Preview data
head(hotel_bookings)
colnames(hotel_bookings)
str(hotel_bookings)
glimpse(hotel_bookings)

# Making many different chrats
# Scatter plot
ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = lead_time, y = children))

# Bar chart
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x=hotel, fill = market_segment))

# Creating separate plot for each market segment
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x=hotel,fill=hotel)) +
             facet_wrap(~market_segment)

# Filtering data
onlineta_city_hotels <- filter(hotel_bookings, 
                               (hotel=="City Hotel" & 
                                  hotel_bookings$market_segment=="Online TA"))
View(onlineta_city_hotels)

# Filtering data using %>%  operator
online_city_hotels_v2 <- hotel_bookings %>% 
  filter(hotel=="City Hotel") %>% 
  filter(market_segment=="Online TA")

online_city_hotels_v2 <- hotel_bookings %>% 
  filter(hotel=="City Hotel" & market_segment=="Online TA")

View(online_city_hotels_v2)

# creating scatter plot from filtered data
ggplot(data = online_city_hotels_v2) +
  geom_point(mapping = aes(x=lead_time, y=children))






