# Load packages
library("tidyverse")
library("skimr")
library("janitor")

# import data
hotel_bookings <- read_csv("hotel_bookings.csv")

# Getting to know data
head(hotel_bookings)
str(hotel_bookings)
glimpse(hotel_bookings)
colnames(hotel_bookings)

# Manipulating the data
# Sorting data
hotel_bookings_v2 <-
  arrange(hotel_bookings, desc(lead_time))
arrange(hotel_bookings, lead_time)
arrange(hotel_bookings, desc(lead_time))
head(hotel_bookings)

# Max lead_time and Min lead_time
max(hotel_bookings$lead_time)
min(hotel_bookings$lead_time)

# Average lead_time
mean(hotel_bookings$lead_time)
mean(hotel_bookings_v2$lead_time)

# Filtering data
hotel_bookings_city <- filter(hotel_bookings, hotel_bookings$hotel == "City Hotel")
head(hotel_bookings_city)

# Average hotel_booking_city lead _time
mean(hotel_bookings_city$lead_time)

# Finding  out different hotels average lead time and max lead time and min
hotel_summary <- 
  hotel_bookings %>% 
  group_by(hotel) %>% 
  summarize(average_lead_time = mean(lead_time),
            max_lead_time = max(lead_time),
            min_lead_time = min(lead_time))
head(hotel_summary)









