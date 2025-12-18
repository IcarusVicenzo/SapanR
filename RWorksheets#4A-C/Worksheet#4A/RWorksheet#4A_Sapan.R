
#1.
  
  shoe_df <- data.frame(
    shoe_size = c(6.5,9.0,8.5,8.5,10.5,7.5,9.5,10.0,13.0,7.5,
                  10.5,8.5,12.0,10.5,13.0,11.5,8.5,5.0,10.0,
                  6.5,8.5,10.5,8.5,11.0,10.5,9.0,13.0),
    height = c(66.0,68.0,64.5,65.0,70.0,74.0,70.0,71.0,74.0,
               72.0,74.5,67.0,71.0,71.0,77.0,72.0,59.0,62.0,
               72.0,64.0,67.0,69.0,73.0,72.0,72.0,69.0,70.0),
    gender = c("F","F","F","F","M","M","F","F","M","F","F","F",
               "M","M","M","M","F","F","M","F","F","M","M","M",
               "M","M","M")
  )
  
#a.
  
  str(shoe_df)
  summary(shoe_df)
  
#b. 
  
  male_subset <- subset(shoe_df, gender == "M",
                        select = c(shoe_size, height))
  female_subset <- subset(shoe_df, gender == "F",
                          select = c(shoe_size, height))
  
  male_subset
  female_subset
  
#c. 
  
  mean_shoe_size <- mean(shoe_df$shoe_size)
  mean_height <- mean(shoe_df$height)
  
  mean_shoe_size
  mean_height
  
#d. 
  
  correlation_value <- cor(shoe_df$shoe_size, shoe_df$height)
  correlation_value
  
  
  

#2.

    
    months_vector <- c("March","April","January","November","January",
                       "September","October","September","November","August",
                       "January","November","November","February","May","August",
                       "July","December","August","August","September","November",
                       "February","April")
  
  months_factor <- factor(months_vector)
  months_factor
  
  
  

#3. 

    
    summary(months_vector)
  summary(months_factor)
  
  
  
  
#4.
  
    
    direction_vector <- c("East","West","West","West","West",
                          "North","North","North","East")
  
  direction_factor <- factor(direction_vector,
                             levels = c("East","West","North"))
  
  print(direction_factor)
  

  
  
#5.
  
#a.
  import_march <- data.frame(
    Students = c("Male", "Male", "Male", "Female", "Female", "Female"),
    Strategy1 = c(8, 4, 0, 14, 10, 6),
    Strategy2 = c(10, 8, 6, 4, 2, 0),
    Strategy3 = c(8, 6, 4, 15, 12, 9)
  )
  
  write.csv(import_march, "import_march.csv", row.names = FALSE)

#b
  View(import_march)
  print(import_march)
  
  
  
  
#6. 

#a
  selected_number <- as.integer(
    readline(prompt = "Enter a number from 1 to 50: ")
  )
  
  
  if (is.na(selected_number)) {
    cat("Invalid input. Please enter a number.\n")
  } else if (selected_number < 1 || selected_number > 50) {
    cat("The number selected is beyond the range of 1 to 50\n")
  } else if (selected_number == 20) {
    cat("TRUE\n")
  } else {
    cat("You entered:", selected_number, "\n")
  }
  
  
    
    
    
#7. 
    
    snack_price <- as.integer(
      readline(prompt = "Enter the price of the snack (divisible by 50): ")
    )
  
  if (snack_price %% 50 != 0 || snack_price <= 0) {
    cat("The price must be a positive number divisible by 50\n")
  } else {
    bills <- c(1000, 500, 200, 100, 50)
    bill_count <- 0
    remaining_amount <- snack_price
    
    for (bill in bills) {
      bill_count <- bill_count + remaining_amount %/% bill
      remaining_amount <- remaining_amount %% bill
    }
    
    cat("Minimum number of bills needed:", bill_count, "\n")
  }
  

    
    
#8. STUDENT GRADES
    
    student_grades <- data.frame(
      name = c("Annie", "Thea", "Steve", "Hanna"),
      grade1 = c(85, 65, 75, 95),
      grade2 = c(65, 75, 55, 75),
      grade3 = c(85, 90, 80, 100),
      grade4 = c(100, 90, 85, 90)
    )
  
  print(student_grades)
  
  
#b. Average score over 90 (without rowMeans)
  
  for (i in 1:nrow(student_grades)) {
    total_score <- student_grades[i,2] +
      student_grades[i,3] +
      student_grades[i,4] +
      student_grades[i,5]
    average_score <- total_score / 4
    
    if (average_score > 90) {
      cat(student_grades$name[i],
          "’s average grade this semester is",
          average_score, "\n")
    }
  }
  
  
#c. Difficult tests (average < 80)
  
  for (j in 2:5) {
    test_average <- sum(student_grades[, j]) /
      nrow(student_grades)
    
    if (test_average < 80) {
      cat("The", j - 1, "th test was difficult.\n")
    }
  }
  
  
#d. Highest score exceeding 90
  
  for (i in 1:nrow(student_grades)) {
    scores <- as.numeric(student_grades[i, 2:5])
    highest_score <- sort(scores, decreasing = TRUE)[1]
    
    if (highest_score > 90) {
      cat(student_grades$name[i],
          "’s highest grade this semester is",
          highest_score, "\n")
    }
  }
  
  