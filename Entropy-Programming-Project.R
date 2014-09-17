# Entropy Programming Project

# Entropy Function

entropy <- function(myvector)
{
#myvector <- c(rep(c("a"), 10),  rep(c("b"), 15))
  n.members <- length(myvector) # number of observations
  level.names <- unique(myvector) # level identifiers
  levels <- length(level.names) # number of levels
  level.count <- vector(numeric) # used to capture the frequency of each level
  level.count <- rep(c(0),levels)
#  print(level.count)
  ent.sum <- 0  # the summation part of the Entropy equation
  for (j in 1:n.members) # iterate through the members of the vector
  {
#    cat('j = ',j)
    for (i in 1:levels) #  iterate through the levels
    {
#      cat('i = ',i)
      if (myvector[j] == level.names[i]) # check for a match to the level identifier
      {
        level.count[i] <- level.count[i] + 1 # increment the count for the level identifier
#        print(level.names[i], level.count[i])
        break
      }
    }
  }
  for (i in 1:levels)
  {
    ent.sum <- ent.sum + (level.count[i] / n.members) * log2(level.count[i] / n.members) # perform the summation part of the equation
  }
  ent.ropy <- -ent.sum
  return(ent.ropy)
}

#test.vector <- c(rep(c("a"), 10),  rep(c("b"), 15))
myentropy <- entropy(c(1, 0, 0, 1, 0, 0, 1, 1, 1))
print(myentropy)

## Infogain Function

infogain <- function(ent.df,ent.target,ent.attribute)
{
  require(plyr)
  df <- ent.df
  tar <- ent.target
  att <- ent.attribute
  sum.infogain <- 0
  n.members <- length(df) # number of total observations
  level.names <- unique(df$att) # level identifiers
  levels <- length(level.names) # number of levels
  for (j in 1:levels)
  {
    att.partition[j] <- df$tar[df$att == level.names[j]]  # attribute partition
    numb[j] <- length(att.partition[j]) # n sub j size of partition
    entropy.part[j] <- entropy(att.partition[j])  #entropy of partition
    sum.infogain <- sum.infogain + ((numb[j]/n.members) * entropy.part[j]) # the summation part of the equation
  }
  infogain <- entropy(df$tar) - sum.infogain
  return(infogain)
}


## Decide Function

decide <- function(data.frame, target.col)
{
  df <- data.frame
  n.attr <- ncol(df) - 1
  
}


entropy.dataframe <- as.dataframe(read.table (file = "entropy-test-file.csv", header = TRUE, sep = ",")
