# Example: How to Use SMOTE in R
# make this example reproducible
set.seed(0)

# create data frame with one reponse variable and two predictor variables
df <- data.frame(y=rep(as.factor(c("Yes", "No")), times=c(90, 10)),
                 x1=rnorm(100),
                 x2=rnorm(100))

# veiw first sex rows of data frame
head(df)

# view distribution of response variable 
table(df$y)

install.packages("DMWR")
library(DMWR)

# use SMOTE to create new dataset that is more balanced
new_df <- SMOTE(y ~ ., df, perc.over = 2000, perc.under = 400)

# view distribution of reponse vraible in new dataset
table(new_df$y)
