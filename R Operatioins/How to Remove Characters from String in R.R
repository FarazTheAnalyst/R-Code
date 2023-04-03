# Method 1: Remove One Specific Character from String
# define string
my_string <- "HeyWW My namWWe is Doug"

# replace "WW" in string
my_string <- gsub("WW", "", my_string)

# view updated string
my_string

# Method 2: Remove Multiple Characters from String
# define some string
my_string <- "HeySTRING1 My nameSTRING2 is DougSTRING2"

# repalce WW in string
my_string <- gsub("[STRING1STRING2]", "", my_string)

# view updated string
my_string

# Method 3: Remove All Special Characters from String
# define string 
my_string <- "H*ey My nam%e is D!oug"

# replace all special characters in string
my_string <- gsub("[^[:alnum:] ]", "", my_string)

# view updated string
my_string
