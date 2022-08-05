# Debugging your Code
# Reading error messages
"a" + 1
data.frame(1:10, 10:1,)
# Caring about warnings (or not)
x <- 1:10
y <- if(x < 5) 0 else 1

x <- 4
sqrt(x - 5)
plot(1:10, 10:1, color = "green")
# Going Bug Hunting


as.numeric(50)
print(logit(as.numeric(50)))


logitpercent("50%")
traceback()
debug(logit)
logitpercent("50%")



