# 1. Write a function that takes a vector as input and returns the number of missing values in the vector.

missingvalues.vector <- function(thevector)
{
  missingvalue.check <- is.na(thevector)
  return(sum(missingvalue.check))
}

# 2. Write a function that takes a data frame as input and returns a named vector with the number of missing values in each column of the 
# data frame. (The names of the entries should be the corresponding column names of the data frame.) You may use the function from the 
# previous question as part of your solution.

missingvalues.df <- function(thedf)
{
  number.columns <- ncol(thedf)
  column.names <- colnames(thedf)
  for (i in 1:length(column.names)
  {
    return(column.names[i], missingvalues.vector(thedf$column.names[1]))
  }
}

# 3. Write a function that takes a numeric vector as input and uses it to determine the minimum, the maximum, the mean, the median, the first 
# quartile, the third quartile, the standard deviation of the vector, and the number of missing values. Do not use any built-in functions to 
# do this. Return a named list with the eight desired values in an order you deem best. (You may, if you like, use the function you wrote for 
# question 1.)

sample.statistics <- function(thevector)
{
  min.value <- thevector[1]
  max.value <- thevector[1]
  sum.x <- 0
  sum.xsquared <- 0
  n.obs <- length(thevector)
  n.missing <- missingvalues.vector(thevector)
  n.data <- n.obs - n.missing
  sorted.vector <- c()
  for (i in 1:length(thevector))
  {
    smallest <- None
    j <- 0
    if (is.na(thevector[i])
    {
      break
    }
    if (thevector[i] < min.value)
    {
      min.value <- thevector[i]
    }
    if (thevector[i] > max.value)
    {
      max.value <- thevector[i]
    }
    sum.x <- sum.x + thevector[i]
    sum.xsquared <- sum.xsquared = thevector[i]^2
    for (j in 1:length(thevector))
    {
      if (smallest == None | thevector[j] < smallest)
      {
        smallest <- thevector[j]
        sorted.vector <- c(sorted.vector, smallest)
      }
    }
  }
  mean <- sum.x / n.data
  std.dev <- ((n.data * sum.xsquared) - (sum.x)^2)/ (n.data * (n.data - 1))
  median <- sorted.vector[round(0.5 * length(sorted.vector), 0)]
  fst.quartile <- sorted.vector[round(0.25 * length(sorted.vector), 0)]
  thd.quartile <- sorted.vector[round(0.75 * length(sorted.vector), 0)]
  sample.statistics <- c(mean, std.dev, n.missing, min.value, fst.quartile, median, thd.quartile, max.value) 
  return(sample.statistics)
}

# 4. Write a function that takes a character or factor vector and determines the number of distinct elements in the vector, the most commonly 
# occurring element, the number of times the most commonly occurring element occurs, and the number of missing values. (Be sure to handle ties 
# gracefully.) Have the function return a named list with the desired information in a logical order.

vector.elements <- function(supplied.vector)
{
  required(plyr)
  element.names <- unique(supplied.vector)
  n.elements <- length(element.names)
  count.list <- list()
  for (i in supplied.vector)
  {
    if (is.element(i, element.names))  #  from Michael Wise
    {
      count.list[[i]] <- count.list[[i]] + 1
    } else
    {
      listlength <- length(count)
      count.list[[i]] <- 1
      element.names <- c(element.names, i)
    }
  }
  
}
# 5. Write a function that takes a logical vector and determines the number of true values, the number of false values, the proportion of true 
# values, and the number of missing values. Have the function return a named list with the desired information in a logical order.


#6. Write a function that takes as its input a data frame and returns a summary of its columns using the functions you write for questions 3-5. 
# You may assume that all columns will be of the three types in those questions. You are expected to use the functions you have written in the 
# previous questions, so you do not have to write them again by scratch. Return the desired information in a format that you deem best. 
#(One suggestion would be a named list of lists, but I leave it to your judgment.)