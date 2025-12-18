# =========================================
# [1] Creating Vectors using : operator
# =========================================

# 1a. Sequence from -5 to 5
seq_neg5_to_5 <- -5:5
seq_neg5_to_5
# Output: -5 -4 -3 -2 -1 0 1 2 3 4 5

# 1b. Sequence from 1 to 7
seq_one_to_seven <- 1:7
seq_one_to_seven
# Output: 1 2 3 4 5 6 7


# =========================================
# [2] Creating Vectors using seq()
# =========================================

# 2a. Sequence from 1 to 3 with step size 0.2
seq_decimal <- seq(1, 3, by = 0.2)
seq_decimal
# Output: 1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0


# =========================================
# [3] Workers' Ages Data
# =========================================

worker_ages <- c(
  34, 28, 22, 36, 27, 18, 52, 39, 42, 29,
  35, 31, 27, 22, 37, 34, 19, 20, 57, 49,
  50, 37, 46, 25, 17, 37, 43, 53, 41, 51,
  35, 24, 33, 41, 53, 40, 18, 44, 38, 41,
  48, 27, 39, 19, 30, 61, 54, 58, 26, 18
)

# 3a. Access 3rd element
third_age <- worker_ages[3]
third_age
# Output: 22

# 3b. Access 2nd and 4th elements
selected_ages <- worker_ages[c(2, 4)]
selected_ages
# Output: 28 36

# 3c. Access all except the first element
ages_except_first <- worker_ages[-1]
ages_except_first


# =========================================
# [4] Named Vector
# =========================================

named_values <- c(first = 3, second = 0, third = 9)

# 4a.) Print the results. Then access x[c("first", "third")]. Describe the output.
names(named_values)

# 4b.) Write the code and its output.
selected_named_values <- named_values[c("first", "third")]
selected_named_values
# Output: first = 3, third = 9


# =========================================
# [5] Modifying Vector Elements
# =========================================

sequence_values <- -3:2
sequence_values

# 5a.) Modify 2nd element and change it to 0;
x[2] <- 0
x

# 5b.) Write the code and its output.
sequence_values[2] <- 0
sequence_values
# Output changes second value from -2 to 0


# =========================================
# [6] Diesel Fuel Purchase Data
# =========================================

# 6a.) Create a data frame for month, price per liter (php) and purchase-quantity (liter). Write the codes.
# create vectors
fuel_month <- c("Jan", "Feb", "March", "Apr", "May", "June")
fuel_price_php <- c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00)
fuel_quantity_liters <- c(25, 30, 40, 50, 10, 45)

diesel_purchase_data <- data.frame(
  Month = fuel_month,
  Price_per_Liter = fuel_price_php,
  Purchase_Quantity = fuel_quantity_liters
)

diesel_purchase_data

#b. What is the average fuel expenditure of Mr. Cruz from Jan to June? Note: Use weighted.mean(liter, purchase)
average_fuel_cost <- weighted.mean(fuel_price_php, fuel_quantity_liters)
average_fuel_cost
# Output: ~58.92


# =========================================
# [7] Built-in Dataset: rivers
# =========================================

# 7a.)
rivers

river_statistics <- c(
  length(rivers),
  sum(rivers),
  mean(rivers),
  median(rivers),
  var(rivers),
  sd(rivers),
  min(rivers),
  max(rivers)
)

river_statistics

# 7b.)
# Output: 141 59164 591.184 425 88495.77 297.495 135 3710

#c. Write the code and its outputs.
#length(rivers) → 141 (there are 141 rivers)
#sum(rivers) → 59164 (total miles of all rivers)
#mean(rivers) → 591.18 (average river length)
#median(rivers) → 425 (middle value of lengths)
#var(rivers) → 88495.77 (variance of lengths)
#sd(rivers) → 297.50 (standard deviation)
#min(rivers) → 135 (shortest river)
#max(rivers) → 3710 (longest river)


# =========================================
# [8] Forbes Celebrity Ranking Data
# =========================================

# 8a.)
forbes_rank <- 1:25

celebrity_names <- c(
  "Tom Cruise", "Rolling Stones", "Oprah Winfrey", "U2", "Tiger Woods",
  "Steven Spielberg", "Howard Stern", "50 Cent", "Cast of the Sopranos",
  "Dan Brown", "Bruce Springsteen", "Donald Trump", "Muhammad Ali",
  "Paul McCartney", "George Lucas", "Elton John", "David Letterman",
  "Phil Mickelson", "J.K Rowling", "Brad Pitt", "Peter Jackson",
  "Dr. Phil McGraw", "Jay Leno", "Celine Dion", "Kobe Bryant"
)

celebrity_pay_million <- c(
  67, 90, 225, 110, 90, 332, 302, 41, 52, 88,
  55, 44, 55, 40, 233, 34, 40, 47, 75, 20,
  39, 43, 32, 40, 31
)

# 8b.)
forbes_rank[19] <- 15
celebrity_pay_million[19] <- 90

updated_jk_rowling <- data.frame(
  Power_Ranking = forbes_rank[19],
  Celebrity = celebrity_names[19],
  Pay_Million = celebrity_pay_million[19]
)

updated_jk_rowling

# 8c.) Interpret the data.
#The data shows that a celebrity’s power ranking depends on both influence and earnings, not just income. High earners like George Lucas and Steven Spielberg may have massive pay but lower power ranks, while influential figures like Tom Cruise rank high with moderate earnings. Updating J.K. Rowling’s rank and pay reflects her growing cultural and financial impact. Overall, Forbes’ ranking emphasizes visibility, influence, and popularity alongside income.

