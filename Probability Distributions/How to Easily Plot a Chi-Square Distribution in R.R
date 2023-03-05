# creating a density plot for chi-square distribution
curve(dchisq(x, df=10), from=0, to=40)

# modifying the density plot
curve(dchisq(x, df=10), from=0, to=40,
      main="Chi-Square Distribution  (df=10)", #add title
      ylab="Desnsity",  #chnage y-axis label
      lwd=2,  #increase line width to 2
      col="steelblue")

# filling in the Density plot
# create density curve
curve(dchisq(x, df=10), from=0, to=40, 
             main="Chi-Square Distribution (df=10",
             ylab="Density", 
             lwd=2)

# create vector of x values
x_vector <- seq(10, 40)

# create vector of chi-square deisity values
p_vector <- dchisq(x_vector, df=10)

# fill in portion of the density plot from 0 to 40
polygon(c(x_vector, rev(x_vector)), c(p_vector, rep(0, length(p_vector))),
        col=adjustcolor("red", alpha=0.3), border = NA)

# create density curve
curve(dchisq(x, df=10), from=0, to=40,
      main="Chi-Square Distribution (df=10)", 
      ylab="Density",
      lwd=2)

# create vector of x values
x_vector <- seq(0, 10)

# create vector of chi-square density values
p_vector <- dchisq(x_vector, df=10)


# fill in poriton of the density plot  from 0 to  40
polygon(c(x_vector, rev(x_vector)), c(p_vector, rep(0, length(p_vector))),
        col=adjustcolor("red", alpha=0.3), border=NA)


# create density curve
curve(dchisq(x, df = 10), from = 0, to = 40,
      main = 'Chi-Square Distribution (df = 10)',
      ylab = 'Density',
      lwd = 2)

# find upper and lower values for middle 95% of distribution
lower95 <- qchisq(.025, 10)
upper95 <- qchisq(.975, 10)
lower95
upper95

# create vector of x values
x_lower95 <- seq(0, lower95)
x_lower95

# create vector of chi-square density vlaues
p_lower95 <- dchisq(x_lower95, df=10)



# fill in portion of the density plot from 0 to lower 95% value
polygon(c(x_lower95, rev(x_lower95)), c(p_lower95, rep(0, length(p_lower95))),
        col = adjustcolor('red', alpha=0.3), border = NA)


# create vector of x values
x_upper95 <- seq(upper95, 40)

# create vector of chi-square values
p_upper95 <- dchisq(x_upper95, df=10)

# fill in protion of the density plot for upper 95% value to end of plot
polygon(c(x_upper95, rev(x_upper95)), c(p_upper95, rep(0, length(p_upper95))),
        col = adjustcolor("red", alpha=0.3), border = NA)


# create density curve
curve(dchisq(x, df=10), from = 0, to=40,
      main="Chi-Square Distribution (df, 10)",
      ylab="Density", 
      lwd = 2)

# find upper and lower values for middle 95% of distribution
lower95 <- qchisq(.025, 10)
upper95 <- qchisq(.975, 10)

# create vector of x values
x_vector <- seq(lower95, upper95)

# create vector of chi-square density values
p_vector <- dchisq(x_vector, df=10)

# fill in density plot
pOlygon(c(x_vector, rev(x_vector)), c(p_vector, rep(0, length(p_vector))),
       col=adjustcolor("red", alpha=0.3), border=NA)

polygon(c(x_vector, rev(x_vector)), c(p_vector, rep(0, length(p_vector))),
        col = adjustcolor('red', alpha=0.3), border = NA)




























