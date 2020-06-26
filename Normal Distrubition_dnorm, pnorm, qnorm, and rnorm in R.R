# NORMAL DISTRIBUTION

# DNORM 
# Returns the value of the probability density function of the normal distribution
# dnorm = (x , mean , std.)

# Define a vector
x <- seq(-4,4, length = 100)
y <- dnorm(x)

# Create a plot that shows the height of the probability distribution for each value in x
plot(x,y)

# OR
#plot x and y as a scatterplot with connected lines (type = "l") and add an x-axis with custom labels
plot(x,y, type = "l", lwd = 2, axes = FALSE, xlab = "", ylab = "")
axis(1, at = -3:3, labels = c("-3s", "-2s", "-1s", "mean", "1s", "2s", "3s"))

######################################################################################################

# PNORM
# Return the value of cumulative cumulative density function of the normal distribution.
x <- seq(-4,4, length = 100)
y <- pnorm(x, lower.tail = FALSE)
plot(x,y)

# Example 1: Suppose the height of males at a certain school is normally distributed with a 
#             mean of ??=70 inches and a standard deviation of ?? = 2 inches. Approximately 
#             what percentage of males at this school are taller than 74 inches?

# find percentage of males that are taller than 74 inches in a population with mean = 70 and sd = 2
pnorm(74,mean = 70, sd =2, lower.tail = FALSE)



# Example 2:  Suppose the weight of a certain species of otters is normally distributed with a 
#             mean of ??=30 lbs  and a standard deviation of ?? = 5 lbs. Approximately what percentage 
#             of this species of otters weight less than 22 lbs?
pnorm(22, mean = 30, sd =5)



# Example 3:  Suppose the height of plants in a certain region is normally distributed with 
#             a mean of ??=13 inches  and a standard deviation of ?? = 2 inches. Approximately what 
#             percentage of plants in this region are between 10 and 14 inches tall?

# lower than 10 inches tall plants
pnorm(10, mean = 13, sd = 2)

# lower than 14 inches tall plants
pnorm(14, mean = 13, sd =2)

# Probability between 14 inches and 10 inches plants
pnorm(14, mean = 13, sd =2) - pnorm(10, mean = 13, sd = 2)




# Example 4: The height of plants in a certain garden are normally distributed with a 
#             mean of 41.9 inches and a standard deviation of 5.3 inches.
#             Use the Empirical Rule to estimate what percentage of plants are less 
#             than 26.0 inches tall.
pnorm(26, mean = 41.9, sd = 5.3) # 26.0 is located three standard deviations below the 3 sd of the mean (<0.15%)
# 99.8% of data values falls within 3 sd of mean :
# Since it's normal distribution we know that 99.7% of the data between mean and 3 sd of mean
34 + 13.5 + 2.35 # makes 49.85

# 50% of data values fall above the mean in a normal distribution, a total of 50% + 49.85% = 99.85% of values fall above 26.0. 
# This means that 100% - 99.85% = 0.15% of values fall below 26.0.
# Thus, 0.15% of plants are less than 26.0 inches tall.



# Example 5: The height of plants in a certain garden are normally distributed with a mean of 30.9 inches and a standard deviation 
#            of 5.5 inches.
#            Use the Empirical Rule to estimate what percentage of plants are between 19.9 and 41.9 inches tall.
pnorm(19.9, mean = 30.9, sd = 5.5) # makes 0.02275013 which is 2.2% 
# on the left side of the mean (less than mean)
pnorm(41.9, mean = 30.9, sd = 5.5) # makes 0.9772499 which is 97.7% 
# on the right side of the  (more than mean)
0.9772499 - 0.02275013 # 0.9544998 which is 95% of the data is between 19.9 and 41.9


# Example 6: The height of plants in a certain garden are normally distributed with a mean of 37.7 inches and a standard deviation 
#            of 3.5 inches.
#            Use the Empirical Rule to estimate what percentage of plants are less than 48.2 inches tall.
pnorm(48.2, mean = 37.7, sd = 3.5) # 99.8% of the data is less than 48.2 inches



# Example 7: The height of plants in a certain garden are normally distributed with a mean of 49.4 inches and a standard deviation 
#            of 5.8 inches.
#            Use the Empirical Rule to estimate what percentage of plants are between 37.8 and 61.0 inches tall.
pnorm(37.8, mean = 49.4, sd = 5.8)
pnorm(61, mean = 49.4, sd = 5.8)

pnorm(61, mean = 49.4, sd = 5.8) - pnorm(37.8, mean = 49.4, sd = 5.8) # 95% of data 

##########################################################################################################################

# QNORM
# Returns the value of the inverse cumulative density function of the normal distrubition.

# Simply use qnorm to find out what the z-score of the pTH quartile of the normal distrubition.
# Example: z-score of 99th quartile of the standard normal distribution.
qnorm(0.99)  # mean = o , sd = 1 by default

# Example: Z-score of the 95th quantile of the standard normal distribution 
qnorm(0.95)

# Example: Z-score of the 10th quantile of the standard normal distribution 
qnorm(0.10)

########################################################################################################################

# RNORM
# Generates a vector of normally distributed random variables given:
#       p = vector length
#       a = population
#       mean
#       standard deviation

# Example 1: Genrate a vector of 5 normally distributed randam variables with;
#            mean = 10, sd = 2.

five <- rnorm(5, mean = 10, sd = 1)


# Example 2: Generate a vector of 1000 normally distributed random variables with mean=50 and sd=5
narrowDistribution <- rnorm(1000, mean = 50, sd = 15)

# Example 3: Generate a vector of 1000 normally distributed random variables with mean=50 and sd=25
wideDistribution <- rnorm(1000, mean = 50, sd = 25)

# Create a histogram view
par(mfrow = c(1,2))  # 1 row, 2 columns
hist(narrowDistribution, breaks = 50, xlim = c(-50, 150))
hist(wideDistribution, breaks = 50, xlim = c(-50, 150))




