# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'B', 'B', 'C'),
                 conference=c('East', 'East', 'East', 'West', 'West', 'East'),
                 points=c(11, 8, 10, 6, 6, 5))

# view data frame
df

# Example 1: Drop Rows that Contain a Specific String
# code shows how to drop all rows in the data frame
# that contain 'A' in the team column
df[!grepl("A", df$team), ]

# drop all rows in the data frame that contain 'West' in the conference column
df[!grepl("West", df$conference), ]

# Example 2: Drop Rows that Contain a String in a List
df[!grepl("A|B", df$team), ]

# define vector of strings
remove <- c("A", "B")

# remove rows that contain any string in the vector i the team column
df[!grepl(paste(remove, collapse = "|"), df$team), ]
