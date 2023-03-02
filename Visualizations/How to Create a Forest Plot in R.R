# forest plot in R
# create data 
df <- data.frame(study=c('S1', 'S2', 'S3', 'S4', 'S5', 'S6', 'S7'),
                 index=1:7,
                 effect=c(-.4, -.25, -.1, .1, .15, .2, .3),
                 lower=c(-.43, -.29, -.17, -.02, .04, .17, .27),
                 upper=c(-.37, -.21, -.03, .22, .24, .23, .33))

# view data
head(df)

# load ggplot2
library("ggplot2")

# create forest plot
ggplot(data=df, aes(y=index, x=effect, xmin=lower, xmax=upper)) +
  geom_point() + 
  geom_errorbar(height=.1)+
  scale_y_continuous(name="", breaks = 1:nrow(df), labels=df$study)

# load ggplot2
library("ggplot2")

# create forest plot
ggplot(data=df, aes(y=index, x=effect, xmin=lower, xmax=upper)) +
  geom_point() +
  geom_errorbar(height=.1) +
  scale_y_continuous(breaks = 1:nrow(df), labels = df$study) +
  labs(title="Effect Size by Study", x="effect Size", y="Study") +
  geom_vline(xintercept = 0, color="black", linetype="dashed", alphs=.5) +
  theme_minimal()

# modify the loook by changing the theme_classic
ggplot(data=df, aes(y=index, x=effect, xmin=lower, xmax=upper)) +
  geom_point() +
  geom_errorbar(height=.1) +
  scale_y_continuous(breaks = 1:nrow(df), labels = df$study) +
  labs(title="Effect Size by Study", x="effect Size", y="Study") +
  geom_vline(xintercept = 0, color="black", linetype="dashed", alphs=.5) +
  theme_classic()
