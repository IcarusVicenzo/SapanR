# (1.)
ages_vector <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27, 22, 37,
                 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 42, 53, 41, 51,
                 35, 24, 33, 41)

# 1a.) How many data points?
# 1b.) Write the R code and its output.
length(ages_vector)
# Output: 34


# (2.) Find the reciprocal of ages
ages_reciprocal <- 1 / ages_vector
ages_reciprocal

#


# (3.)
ages_extended <- c(ages_vector, 0, ages_vector)
ages_extended
# Now ages_extended has 69 elements


# (4.) Sort the ages
sorted_ages <- sort(ages_vector)
sorted_ages
#Output [1] 17 18 19 20 22 22 24 25 27 27 28 29 31 33 34 34 35 35 36 37 37 37
#Output [23] 39 41 41 42 42 46 49 50 51 52 53 57


# (5.) Minimum and maximum age
min_age <- min(ages_vector)
max_age <- max(ages_vector)
min_age
max_age
#Output [1] 17
#Output [1] 57


# (6.) Set up a new vector named measurements
measurements <- c(2.4, 2.8, 2.1, 2.5, 2.4, 2.2, 2.5, 2.3, 2.5, 2.3, 2.4, 2.7)

# 6a.)
# 6b.)
# Number of data points
length(measurements)
# Output: 12


# (7.) Double the values of measurements
measurements_doubled <- measurements * 2
measurements_doubled
#What happen to the data?
# -Every value is multiplied by 2, creating a new vector.


# (8.) Generate sequences

# 8.1 Integers from 1 to 100
seq_1_100 <- 1:100
# 8.2 Numbers from 20 to 60
seq_20_60 <- 20:60              
# 8.3 Mean of numbers 20 to 60
mean_seq_20_60 <- mean(seq_20_60) 
# 8.4 Sum of numbers 51 to 91
sum_seq_51_91 <- sum(51:91)      
# 8.5 Integers from 1 to 1,000

# 8a.) Number of data points from 8.1 to 8.4
#8.1 (1:100)	Data points: 100
#8.2 (20:60)	Data points: 41
#8.3 (mean)	Data Points: 1
#8.4 (sum)	Data Points: 1
#Total data points = 100 + 41 + 1 + 1 = 143

# 8b.)

# 8c.)
# Maximum of first 10 numbers from 1 to 1000
seq_1_1000 <- 1:1000
max_first_10 <- max(seq_1_1000[1:10])
max_first_10


# (9.) Integers between 1 and 100 not divisible by 3,5,7
filtered_numbers <- Filter(function(i) { all(i %% c(3,5,7) != 0) }, 1:100)
filtered_numbers


# (10.) Sequence backwards from 1 to 100
seq_backwards <- rev(1:100)
seq_backwards


# (11.) Natural numbers below 25 that are multiples of 3 or 5
numbers_1_24 <- 1:24
multiples_3_or_5 <- numbers_1_24[numbers_1_24 %% 3 == 0 | numbers_1_24 %% 5 == 0]
multiples_3_or_5
sum_multiples_3_or_5 <- sum(multiples_3_or_5)
sum_multiples_3_or_5

#a. How many data points from 10 to 11?
#10	Data points: 100
#11	Data Points: 11

#b. Write the R code and its output from 10 and 11.
# Step 10
#[1] 100 99 98 ... 3 2 1
# Step 11
#[1] 3 5 6 9 10 12 15 18 20 21 24
#[1] 143

# (12.)
#Description of the Output
#The code produces an error because the expression `x + 5 +` is incomplete, so R keeps waiting for more input and then reports an unexpected `}`. When written correctly, R evaluates the block and assigns the value of the last complete expression as the output.


# (13.) Access specific scores
scores <- c(72, 86, 92, 63, 88, 89, 91, 92, 75, 75, 77)
second_score <- scores[2]
third_score <- scores[3]
second_score
third_score

# (14.) Replace NAs in a vector for display
vector_with_na <- c(1, 2, NA, 4, NA, 6, 7)
print(vector_with_na, na.print = "-999")


# (15.) Change class of a vector
numeric_vector <- c(2, 3, 4)
original_class <- class(numeric_vector)
class(numeric_vector) <- "foo"
new_class <- class(numeric_vector)
original_class
new_class
