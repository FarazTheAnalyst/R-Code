# Load data
hotel_bookings <- read.csv("hotel_bookings.csv")
hotel_bookings

# Preview data
head(hotel_bookings)
colnames(hotel_bookings)

# Load package
library("ggplot2")

# Making a bar chart
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel))

# Diving deeper in to the bar chart
ggplot(data = hotel_bookings)+ geom_bar(mapping = aes(x=distribution_channel, fill=deposit_type))

# Making a stack bar chart with market_segment
ggplot(data = hotel_bookings, mapping = aes(x=distribution_channel)) +
  geom_bar(aes(fill=market_segment))

# Facets galore
ggplot(data = hotel_bookings, mapping = aes(x=distribution_channel)) +
  geom_bar()+
  facet_wrap(~deposit_type)

# Rotating text
ggplot(data = hotel_bookings, mapping = aes(x=distribution_channel)) +
  geom_bar()+
  facet_wrap(~deposit_type)+
  theme(axis.text.x = element_text(angle = 45))

ggplot(data = hotel_bookings, mapping = aes(x=distribution_channel))+
  geom_bar()+
  facet_wrap(~market_segment)+
  theme(axis.text.x = element_text(angle = 90))

# Using facet_grid()
ggplot(data = hotel_bookings, mapping = aes(x=distribution_channel)) +
  geom_bar()+
  facet_grid(~deposit_type~market_segment)+
  theme(axis.text.x = element_text(angle = 45))













