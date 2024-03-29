library("ggplot2")

# import data
hotel_bookings <- read.csv("hotel_bookings.csv")

# Look at sample of your data
head(hotel_bookings)
colnames(hotel_bookings)

# Begin creating a plot
ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = lead_time, y = children))


ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = stays_in_weekend_nights, y = children))








