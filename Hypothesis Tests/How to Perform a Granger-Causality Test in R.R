# The Granger Causality test is used to determine whether
# or not one time series is useful for forecasting another.

# define the two time serires
# load lmtest package
library("lmtest")

# load ChickEgg
data("ChickEgg")

# view first six rows of dataset
head(ChickEgg)

# perform Granger-Causality test
grangertest(chicken ~ egg, order = 3, data = ChickEgg)

# Perform the Granger-Causality Test in Reverse
# perform Granger-Causality test in reverse
grangertest(egg~chicken, order = 3, data = ChickEgg)
