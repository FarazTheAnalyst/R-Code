# Method 1: Find Location of Every Occurrence
# define string 
my_string = "mynameisronalda"

# find position of every occurrence of "a"
unlist(gregexpr("a", my_string))

# Method 2: Find Location of First Occurrence
# define string 
my_string = "mynameisronalda"

# find position of first occurrence of "a"
unlist(gregexpr("a", my_string))[1]

# Method 3: Find Location of Last Occurrence
# define string
my_string = "mynameisronalda"

# find position of last occurrence of "a"
tail(unlist(gregexpr("a", my_string)), n=1)

# Method 4: Find Total Number of Occurrences
# define string 
my_string = "mynameisronalda"

# find total occurrences of "a"
length(unlist(gregexpr("a", my_string)))
