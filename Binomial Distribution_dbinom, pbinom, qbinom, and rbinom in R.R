# BINOMIAL DISTRIBUTION

#DBINOM
# Returns the value of the probability density function of the binomial distribution

# finds the probability of getting a certain number of successes (x) in a certain number of trials (size) where the probability 
# of success on each trial is fixed (prob).

# Example 1: Bob makes 60% of his free-throw attempts. If he shoots 12 free throws, what is the probability that he makes exactly 10?
dbinom(10, size = 12, prob = 0.6) 
# probability of 10 successes during 12 trials where the probability of success on each trial is 0.6



# Example 2 : Sasha flips a fair coin 20 times. What is the probability that the coin lands on heads exactly 7 times?
dbinom(7, size = 20, prob = .5)

###################################################################################################################################

#PBINOM
# Returns the value of the cumulative density function (cdf) of the binomial distribution given a certain random variable q, 
# number of trials (size) and probability of success on each trial (prob)

# Simply, returns the area to the left of a given value q in the binomial distribution. If you're interested in the area to the right 
# of a given value q, you can simply add the argument lower.tail = FALSE

# Example 1: Joe flips a fair coin 5 times. What is the probability that the coin lands on heads more than 2 times?
pbinom(2, size = 5, prob = 0.5)



# Example 2: Suppose Tyler scores a strike on 30% of his attempts when he bowls. If he bowls 10 times, what is the probability that he 
#           scores 4 or fewer strikes?
pbinom(4, size = 10, prob = .30)

#################################################################################################################################

#QBINOM
# Returns the value of the inverse cumulative density function (cdf) of the binomial distribution given a certain random variable q, 
# number of trials (size) and probability of success on each trial (prob).

# Example 1: Find the 10th quantile of a binomial distribution with 10 trials and prob
#            of success on each trial = 0.4
qbinom(.10, size=10, prob=.4)

#################################################################################################################################

#RBINOM
# generates a vector of binomial distributed random variables given a vector length n, number of trials (size) and probability of 
# success on each trial (prob).

# Example 1 : Generate a vector that shows the number of successes of 10 binomial experiments with
#             100 trials where the probability of success on each trial is 0.3.
results <- rbinom(10, size=100, prob=.3)
results














