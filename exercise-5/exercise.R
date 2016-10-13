# Exercise 5: Gates Foundation Educational Grants

# Read data into a variable called `grants` using the `read.csv` function
setwd("~/Desktop/m8-dataframes/exercise-5/data")
grants <- read.csv('gates_money.csv')
# Use the View function to look at your data
View(grants)

# Create a variable `spending` as the `total_amount` column of the dataset
spending <- (grants$total_amount)

# Confirm that your `spending` variable is a vector using the `is.vector` function
is.vector(spending)

# Create a variable `org` as the `organization` column of the dataset.
# Unfortunately, it will not be a vector by default, so you must transform it using the as.vector function
org1 <- (grants$organization)
is.vector(org1)
org <- as.vector(org1)
is.vector(org)

### Now you can ask some more interesting questions about the dataset.  Store your answers in variables ###

# What was the mean grant value?
mean.value <- mean(spending)

# What was the dollar amount of the largest grant?
max.value <- max(spending)

# What was the dollar amount of the smallest grant?
min.value <- min(spending)

# Which organization received the largest grant?
largest.grant <- org[grants$total_amount == max.value]

# Which organization received the smallest grant?
smallest.grant <- org[grants$total_amount == min.value]

# How many grants were awarded in 2010?
length(spending[grants$start_year == 2010])
