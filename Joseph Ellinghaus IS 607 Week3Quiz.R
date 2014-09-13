# 1. Write a function that takes a numeric vector and calculates the mean of the observations in the vector.
calc.mean <- function(vector.obs)
  {
  mean.value <- (sum(vector.obs)/(length(vector.obs))
  return(mean.value)
  }
# 2. Modify your function in the previous question so that it can handle a numeric vector with missing values.

# 3. Write a function that takes two numeric input values and calculates the greatest common divisor of the two numbers.
calc.gcd <- function(n1,n2)
  for (i in 1:min(n1,n2))
  {
    if((n1/i - trunc(n1/i) == 0) & (n2/i - trunc(n2/i) == 0))
    {
      gcd <- i
    } else
    {
      next
    }
  }
return(gcd)
    
# 4. Write a function that implements Euclid’s algorithm (you may need to do a bit of research to find this algorithm) 
# for finding the greatest common divisor of two numeric inputs.

# 5. Write a function that takes two numeric inputs x and y and calculates 𝑥2𝑦+2𝑥𝑦−𝑥𝑦2.
calc.eqn <- function(x,y)
  return(x^2*y + 2*x*y - x*y^2)

# 6. Read in the week-3-price-data.csv and week-3-make-model-data.csv files as data frames and then merge them by the 
# ModelNumber key. Leave the “all” parameters as their defaults. How many observations end up in the result? Is this what you would have expected?
cardataa <- read.table (file = "week-3-price-data.csv", header = TRUE, sep = ",")
cardatab <- read.table (file = "week-3-make-model-data.csv", header = TRUE, sep = ",")
cardata <- merge(x=cardataa, y=cardatab, by.x="ModelNumber", by.y="ModelNumber")
nrow(cardataa)  # [1] 28
nrow(cardatab)  # [1] 8
nrow(cardata)  # [1] 27

# 7. Use the data sets from the previous question, but this time merge them so that the rows from the price-data table all appear, 
# even if there is no match in the make-model table.
cardata <- merge(x=cardataa, y=cardatab, by.x="ModelNumber", by.y="ModelNumber", all = TRUE)
> nrow(cardata)
[1] 28

# 8. Take your result from question 7 and subset it so that only the 2010 vehicles are included.
cars2010 <- cardata[which("Year" = 2010), ]
# 9. Take your result from question 7 and subset it so that only the red cars that cost more than $10,000 are included.
RedcarsAbove10000 <- cardata[which("Color" = "Red" & "Price" >= 10000)]
# 10. Take your result from question 9 and subset it so that the ModelNumber and Color columns are removed.
MakeModelYearMileagePriceofRed10kcars <- RedcarsAbove10000[,c(2,4:8)]
# 11. Write a function that takes as input a character vector and returns a numeric vector with the numbers of characters in each 
# of the elements in the original vector.
charactercount <- function(chvector)
  for (i in 1:length(chvector))
{
  countvector[i] <- length(chvector[i])
}
return (countvector)

# 12. Write a function that takes two character vectors of equal length and concatenates them element by element with a space as the separator.
# Have the function die gracefully if the vectors are the same length.
concat.charactervector <- function(vect1, vect2)
  concat.vector <- ()
{
  for (i in length(vect1))
  {
    concat.vector <- append(concat.vector, vect1[i], vect2[i])
  }
}
return(concat.vector)

# 13. Write a function that takes a character vector and returns the substring of three characters that begins with the first vowel 
# in the string. Have the function handle gracefully substrings where this isn’t possible.
voweland2 <- function(chvector)
  va2 <- ()
{
  for (i in 1:length(chvector))
  {
    if (chvector[i] == "a")
  }
}
  
# 14. Suppose you have a data frame where one column gives the month (in numeric format), the next gives the day, 
# and the third column gives the year. Use R to create such a data frame (by hand is fine) and then add a fourth column 
# with the date in date format.

# 15. Illustrate the code necessary to take a string of MM-DD-YYYY format and convert it to a date.
# 16. Illustrate the code necessary to take a date and extract the month of the date.
# 17. Create a sequence of all of the dates from January 1, 2005, to December 31, 2014.2. Modify your function in the 
# previous question so that it can handle a numeric vector with missing values.
