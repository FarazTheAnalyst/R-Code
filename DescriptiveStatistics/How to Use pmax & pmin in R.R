# use pmax and pmin with vectors
# define three vectors
vector1 <- c(2, 2, 3, 4, 5, 6, 9)
vector2 <- c(1, 2, 4, 3, 3, 5, 4)
vector3 <- c(0, 4, 3, 12, 5, 8, 8)

# find max value across vectors
pmax(vector1, vector2, vector3)

# find min value across vaectors
pmin(vector1, vector2, vector3)

# use pmax and pmin with data frame columns
# create data frame
df <- data.frame(team=c("A", "B", "C", "D", "E"),
                 steals=c(24, 22, 36, 33, 30),
                 assists=c(33, 28, 31, 39, 34),
                 rebounds=c(30, 28, 24, 24, 41))

# view data frame
df

# find max value across steals, assists, and rebounds column
pmax(df$steals, df$assists, df$rebounds)

# find minimum value acaross  steals, assists, and rebounds columns
pmin(df$steals, df$assists, df$rebounds)

# removing NA values if any
pmax(vector1, vector2, vector3, na.rm = T)















