# Example 1: Format Date with Day, Month, Year
# define date
date <- as.Date("2021-01-25")

# format date
formatted_date <- format(date, format="%m/%d/%y")

# display formatted date
formatted_date

# define date
date <- as.Date("2021-01-25")

# format date
formatted_date <- format(date, format="%m-%d-%y")

# display formatted date
formatted_date

# Example 2: Format Date as Weekday
# define date
date <- as.Date("2021-01-25")

# format date as abbreviated weekday
format(date, format="%a")

# format date as unabbreviated weekday
format(date, format="%A")

# Example 3: Format Date as Month

# define date
date <- as.Date("2021-01-25")

# format date as abbreviated month
format(date, format="%b")

# format date as unabbreviated month
format(date, format="%B")

# define date
date <- as.Date("2021-01-25")

# format date as abbreviated month
format(date, format="%b %d")


















