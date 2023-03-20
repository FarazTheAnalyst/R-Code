# Example 1: Calculate Number of Whole Months Between Dates
library("lubridate")

# define dates
first_date <- as.Date("2022-05-01")
second_date <- as.Date("2022-09-04")

# calculate difference between datesin months
diff <- interval(first_date, second_date) %/% months(1)

# view difference
diff

# example 2: calculate Number of parital Months Between Dates
library("lubridate")

# define dates
first_date <- as.Date("2022-05-01")
second_date <- as.Date("2022-09-04")

# calculate difference between dates in partial months
diff <- interval(first_date, second_date) %/% days(1) / (365/12)

# view difference
diff
