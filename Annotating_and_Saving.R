# Load packages
library("ggplot2")
library("tidyverse")
library("dplyr")
# import data hotel_bookings.csv
hotel_bookings <- read.csv("hotel_bookings.csv")

# Preview data
head(hotel_bookings)
colnames(hotel_bookings)
glimpse(hotel_bookings)

# Annotating your chart
# Faceting a chart
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel)

# Adding title
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  labs(title = "Comparison of market segment by the hotel type bookings")

# you need to find out when the data is from
min(hotel_bookings$arrival_date_year)
max(hotel_bookings$arrival_date_year)

# saveing it in a variable
mindate <- min(hotel_bookings$arrival_date_year)
maxdate <- max(hotel_bookings$arrival_date_year)

# Adding subtitle
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  labs(title = "Comparison of market segment by the hotel type bookings",
       subtitle=paste0("Data from:", mindate, " to ", maxdate))

# Adding captions
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  labs(title = "Comparison of market segment by the hotel type bookings",
                       caption=paste0("Data from:", mindate, " to ", maxdate),
       x = "Market Segment",
       y = "Number of Bookings")

# Saving image in png using ggsave()
ggsave("hotel_booking_chart.png")














