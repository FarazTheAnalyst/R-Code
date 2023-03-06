# make this example reproducible
set.seed(1)

# create simple function to geerate random last names
randomNames <- function(n=5000) {
  do.call(paste0, replicate(5, sample(LETTERS, n, TRUE), FALSE))
}

# create data frame
df <- data.frame(last_name=randomNames(500),
                 gpa=rnorm(500, mean=82, sd=3))

# view first six rows of data frame
head(df)

# define function to obtain systematic sample
obtain_sys = function(N, n){
  k = ceiling(N/n)
  r=sample(1:k, 1)
  seq(r, r + k*(n-1), k)
}

# obtain systematic sample
sys_sample_df = df[obtain_sys(nrow(df), 100), ]

# view first six rows of data frame
head(sys_sample_df)

# view dimentions of data frame
dim(sys_sample_df)
