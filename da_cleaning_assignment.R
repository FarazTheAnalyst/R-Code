library("tidyverse")
library("skimr")
library("janitor")

# loading hotel_bookings.csv dataset
booking_df <- read_csv("hoter_bookings.csv")

# Preview data
head(booking_df)
str(booking_df)
glimpse(booking_df)
colnames(booking_df)

# Advance summarizing function skimr()
skim_without_charts(booking_df)

# cleaning data takeing a subset
trimmed_df <- booking_df %>%
  select(hotel, is_canceled, lead_time)
trimmed_df

# Renaming the colnames for easier to understand
trimmed_df %>% 
  select(hotel, is_canceled, lead_time) %>% 
  rename(hotel_type = hotel)
# Combing two columns
example_df <- booking_df %>% 
  select(arrival_date_year, arrival_date_month) %>% 
  unite(arrival_year_month, c(arrival_date_month, arrival_date_year), sep = " ")
example_df

# mutate() Create a new column to summed up all the "adults" "childre", "babies" 
example_df <- booking_df %>% 
  mutate(guests = adults + children + babies)
head(example_df)
head(View(example_df))

# calculate the summary statistics
example_df <- booking_df %>% 
  summarize(number_canceled = sum(is_canceled),
            average_lead_time = mean(lead_time))
head(example_df)










