# define vector with no values
data <- numeric(0)

# attempt to find min value of vector
min(data)

# find minimum value of vector
suppressWarnings(min(data))

# Method 2: Define a Custom Function
# define vector with no values
data <- numeric(0)

# define custom function to calculate min
custom_min <- function(x) {if (length(x)>0) min(x) else Inf}

# use custom function to calculate min
custom_min(data)

