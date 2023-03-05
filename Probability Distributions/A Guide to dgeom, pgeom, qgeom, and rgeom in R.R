# Example 1. A researcher is waiting outside of a library to ask 
# people if they support a certain law. The probability that 
# a given person supports the law is p = 0.2. What is the
# probability that the fourth person the researcher talks to
# is the first person to support the law?
dgeom(x=3, prob=.2)

# pgeom
# Example 2. A researcher is waiting outside of a library to
# ask people if they support a certain law. The probability 
# that a given person supports the law is p = 0.2. What is the
# probability that the researcher will have to talk to 3 or less
# people to find someone who supports the law?
pgeom(q=3, prob=.2)

# Example 3. A researcher is waiting outside of a library to ask
# people if they support a certain law. The probability that a given
# person supports the law is p = 0.2. What is the probability that
# the researcher will have to talk to more than 5 people to find
# someone who supports the law?
1- pgeom(q=5, prob=.2)

# qgeom
# Example 4. A researcher is waiting outside of a library to
# ask people if they support a certain law. The probability 
# that a given person supports the law is p = 0.2. We will 
# consider a "failure" to mean that a person does not support 
# the law. How many "failures" would the researcher need to experience
# to be at the 90th percentile for number of failures before the first success?
# qgeom
qgeom(p=.90, prob = .2)

# rgeom
# A researcher is waiting outside of a library to ask people
# if they support a certain law. The probability that a
# given person supports the law is p = 0.2. We will consider 
# a "failure" to mean that a person does not support the law. 
# How many "failures" would the researcher need to experience 
# to be at the 90th percentile for number of failures before the
# first success?

set.seed(0) #make this example reproducible
rgeom(n=10, prob=.2)














