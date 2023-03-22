# create data frame
data <- data.frame(team = c("Spurs", "Lakers", "Pistons", "Mavs"),
                   avg_points = c(102, 104, 96, 97))

data

# add index column to data frame
data$index <- 1:nrow(data)

# veiw data
data

# load tidyverse package
library("tidyverse")

# create data frame
data <- data.frame(team = c('Spurs', 'Lakers', 'Pistons', 'Mavs'),
                   avg_points = c(102, 104, 96, 97))

# add index column to data frame
data <- tibble::rowid_to_column(data, "index")

# view data
data
