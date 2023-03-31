# create data frame
df <- data.frame(a = c(NA, 14, 19, 22, 26),
                 b = c(14, NA, 9, NA, 5),
                 c = c(45, 56, 54, 57, 59))

# view data frame
df

# Method 1: Remove Rows with NA Using is.na()
# remove rows from data frame with NA values in column "b"
df[!is.na(df$b), ]

# Method 2: Remove Rows with NA Using subset()
# remove rows from data frame with NA values in column "b"
subset(df, !is.na(df$b))

# Method 3: Remove Rows with NA Using drop_na()
library("tidyr")

# remove rows form data frame with NA values in column "b"
df %>% drop_na(b)
