library("tidyverse")
getwd()
# Setting up dir
setwd("C:/Users/DELL/Desktop/Coursera/course8/extractData")
getwd()
library("lubridate")


# setting up files
file_names <- dir(path = "C:/Users/DELL/Desktop/Coursera/course8/extractData",
pattern = NULL, all.files = FALSE, full.names = FALSE,
recursive = FALSE, ignore.case = FALSE, include.dirs = FALSE,
no.. = FALSE)
file_names
# creating df for last 12 months of data
cyclistic_df <- do.call(rbind, lapply(file_names, read.csv))
cyclistic_df
# export df to CSV file
write.csv(cyclistic_df, "cyclistic_202103-202203.csv", row.names = TRUE) # completed 2022-04-21
bikeshare_df <- read_csv("cyclistic_202103-202203.csv")
bikeshare_df
bikeshare_df <- read_csv("cyclistic_202103-202203.csv")
bikeshare_df
# Inspecting data frame
# Quick view using head() and summary()
head(bikeshare_df)
summary(bikeshare_df)
# Inspect column names:
colnames(bikeshare_df)
rows(bikeshare_df)
length(bikeshare_df)
nrow(bikeshare_df)
bikeshare_df %>%
summarize(causal = length(causal))
bikeshare_df$date <- as.Date(bikeshare_df$started_at)
bikeshare_df$date
bikeshare_df$date <- as.Date(bikeshare_df$started_at)
bikeshare_df$month <- format(as.Date(bikeshare_df$date), "%m")
bikeshare_df$month
bikeshare_df$date <- as.Date(bikeshare_df$started_at)
bikeshare_df$month <- format(as.Date(bikeshare_df$date), "%m")
bikeshare_df$day <- format(as.Date(bikeshare_df$date), "%d")
bikeshare_df$year <- format(as.Date(bikeshare_df$date), "%Y")
bikeshare_df$day_of_week <- format(as.Date(bikeshare_df$date), "%A")
bikeshare_df$ride_length <- difftime(bikeshare_df$ended_at,bikeshare_df$started_at)
bikeshare_df$ride_length
bikeshare_df$ride_length

# Convert Ride Length from Factor to Numeric
is.factor(bikeshare_df$ride_length)
as.character(bikeshare_df$ride_length))
as.character(bikeshare_df$ride_length)
is.numeric(bikeshare_df$ride_length)
bikeshare$ride_length(is.numeric(as.character(bikeshare_df$ride_length))
bikeshare_df$ride_length

bikeshare$ride_length
bikeshare$ride_length <- is.numeric(as.character(bikeshare_df$ride_length))
bikeshare_df$ride_length <- as.numeric(as.character(bikeshare_df$ride_length))
bikeshare$ride_length
bikeshare_df$ride_length
is.numeric(bikeshare_df$ride_length)


# Remove bad data
# The data frame includes a few hundred entries when bikes were taken out of
#docks and checked for quality by Divvy or ride_length was negative.
# We will create a new version of the data frame (v2) since data is being removed.
bikeshare_df_v2 <- bikeshare_df[!(bikeshare$ride_length<0), ] # remove negative values
bikeshare_df_v2 <- mutate(bikeshare_df_v2, ...1 = NULL) # remove extra col
# Inspect new data frame
head(bikeshare_df_v2)
colnames(bikeshare_df_v2)
View(bikeshare_df_v2)
nrow(bikeshare_df_v2)

any(bikeshare_df_v2$start_station_name == "HQ QR") # doesn't exist in data set
any(bikeshare_df_v2$ride_length < 0) # checking for negative values


# Prepare data frame for export
# Export clean data
# After cleaning, a CSV file will be exported to preserve the clean data 
# and another file will be created for use in Tableau.
write_csv(bikeshare_df_v2, "2022-04-26_cyclistic_clean_data.csv")


# Prepare data frame for export to Tableau
Since the data frame containing the clean data is too large to upload 
# to Tableau Public (file limit of 1 GB) a subset of the data frame 
# will be created and exported.
# selection of desired columns to keep for export
myvars <- c("ride_id", "rideable_type", "member_casual", "date", "month",
            "day", "year","day_of_week", "ride_length", "start_station_name",
            "end_station_name")

# Store selected colmns in a data frame
bikeshare_subset <- bikeshare_df_v2[myvars]
bikeshare_subset

# Write selected columns in a data frame
write_csv(bikeshare_subset, "2022-04-30_cyclistic_subset.csv")

# Analyze/Share Phase
# Descriptive Analysis
# Summary Statistics of ride 
# length (in seconds) for both casual and member riders:
summary(bikeshare_df_v2$ride_length)


# Comparison between members and casual riders
# Comparison of the mean, median, max, and min.
aggregate(bikeshare_df_v2$ride_length ~ bikeshare_df_v2$member_casual, FUN = mean)
aggregate(bikeshare_df_v2$ride_length ~ bikeshare_df_v2$member_casual, FUN = median)
aggregate(bikeshare_df_v2$ride_length ~ bikeshare_df_v2$member_casual, FUN = min)


### Observations

####We can see that for both the mean and median, casual riders have trips of longer duration than member riders.

# Average duration per rider type sorted by day of the week
# first order by day of the week
bikeshare_df_v2$day_of_week <- ordered(bikeshare_df_v2$day_of_week, 
                                       levels=c("sunday", "Monday", "Tuesday",
                                                "wednesday", "Thursday", "Friday",
                                                "Saturday"))
is.ordered(bikeshare_df_v2$day_of_week)

# Calculate average
aggregate(bikeshare_df_v2$ride_length ~ bikeshare_df_v2$member_casual + 
             bikeshare_df_v2$day_of_week, FUN = mean)

# Average duration sorted by rider type, then day of the week

bikeshare_df_v2 %>% 
  mutate(weekday = wday(started_at, label = TRUE)) %>% #creates weekday field using wday()
  group_by(member_casual, weekday) %>% #groups by user type and weekday
  summarize(member_of_rides = n() #calculates the number of rides of average duration
            ,average_duration = mean(ride_length)) %>% #calculates the average duration
  arrange(member_casual, weekday)    #sorts

# Observations

# On average, - casual riders ride longer than member riders - 
# member riders take more rides during the work week (M-F) than casual 
# riders - Casual riders take more rides during the weekend

# Visualizations
## Plot: Number of Rides by Rider Type
library("ggplot2")
bikeshare_df_v2 %>%
  ggplot()




















