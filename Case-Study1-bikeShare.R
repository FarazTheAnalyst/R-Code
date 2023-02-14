#  Libraries
# This report used the following libraries:
library(dplyr)
library(readr)
library(geosphere)
library(ggplot2)
library(scales)
library(lubridate)
library(tidyverse)

# Data Import
combined <- list.files(path="Trip_data", full.names = TRUE) %>% 
  lapply(read_csv) %>% 
  bind_rows 

# The merged data contains these columns:
head(combined)

# Data Manipulation
# Two new columns were added to compute the following:
# Time spent (in hours) on each trip (column name is labelled as time_difference_hours)
# Distance traveled (in kilometers) on each trip (column name is labelled as distance_km)
# The new dataframe is labelled as "combined_2". This new dataframe is used for subsequent data analysis.
combined_2 <- mutate(combined, time_difference_hours = difftime(ended_at, started_at, units = "hours")) %>%
  mutate(combined, distance_km = distHaversine(cbind(start_lng, start_lat), cbind(end_lng, end_lat))*0.001)
combined_2  
colnames(combined_2)
combined_2$distance_km

#  Limitation of the datasets
# The datasets contain missing values as listed below. This may cause inaccuracies in the data analysis.
sapply(combined_2, function(x) sum(is.na(x)))


# Analysis of the user trends
# Scope of analysis
# This report will analyse the user trends based on the historical data from February 2021 to February 2022.


# . Key findings
# The data analysis revealed the following:
# Annual members made 615,960 more trips compared to casual riders. 
#This is expected because the annual members paid a fixed fee for unlimited
# 45-minute rides, which may explain the propensity to maximize bike usage.
# The demand for bike rental increases during the summer period and 
# decreases during the winter period. This observation is similar across 
# casual riders and annual members. One plausible reason for this observation 
#is that people are more likely to go out during the summer and less likely
#to ride a bike during the winter.
# Among the casual riders, Saturdays and Sundays are the most popular days.
#However, the same was not observed in the annual members; bike usage 
#dropped by around 11.3% from weekday to weekend.
# For casual riders, the top 5 start and end bike stations are located near
# attractions. In contrast, for annual members, the top 5 start and end bike
# stations are located near residential areas.

# Number of rides completed by user type
# The annual members (referred to as members in the chart) 
# made 615,960 more trips than the casual riders.
ggplot(combined_2, aes(x=member_casual)) +
  geom_bar(fill = "Orange") +
  labs(
    title = "Number of rides completed by user type",
    subtitle = "For the period between February 2021 and February 2022",
    x = "User type",
    y = "Number of rides (in millions)") +
  scale_y_continuous(labels = label_number(suffix = " M", scale = 1e-6)) +
  geom_text(stat='count', aes(label=..count..), vjust=+3, color="white")





