# load Kendall library and PrecipGL dataset
install.packages("Kendall")
library("Kendall")

# view dataset
PrecipGL

# Perform the Mann-Kendall Trend Test
MannKendall(PrecipGL)

# plot the time series data
plot(PrecipGL)

# add a smooth line to visualize the trend
lines(lowess(time(PrecipGL), PrecipGL), col="blue")

# Perform a seasonaly-adjusted Mann-Kendall Trend Test
SeasonalMannKendall(PrecipGL)
