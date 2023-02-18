# define probability of beaing amale and preferring baseball
p_male_baseball <- 0.113

# define probability of preferring baseball
p_baseball <- 0.226

# calculate probability of being male, given taht individual prefers baseball
p_male_baseball / p_baseball

# calculate conditional probability using table
# create data frame to hold survery responses
df <- data.frame(gender=rep(c("Male", "Female"), each=150),
                 sport=rep(c("Baseball", "Basketball", "Football", "Soccer",
                         "Baseball", "Basketball", "Football", "Soccer"),
                 times=c(34, 40, 58, 18, 34, 52, 20, 44)))

# create two-way table from data frame
survey_data <- addmargins(table(df$gender, df$sport))

# veiw table
survey_data

# extract value n second row and first column
survey_data[2, 1]

# calculate probability of being male, given that individual prefers baseball
survey_data[2, 1] / survey_data[3, 1]

# calculate probability of prefering baseketball, given that individual is female
survey_data[1, 2] / survey_data[1, 5]




















