# Example 1: Use as.Date() with Recognizable Date Formats
# define character object in %Y-%m-%d format
x <- "2022-10-15"

# view class of x
class(x)

# convert character object to date object
my_date <- as.Date(x)

# view new date object
my_date

# view class of my_date
class(my_date)

# define character object in %Y/%m%d foramt
x <- "2022/10/15"

# view class of my_date
class(my_date)

# Example 2: Use as.Date() with Unrecognizable Date Formats
# define character object in %m/%d/%Y format
x <- "10/15/2022"

# convert character object to date onbject
my_date <- as.Date(x, format = "%m/%d/%Y")

# view new date object
my_date

# view class of my_date
class(my_date)

# define character object to date object
x <- "10152022"
my_date <- as.Date(x, format = "%m%d%Y")

# view new date object
my_date


# view class of my_date
class(my_date)




























