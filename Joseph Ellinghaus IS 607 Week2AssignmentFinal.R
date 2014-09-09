# 1. Queue problem.
# Results:  Index for Patricia is 4.  Length of queue is 4.

queue <- c()
print(queue)
queue <- c("James" ,"Mary", "Steve", "Alex", "Patricia") #  set original queue
print(queue)
queue <- append(queue, "Harold", after = length(queue)) #  add Harold to queue end
print(queue)
queue <- setdiff(queue, "James") #  remove James from queue, checked out
print(queue)
queue <- append(queue, "Pam", after = match("Steve", queue) - 1) # add Pam ahead of Steve
print(queue)
queue <- setdiff(queue, "Harold") # remove Harold from the queue, left
print(queue)
queue <- setdiff(queue, "Alex") # remove Alex from the queue, left
print (queue)
iPatricia <- match("Patricia", queue) # index of Patricia
print (iPatricia)
print(length(queue)) # number of people in the queue

# 2. Quadratic equation
#  For 1,3,2 - The x intercepts are  0.56 , -3.56
#  For 9,12,4 - There is a single solution, x = -0.67
#  for 4,-8,6 - There are imaginary solutions.  x = 1+-0.7071068i

a <- 4
b <- -8
c <- 6
disc <- (b^2 - 4 * a * c)
if (disc == 0)
{
  quad <- (-b / (2 * a))
  x <- round(quad, 2)
  cat("There is a single solution, x =", x)
} else
{
  if (disc < 0)
  {
    real <- -b / (2 * a)
    imaginary <- (-disc)^.5 / (2 * a)
    cat("There are imaginary solutions. ")
    cat("x = ", real, "+-", imaginary, sep = '',"i")
  } else
  
  {
    x1 <- round(((-b + (disc)^0.5)) / (2 * a), 2)
    x2 <- round(((-b - (disc)^0.5)) / (2 * a), 2)
    cat("The x intercepts are ", x1, ',', x2)
  }
}

a <- 4
b <- -8
c <- 6

a <- 9
b <- 12
c <- 4

a <- 1
b <- 3
c <- -2

# 3. Use R to determine how many numbers from 1 to 1000 are not divisible by any of 3,7, and 11.
# Answer:  There are 480 numbers between 1 and 1000 that are divisible by 3, 7, or 11.
count <- 0
for (i in 1:1000)
{
#  print(i)
  if((i/3 - trunc(i/3) == 0) | (i/7 - trunc(i/7) == 0) | (i/11 - trunc(i/11) == 0))
    count <- count +1
#    print(count)
    next 
}
cat("There are",count, "numbers between 1 and 1000 that are divisible by 3, 7, or 11.")
   
   
# 4. Write R code that takes three input constants f, g, and h and determines whether they form 
# a Pythagorean Triple (such that the square of the largest input is equal to the sum of the squares 
# of the other two constants).

# Example output:
# for 5,4,3
# f= 5 g= 4 h= 3 is a Pythagorean Tripple
# for 4,4,3
# f= 4 g= 4 h= 3 is not a Pythagorean Tripple
# f= 4 g= 5 h= 3 is a Pythagorean Tripple
# f= 3 g= 3 h= 5 is not a Pythagorean Tripple
# f= 3 g= 4 h= 5 is a Pythagorean Tripple
# f= 9 g= 7.483315 h= 5 is not a Pythagorean Tripple
# f= 6 g= 8 h= 10 is a Pythagorean Tripple
# f= 5 g= 13 h= 12 is a Pythagorean Tripple

f <- 5
g <- 13
h <- 12
PythagTripple <- "FALSE"
if ((f > g) & (f > h))
{
  if (f^2 == g^2 + h^2)
  {
    PythagTripple <- "TRUE"
  } else
  {
    PythagTripple <- "FALSE"
  } 
} else
if ((g > f) & (g > h))
{
  if (g^2 == f^2 + h^2)
  {
    PythagTripple <- "TRUE"
  } else
  {
    PythagTripple <- "FALSE"
  }
} else
if (h^2 == f^2 + g^2)
{
  PythagTripple <- "TRUE"
} else
{
  PythagTripple <- "FALSE"
}

if(PythagTripple)
{
  cat("f=",f,"g=",g,"h=",h, "is a Pythagorean Tripple")
} else
{
  cat("f=",f,"g=",g,"h=",h, "is not a Pythagorean Tripple")
}

  
  