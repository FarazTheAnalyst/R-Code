# define data frame
df <- data.frame(points=c(4, 4, 7, 8, 12, 13, 15, 18, 22, 23, 23, 25),
                 assists=c(2, 5, 4, 7, 7, 8, 5, 4, 5, 11, 13, 8),
                 rebounds=c(7, 7, 4, 6, 3, 8, 9, 9, 12, 11, 8, 9))

# view head of data frame
head(df)

# perform data binning with cut()
library(dplyr)

# perform data binning on points variable
new_df <- df %>% 
  mutate(points_bin = cut(points, breaks = c(0, 10, 20, 30)))

# load dplyr
library("dplyr")

# perform data binning on points variable
df %>% 
  mutate(points_bin = cut(points, breaks = 3))

# perform data binning with ntile()
library(dplyr)

# perform data binning on points variable
df %>% 
  mutate(points_bin = ntile(points, n=3))






