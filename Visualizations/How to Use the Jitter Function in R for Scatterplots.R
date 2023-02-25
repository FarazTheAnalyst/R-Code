# define vectors of heights and weights 
weights <- runif(100, 160, 240)
heights <- (weights/3) +rnorm(100)

# create data frame of heights and weights
data <- as.data.frame((cbind(weights, heights)))

# view first six rows of data frame
head(data)

# create scatter plot of heights vs weights
plot(data$weights, data$heights, pch=16, col="steelblue")

# create data frame
games_started <- sample(1:10, 300, TRUE)
points_per_games <- 3*games_started + rnorm(300)
data <- as.data.frame(cbind(games_started, points_per_games))

# view first six rows of data frame
head(data)

# create scatter plot of games started vs average per game
plot(data$games_started, data$points_per_games, pch=16, col="#F667D4")

# add jitter to games started to remove overlapping
plot(jitter(data$games_started), data$points_per_games, pch=16, col="purple")
plot(jitter(data$games_started, 2), data$points_per_games, pch=16, col="orange")
plot(jitter(data$games_started, 20), data$points_per_games, pch=16, col="gold")

# jittering provides a better view of the data
games_started <- sample(1:5, 100, TRUE)
points_per_games <- 3*games_started + rnorm(100)
data <- as.data.frame(cbind(games_started, points_per_games))

games_twos <- rep(2, 200)
points_twos <- 3*games_twos + rnorm(100)

data_twos <- as.data.frame(cbind(games_twos, points_twos))
names(data_twos) <- c("games_started", "points_per_games")
head(data_twos)
head(data)
all_data <- rbind(data, data_twos)
head(all_data)

plot(all_data$games_started, all_data$points_per_games, pch=16, col="green")

plot(jitter(all_data$games_started), all_data$points_per_games, pch=16, col="orange")

# increasing the amount o fitter by a little bit reveals this differece even more
plot(jitter(all_data$games_started, 1.5), all_data$points_per_games, pch=16, col="steelblue")




