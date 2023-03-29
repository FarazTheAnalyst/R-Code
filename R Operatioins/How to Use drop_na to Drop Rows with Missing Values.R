# create data frame
df <- data.frame(points=c(10, NA, 15, 15, 14, 16),
                 assists=c(4, NA, 4, NA, 9, 3),
                 rebounds=c(NA, 5, 10, 7, 7, NA))

# view data frame
df

# Example 1: Drop Rows with Missing Values in Any Column
library("tidyr")

# drop rows with missing values in any column
df %>% drop_na

# Example 2: Drop Rows with Missing Values in Specific Column
library("tidyr")

# drop rows with missing values in rebounds column
df %>% drop_na(rebounds)

# Example 3: Drop Rows with Missing Values in One of Several Specific Columns
library("tidyr")

# drop rows with missing values in the points or assists columns
df %>% drop_na(c(points, assists))
