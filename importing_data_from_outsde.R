# Load data
library("tidyverse")

# setting a working directory reading data 
setwd("C:/Users/DELL/Desktop/Coursera/course7/courseraRCode")
getwd()
booking_df <- read_csv("hotel_bookings.csv")

# preview data
head(booking_df)
View(head(booking_df))
str(booking_df)
colnames(booking_df)
new_df <- select(booking_df, adr, adults)
new_df

# Creating a NEW variable
mutate(new_df, Total = adr / adults)
own_df <- read_csv("avocado.csv")










