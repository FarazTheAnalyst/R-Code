# A dummy variable is a type of variable that we create in 
# regression analysis so that we can represent a categorical
# variable as a numerical variable that takes on one of two 
# values: zero or one.

# Step 1: Create the Data
# step1: Create the Data
df <- data.frame(income=c(45000, 48000, 54000, 57000, 65000, 69000,
                          78000, 83000, 98000, 104000, 107000),
                 age=c(23, 25, 24, 29, 38, 36, 40, 59, 56, 64, 53),
                 status=c('Single', 'Single', 'Single', 'Single',
                          'Married', 'Single', 'Married', 'Divorced',
                          'Divorced', 'Married', 'Married'))

# view data frame
df

# Step 2: Create the Dummy Variables
# create dummy variables
married <- ifelse(df$status == "Married", 1, 0)
divorced <- ifelse(df$status == "Divorced", 1, 0)

# create data frame to use for regression
df_reg <- data.frame(income = df$income,
                     age = df$age,
                     married = married,
                     divorced = divorced)

# view data frame
df_reg

# step3: Perform Linear Regression
# create regression model
model <- lm(income ~ age + married + divorced, data = df_reg)

# view regression model output
summary(model)




















