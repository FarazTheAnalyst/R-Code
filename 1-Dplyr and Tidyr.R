install.packages("dplyr")
library("dplyr")

install.packages("nycflights13")
library("nycflights13")

View(flights)
head(flights)

# subset of dataset using filter()
f1 <- filter(flights, month == 07)
View(f1)

f2 <- filter(flights, month == 07, day == 03)
View(f2)

View(filter(flights, month == 09, day == 2, origin == 'LGA'))

# OR
head(flights[flights$month==09 & flights$day==2 & flights$origin=="LGA", ])

# slice() allows us to select rows by positions

slice(flights, 1:5)
slice(flights, 5:10)

# mutate() is used to create a new column

over_delay <- mutate(flights, overall_delay = arr_delay - dep_delay)
View(over_delay)
View(flights)
head(over_delay)

# transmute() function is used to show only new column

over_delay <- transmute(flights, overall_delay = arr_delay - dep_delay)
View(over_delay)

# summarise() used to  find descriptive statistics

summarise(flights, avg_air_time = mean(air_time, na.rm =T))
summarise(flights, tot_air_time = sum(air_time, na.rm = T))
summarise(flights,stdev_air_time = sd(air_time, na.rm = T))
summarise(flights, avg_air_time = mean(air_time, na.rm = T), tot_air_time = sum(air_time, na.rm = T))

# group by calculation using group_by()

# Example 1
head(mtcars)
View(mtcars)

by_gear <- mtcars %>% group_by(gear)
by_gear
View(by_gear)

a <- summarise(by_gear, gear1 = sum(gear), gear2 = mean(gear))
a

summarise(group_by(mtcars, cyl), mean(gear, na.rm = T))

b <- by_gear %>% summarise(gear1 = sum(gear), gear2 = mean(gear))
b

# Example 2

by_cyl <- mtcars %>% group_by(cyl)

by_cyl %>% summarise(gear = mean(gear), hp = mean(hp))

head(by_cyl)
View(by_cyl)

# sample_n() and sample_frac() for creating samples

sample_n(flights, 15) # Gives 15 random samples
sample_frac(flights, 0.4) #returns 40% of the total data

# arrange() used to sort dataset

View(arrange(flights, year, dep_time))
head(arrange(flights, desc(dep_time)))

# usage of pipe operator %>% 
df <- mtcars
df
View(mtcars)

# Nesting

result <- arrange(sample_n(filter(df, mpg > 20), size = 5), desc(mpg))
result
View(result)

# Multiple assignment

a <- filter(df, mpg > 20)
b <- sample_n(a, size = 5)
result <- arrange(b, desc(mpg))
result
View(result)

# Same using pipe operator

# syntax - data %>% op1 %>% op2 %>% op3

result <- df %>% filter(mpg>20) %>% sample_n(10) %>% arrange(desc(mpg))
result

# Select() function used to get specific column

df
df_mpg_hp_cyl <- df %>% select(mpg,hp,cyl)
df_mpg_hp_cyl
View(df_mpg_hp_cyl)


# -------Data manipulation using Tidyr-------

install.packages('tidyr')
library('tidyr')

n = 10

wide <- data.frame(
  ID = (1:n),
  Face.1 = c(411, 322, 644, 786, 566, 344, 353, 865, 456, 321),
  Face.2 = c(434, 656, 687, 436, 943, 915, 861, 398, 224, 122),
  Face.3 = c(8479, 245, 61429, 1400, 4351, 651, 1839, 453, 554, 899)
)

View(wide)

# Gather - Reshaping data from wide format to long format

long <- wide %>% gather(Face, ResponsTime, Face.1:Face.3)
View(long)

# Separate() - splits a single column to multiple column

long_separate <- long %>% separate(Face, c("Target", "Digits"))
View(long_separate)

# Unite() - combines multiple columns into single column

long_unite <- long_separate %>% unite(Face, Target, Digits, sep = ".")
View(long_unite)

# spread() - takes twp columns (key & value) and spreads into multiple columns
# it makes long data wider

back_to_wide <- long_unite %>% spread(Face, ResponsTime)
View(back_to_wide)







     