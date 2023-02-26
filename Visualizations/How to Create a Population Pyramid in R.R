# make this reproducible 
set.seed(1)

# create data frame
data <- data.frame(age=rep(1:100, 2), gender=rep(c("M", "F"), each=100))

# view data frame
data

# add population variable
data$population <- 1/sqrt(data$age) *runif(200, 10000, 15000)

# convert population varible to percentage
data$population <- data$population / sum(data$population) * 100

# view first six rows of dataet
head(data)

# load ggplot2()
library("ggplot2")

# create polulation pyramid
ggplot(data, aes(x = age, fill = gender,
                 y = ifelse(test = gender == "M",
                            yes = -population, no = population))) + 
  geom_bar(stat = "identity") +
  scale_y_continuous(labels = abs, limits = max(data$population) * c(-1,1)) +
  coord_flip()

# adding labels and titiles 
ggplot(data, aes(x=age, fill = gender, 
                 y=ifelse(test = gender == "M",
                           yes = -population, no = populaiton)))+
  geom_bar(stat = "identity") +
  scale_y_continuous(labels = abs, limits = max(data$population) * c(-1, 1)) +
  labs(title = "Population Pyramid", x = "Age", y = "Percent of population") +
  coord_flip()

# modifying the colors
# use scale_colour_manual()
ggplot(data, aes(x=age, fill = gender,
                 y = ifelse(test = gender == "M",
                            yes = -population, no = population))) +
  geom_bar(stat = "identity") +
  scale_y_continuous(labels = abs, limits = max(data$population) * c(-1, 1)) +
  labs(title = "Population Pyramid", x="Age" , y="Percent of population") +
  scale_colour_manual(values = c("Pink", "Steelblue"),
                      aesthetics = c("colour", "fill")) +
  coord_flip()
  
# Multiple Population Pyramids
# make this example reproducible
set.seed(1)

# create data frame
data_multiple <- data.frame(age=rep(1:100, 6),
                            gender = rep(c("M", "F"), each = 300),
                            country = rep(c("A", "B", "C"), each = 100, times = 2))

# add population variable
data_multiple$population <- round(1/sqrt(data_multiple$age)*runif(200, 10000, 15000), 0)

# view first six rows of dataset
head(data_multiple)
ggplot(data_multiple, aes(x = age, fill = gender,
                          y = ifelse(test = gender == "M",
                                     yes = -population, no = population))) + 
  geom_bar(stat = "identity") +
  scale_y_continuous(labels = abs, limits = max(data_multiple$population) * c(-1,1)) +
  labs(y = "Population Amount") + 
  coord_flip() +
  facet_wrap(~ country) +
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) #rotate x-axis labels

# modyfying theme
ggplot(data_multiple, aes(x = age, fill = gender,
                          y = ifelse(test = gender == "M",
                                     yes = -population, no = population))) + 
  geom_bar(stat = "identity") +
  scale_y_continuous(labels = abs, limits = max(data_multiple$population) * c(-1,1)) +
  labs(y = "Population Amount") + 
  coord_flip() +
  facet_wrap(~ country) +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))























