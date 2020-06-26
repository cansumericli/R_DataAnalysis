install.packages('dplyr')
library(dplyr)

# Extract Transform Load (ETL) Paradigm

# Extract simply means pulling data into the R Studio environment.
# Transform- essentially means cleaning data.
# Load-After transforming the data and we are confident that the data is clean 
#   and it meets our objective for analysis, we can load it into a database or 
#   application for end-user consumption.

# Read csv file and create a data frame
transaction <- read.csv("C:/Users/Cansu/Documents/GitHub_Repository/R_DataAnalysis/transactions_sample.csv")

head(transaction)

#Install psych
install.packages('psych')
library(psych)

describe(transaction) # this function giving a generally look of the data set.
summary(transaction)
dim(transaction)

# create a subset of the data between the range of the columns
subset_data <- subset(transaction, qty_ordered >100, select = (order_num : extended_price))

# create a subset of the data with selected columns
subset_data2 <- subset(transaction, qty_ordered >100, select = c(order_num , extended_price))

describe(subset_data2)
dim(subset_data2)

attach(subset_data2)

round(subset_data$unit_price)

#MEAN
mean(subset_data2$extended_price)

#MEDIAN
median(subset_data2$extended_price)

# MODE of Age (Used for Categorical values)
# We need to import a new library for that
install.packages('modeest')
library(modeest)

mfv(subset_data2$extended_price)

#SUMMARY
summary(subset_data2$extended_price)

# VARAINCE - Average distance from each data point to the data's mean
#1- Calculate distance between each point and the mean, so we get one number for every data point
distance <- transaction$unit_price - mean(transaction$unit_price)
distance

# Square the distance values
sqrd_distance <- (distance)^2
sqrd_distance

# Sum the outcome
sum_sqrd_distance = sum(sqrd_distance)
sum_sqrd_distance

# Divide them by num of data points -1 (1000 obsv -1)
sum_sqrd_distance/999

# Calculate wirh R
var(transaction$unit_price)

# BAR PLOT
barplot(subset_data$unit_price)

# SCATTER PLOT
splot <- transaction[c('unit_price', 'extended_price')]
head(splot)

plot(x = splot$unit_price, y=splot$extended_price, xlab = "Unit Price", ylab = 'Extended Price', 
     xlim = c(0,400), ylim = c(0, 4000), main = 'Unit Price vs Extended Price')

# STANDARD DEVIATION
sqrt(var(transaction$unit_price))

# OR
sd(transaction$unit_price)

# MEAN ABSOLUTE DEVIATION
mad = transaction$unit_price - mean(transaction$unit_price)
mean(abs(mad))

# In order to learn about the function, you can put a '?' then run the line
?describe() 

# QUANTILES
quantile(transaction$unit_price)

# create a quantiles object 
quantiles <- quantile(transaction$unit_price)
  
# BOX PLOT
ggplot(transaction, aes(y = unit_price)) + geom_boxplot()

?ggplot()

# bar plot with the quantiles which we defined as an object before
barplot(quantiles) 


# Percentiles, are a generalized version of quartiles.They can split the data into 5 or 10 pieces
# By default the "quantile" function returns the quartiles of the data but we can adjust this by "probs' or "seq"

quantile(transaction$unit_price, probs = c(0, 0.2, 0.4, 0.6, 0.8, 1))
#OR
quantile(transaction$unit_price, probs = seq(0, 1, 0.25)) #seq(from, to, by)

# INTERQUARTILE RANGE
# It is the distance between the 25th and 75th percentile, which is also he height of the box in boxplot
quantile(transaction$unit_price, 0.75) - quantile(transaction$unit_price, 0.25)

#OUTLIERS : Data that is substabtially different from the others
# data < Q1 - 1.5 * IQR or
# data > Q3 + 1.5 * IQR

IQR(x = transaction$unit_price)
# OR
iqr <- quantile(transaction$unit_price, 0.75) - quantile(transaction$unit_price, 0.25)

lower_treshold <- quantile(transaction$unit_price, .25) - 1.5 *iqr
upper_treshold <- quantile(transaction$unit_price, .75) + 1.5 *iqr

lower_treshold
upper_treshold

head(transaction)



