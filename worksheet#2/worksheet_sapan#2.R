# 1. Using Vectors

cat("1. Using Vectors\n")

# a. Sequence from -5 to 5
cat("a. Sequence from -5 to 5:\n")
sequence_a <- -5:5
print(sequence_a)
cat("Description: The output shows a sequence of integers from -5 to 5, inclusive, with each number increasing by 1.\n\n")

# b. Sequence from 1 to 7
cat("b. Sequence from 1 to 7:\n")
x <- 1:7
print(x)
cat("Value of x: The vector x contains the values 1, 2, 3, 4, 5, 6, 7.\n\n")

# 2. Using seq() function
cat("2. Using seq() function:\n")
seq_vector <- seq(1, 3, by = 0.2)
print(seq_vector)
cat("Description: The output shows a sequence from 1 to 3 with a step size of 0.2, creating 11 equally spaced values.\n\n")

# 3. Worker Ages Analysis
cat("3. Worker Ages Analysis:\n")
ages <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35, 24, 33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26, 18)

# a. Access 3rd element
cat("a. Access 3rd element:\n")
third_element <- ages[3]
print(third_element)

# b. Access 2nd and 4th elements
cat("b. Access 2nd and 4th elements:\n")
second_fourth <- ages[c(2, 4)]
print(second_fourth)

# c. Access all but the 1st element
cat("c. Access all but the 1st element:\n")
all_but_first <- ages[-1]
print(all_but_first)
cat("\n")

# 4. Named Vector
cat("4. Named Vector:\n")
x <- c("first" = 3, "second" = 0, "third" = 9)
cat("Original named vector:\n")
print(x)

# Access specific elements by name
cat("Access elements 'first' and 'third':\n")
selected_elements <- x[c("first", "third")]
print(selected_elements)
cat("Description: The output shows a named vector where each value has a corresponding name.\n\n")

# 5. Sequence Modification
cat("5. Sequence Modification:\n")
# Create sequence from -3 to 2
x <- -3:2
cat("Original sequence:\n")
print(x)

# Modify 2nd element to 0
x[2] <- 0
cat("Modified sequence (2nd element changed to 0):\n")
print(x)
cat("Description: The second element of the vector (originally -2) has been changed to 0.\n\n")

# 6. Diesel Fuel Data
cat("6. Diesel Fuel Data:\n")
# Create data frame
month <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun")
price_per_liter <- c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00)
purchase_quantity <- c(25, 30, 40, 50, 10, 15)

fuel_data <- data.frame(
  Month = month,
  Price_per_Liter = price_per_liter,
  Purchase_Quantity = purchase_quantity
)

cat("Fuel data frame:\n")
print(fuel_data)

# Calculate average fuel expenditure
total_expenditure <- sum(price_per_liter * purchase_quantity)
total_quantity <- sum(purchase_quantity)
average_expenditure <- total_expenditure / total_quantity

cat("\nAverage fuel expenditure:\n")
print(average_expenditure)

# Using weighted.mean
weighted_avg <- weighted.mean(price_per_liter, purchase_quantity)
cat("Weighted mean:\n")
print(weighted_avg)
cat("\n")

# 7. Rivers Data Analysis
cat("7. Rivers Data Analysis:\n")
data <- c(
  length(rivers),
  sum(rivers),
  mean(rivers),
  median(rivers),
  var(rivers),
  sd(rivers),
  min(rivers),
  max(rivers)
)

names(data) <- c("Length", "Sum", "Mean", "Median", "Variance", "Standard_Deviation", "Min", "Max")
cat("Rivers data summary:\n")
print(data)
cat("\n")

# 8. Forbes Celebrity Data
cat("8. Forbes Celebrity Data:\n")
# Create vectors for Forbes data
power_ranking <- 1:25
celebrity_name <- c(
  "Tom Cruise", "Rolling Stones", "Oprah Winfrey", "U2", "Tiger Woods",
  "Steven Spielberg", "Howard Stern", "50 Cent", "Cast of the Sopranos",
  "Dan Brown", "Bruce Springsteen", "Donald Trump", "Muhammad Ali",
  "Paul McCartney", "George Lucas", "Elton John", "David Letterman",
  "Phil Mickelson", "J.K Rowling", "Bradd Pitt", "Peter Jackson",
  "Dr. Phil McGraw", "Jay Lenon", "Celine Dion", "Kobe Bryant"
)
pay <- c(
  67, 90, 225, 110, 90, 332, 302, 41, 52, 88, 55, 44, 55, 40, 233, 34, 40, 47, 75, 25, 39, 45, 32, 40, 31
)

# Create data frame
forbes_data <- data.frame(
  Power_Ranking = power_ranking,
  Celebrity_Name = celebrity_name,
  Pay = pay
)

cat("Original Forbes data (first 10 rows):\n")
print(head(forbes_data, 10))

# b. Modify J.K. Rowling's data
forbes_data$Power_Ranking[forbes_data$Celebrity_Name == "J.K Rowling"] <- 15
forbes_data$Pay[forbes_data$Celebrity_Name == "J.K Rowling"] <- 90

cat("\nModified J.K. Rowling data:\n")
jk_rowling_data <- forbes_data[forbes_data$Celebrity_Name == "J.K Rowling", ]
print(jk_rowling_data)

cat("\nInterpretation:\n")
cat("The Forbes data shows the ranking and annual pay of the 25 most powerful celebrities.\n")
cat("After modification, J.K. Rowling is ranked 15th with an annual pay of $90 million.\n")
cat("The data reveals significant disparities in earnings among top celebrities,\n")
cat("with film directors and media personalities generally commanding higher pay\n")
cat("compared to some musicians and athletes.\n")

install.packages("usethis")
usethis::use_git_config(user.name="Leorenze Marc Sapan", user.email = "leornezemarc.sapan@students.isatu.edu.ph")