# replace one specific text in string
# create stirng 
my_string <- "This is a cool string"

# replace "cool" with "nice"
my_string <- sub("cool", "nice", my_string)

# view updated string
my_string

# replace one of several specific texts in string
# create stirng
my_string <- "My favorite animal is a walrus"

# replace either zebra, walrus, or peacock with dog
my_string <- sub("zebra|walrus|peacock", "dog", my_string)

# view updated stirng
my_string

# replace numeric values in string
# create string
my_string <- "There are 400 dogs out here"

# replace numeric values with "a lot"
my_string <- sub('[[:digit:]]+', 'a lot of', my_string)

# view updated string
my_string











