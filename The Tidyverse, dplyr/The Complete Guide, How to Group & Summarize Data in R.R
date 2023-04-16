# Install & Load the dplyr Package
# install dplyr (if not already installed)
install.packages("dplyr")

# load dplyr
library(dplyr)

# obtain rows and columns of mtcars
dim(mtcars)

# view first six rows of mtcars
head(mtcars)

# Example 1: Find Mean & Median by Group
# find mean mpg by cylinder
mtcars %>% 
  group_by(cyl) %>% 
  summarize(mean_mpg  = mean(mpg, na.rm = TRUE))

# find meadian mpg by cylinder
mtcars %>% 
  group_by(cyl) %>% 
  summarize(median_mgs = median(mpg, na.rm=TRUE))

# Example 2: Find Measures of Spread by Group
# find sd, IQR, and mad by cylinder
mtcars %>% 
  group_by(cyl) %>% 
  summarise(sd_mpg = sd(mpg, na.rm=TRUE),
            iqr_mpg = IQR(mpg, na.rm = TRUE),
            mad_mpg = mad(mpg, na.rm = TRUE))

# Example 3: Find Count by Group
# find row count and unique row count by cylinder
mtcars %>% 
  group_by(cyl) %>% 
  summarize(count_mpg = n(),
            u_count_mpg = n_distinct(mpg))

# find percentile by group
# find 90th percentile of mpg for each cylinder group
mtcars %>% 
  group_by(cyl) %>% 
  summarize(quant90 = quantile(mpg, probs = .9))













