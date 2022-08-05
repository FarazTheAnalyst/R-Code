# Understanding the five ways of specifying the subset
str(islands)
islands[]
islands[c(8, 1, 1, 42)]
islands[-(3:46)]
islands[islands < 20]
islands[islands > 20]
islands[c("Madagascar", "Cuba")]

# Subsetting data frames
str(iris)
iris[1:5, ]
iris[, c("Sepal.Length", "Sepal.Width")]
iris[, "Sepal.Length"]
iris[, "Sepal.Length", drop = FALSE]
iris["Sepal.Length"]
iris[1:5, c("Sepal.Length", "Sepal.Width")]

# Taking samples from data
?sample
sample(1:6, 6)
sample(1:6, 10, replace = TRUE)

set.seed(1)
sample(1:6, 10, replace = TRUE)
sample(1:6, 10, replace = TRUE)
set.seed(1)
sample(1:6, 10, replace = TRUE)
set.seed(123)
index <- sample(nrow(iris), 5)
index
iris[index, ]

# Removing duplicate data
duplicated(c(1, 2, 1, 3, 1, 4))
duplicated(iris)
which(duplicated(iris))
iris[!duplicated(iris), ]
index <- which(duplicated(iris))
index
iris[-index, ]

# Removing rows with missing data
str(airquality)
airquality[]
complete.cases(airquality)
x <- airquality[complete.cases(airquality), ]
x
str(x)

x <- na.omit(airquality)
str(x)

# Adding Calculated Fields to Data
# Doing arithmatic on columns of a data frame
x <- iris$Sepal.Length / iris$Sepal.Width
head(x)

# Using With and transform to improve code readability
y <- with(iris, Sepal.Length / Sepal.Width)
identical(x, y)
iris$ratio <- iris$Sepal.Length / iris$Sepal.Width
transform.iris <- transform(iris, ratio = Sepal.Length / Sepal.Width)
head(transform.iris$ratio)

# Creating subgroups or bins of data
# Using cut to creat a fixd number of subgroups
state.x77
frost <- state.x77[, "Frost"]
head(frost, 5)
cut(frost, 3, include.lowest = TRUE)

# Adding labels to cut
cut(frost, 3, include.lowest = TRUE, labels = c("Low", "Med", "High"))

# Using table to count the number of observations
x <- cut(frost, 3, include.lowest = TRUE, labels = c("Low", "Med", "High"))
table(x)

# Combining and Merging Data Sets
# Creating sample data to illustrate merging
state.x77
all.states <- as.data.frame(state.x77)
all.states
all.states$Name <- rownames(state.x77)
rownames(all.states) <- NULL
str(all.states)
all.states
# Creating a subset of cold states
cold.states <- all.states[all.states$Frost > 150, c("Name", "Frost")]
cold.states

# Creating a subset of large states
large.states <- all.states[all.states$Area >= 100000, c("Name", "Area")]
large.states

# Using the merge() function
# Using merge to find the intersection of data
?merge
merge(cold.states, large.states)  #all FALSE # natural join
merge(cold.states, large.states, all = TRUE)  #full outer join
merge(cold.states, large.states, all.x = TRUE)  #left outer join
merge(cold.states, large.states, all.y = TRUE)  #right outer join

# Finding the union (full outer join)
# Working with lookup tables
merge(cold.states, large.states, all = TRUE)
?match
index <- match(cold.states$Name, large.states$Name)
index
large.states[na.omit(index), ]

# Making sense of %in%
index <- cold.states$Name %in% large.states$Name
index
!is.na(match(cold.states$Name, large.states$Name))
cold.states[index, ]

# Sorting and Ordering Data
state.region
some.states <- data.frame(
   Region = state.region,
   state.x77)
some.states
some.states <- as.data.frame(state.x77)
some.states$Region <- state.region
some.states
some.states <- some.states[1:10, 1:3]
some.states

# Sorting vectors
# Sorting in ascending and decreasing order
?sort
sort(some.states$Population)
sort(some.states$Population, decreasing = TRUE)

# Sorting data frames
# Getting the order
order.pop <- order(some.states$Population)
order.pop
some.states$Population[order.pop]

# Sorting a data frame in ascending order
some.states[order.pop, ]
# sorting in decreasing order
order(some.states$Population)
order(some.states$Population, decreasing = TRUE)
some.states[order(some.states$Population, decreasing = TRUE), ]

# Sorting on more than one column
?with
index <- with(some.states, order(Region, Population))
some.states[index, ]

# Sorting multiple columns in mixed order
index <- with(some.states, order(-xtfrm(Region), Population))  #1st method
some.states[index, ]
# 2nd method
index <- order(-xtfrm(some.states$Region), some.states$Population)
some.states[index, ]

# Traversing Your Data with the Apply Functions
# Using the apply() function to summarize arrays
Titanic
str(Titanic)
apply(Titanic, 1, sum)
apply(Titanic, 3, sum)
apply(Titanic, 2, sum)
apply(Titanic, c(3, 4), sum)
apply(Titanic, c(2, 3), sum)
apply(Titanic, c(1, 4), sum)

# Using lapply() and sapply() to traverse a list or data frame
str(iris)
lapply(iris, class)
sapply(iris, class)
sapply(iris, mean)
sapply(iris, function(x) if(is.numeric(x)) mean(x) else NA)
sapply(iris, function(iris) if(is.numeric(iris)) mean(iris) else NA)

# Using tapply to create tabular summaries
str(iris)
tapply(iris$Sepal.Length, iris$Species, mean)
with(iris, tapply(Sepal.Length, Species, mean))

# Using tapply() to create higher-dimensional tables
mtcars
str(mtcars)
cars <- transform(mtcars,
                  am = factor(am, levels = 0:1,
                              labels = c("Automatic", "Manual")))
tapply(cars$mpg, cars$am, mean)
with(cars, tapply(mpg, am, mean))
with(cars, tapply(mpg, list(gear, am), mean))

# Using aggregate()
with(cars, aggregate(mpg, list(gear = gear, am = am), mean))

# Getting to know the Formula Interface
aggregate(mpg ~ gear + am, data = cars, mean)
?aggregate
# some more uses of formula interface
aov(mpg ~ gear + am, data = cars)
library("lattice")
xyplot(mpg ~ gear + am, data = cars)

# Whipping your Data into Shape
# Getting started with the reshape2 package
install.packages("reshape2")
library("reshape2")
goals <- data.frame(
  Game = c("1st", "2nd", "3rd", "4th"),
  Venue = c("Bruges", "Ghent", "Ghent", "Bruges"), 
  Granny = c(12, 4, 5, 6),
  Geraldine = c(5, 4, 2, 4),
  Gertrude = c(11, 5, 6, 7)
)

# Melting data to long format
mgoals <- melt(goals)
mgoals <- melt(goals, id.vars = c("Game", "Venue"))
mgoals

# Casting data to wide format
dcast(mgoals, Venue + Game ~ variable, sum)
dcast(mgoals, variable ~ Venue, sum)
dcast(mgoals, variable ~ Venue, mean)
dcast(mgoals, Venue ~ variable, sum)
x_variable + x_2 ~ y_variable + y_2 ~ z_variable
dcast(mgoals, Venue + variable ~ Game, sum)
library("ggplot2")
ggplot(mgoals, aes(x = variable, y = value, fill = Game)) +
  geom_bar(stat = "identity")












