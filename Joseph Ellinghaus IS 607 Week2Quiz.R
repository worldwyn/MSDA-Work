#1. Create a vector that contains 20 numbers. (You may choose whatever numbers you like, but make sure there are some duplicates.)
v <- c(1, 5, 8, 3, 23, 76, 54, 32, 15, 9, 4, 5, 2, 1, 54, 8, 3, 7, 23, 45)

#2. Use R to convert the vector from question 1 into a character vector.
cv <- character(v)

#3. Use R to convert the vector from question 1 into a vector of factors.
fv <- factor(v)

#4. Use R to show how many levels the vector in the previous question has.
#> fv
# [1] 1  5  8  3  23 76 54 32 15 9  4  5  2  1  54 8  3  7  23 45
#Levels: 1 2 3 4 5 7 8 9 15 23 32 45 54 76
#5. Use R to create a vector that takes the vector from question 1 and performs on it the formula 3𝑥2−4𝑥+1.
z <- 3 * v^2 - 4 * v + 1
# z
# [1]     0    56   161    16  1496 17025  8533  2945   616   208    33    56     5     0  8533   161    16   120  1496  5896

#6. Implement ordinary least-squares regression in matrix form: 𝛽̂=(𝑋𝑇𝑋)−1𝑋𝑇𝑦. As a useful double check you should be able to run your regression on the matrices X and y to get 𝛽̂ below:
#  𝑋=⎣⎢⎢⎢⎢⎢⎢⎡158149164127134129176184⎦⎥⎥⎥⎥⎥⎥⎤ , 𝑦=⎣⎢⎢⎢⎢⎢⎢⎡45.246.931.035.325.043.141.035.1⎦⎥⎥⎥⎥⎥⎥⎤ , 𝛽̂=􀵥3.1531261.9837433.999539􀵩

#7. Create a named list. That is, create a list with several elements that are each able to be referenced by name.
b <- c("coffee", "tea", "milk", "coke", "pepsi", "espresso", "water", "chai", "beer", "wine")
Beverage = b

#8. Create a data frame with four columns – one each character, factor (with three levels), numeric, and date. Your data frame should have at least 10 observations (rows).
t <- c("caffein", "caffein", "n/a", "caffein", "caffein", "caffein", "n/a", "caffein", "alcohol", "alcohol")
ft <- factor(t)
n <- c(1, 5, 8, 3, 23, 76, 54, 32, 15, 9)
d <- c("2014-07-01", "2014-07-02", "2014-07-03", "2014-07-04", "2014-07-05", "2014-07-06", "2014-07-07", "2014-07-08", "2014-07-09", "2014-07-10")
dt <- as.Date(d)
myDF <- data.frame(b, ft, n, dt)

#9. Illustrate how to add a row with a value for the factor column that isn’t already in the list of levels. (Note: You do not need to accomplish this with a single line of code.)


#10. Show the code that would read in a CSV file called temperatures.csv from the current working directory.
#11. Show the code that would read in a TSV file called measurements.txt from a directory other than the working directory on your local machine.
#12. Show the code that will read in a delimited file with a pipe separator (the “|” symbol) from a website location. (You may make up an appropriate URL.)


#13. Write a loop that calculates 12-factorial.
for j in 12:1
f <- f * j

#14. Use a loop to calculate the final balance, rounded to the nearest cent, in an account that earns 3.24% interest compounded monthly after six years if the original balance is $1,500.
obal <- 1500
int <- 3.24
mint <- int / 1200
for k in 1:72
ftr <- ftr * (1 + mint)
fbal <- round(obal * ftr, digits = 2)

#15. Create a numeric vector of length 20 and then write code to calculate the sum of every third element of the vector you have created.


#16. Use a for loop to calculate Σ𝑥𝑖10𝑖=1 for the value 𝑥=2.
x <- 2
sumx <- 0
for i in 1:10
{sumx <- sumx + x^i}

#17. Use a while loop to accomplish the same task as in the previous exercise.
x <- 2
i <- 1
sumx <- 0
while i < 10
{sumx <- sumx + x^i}
i <- i + 1


#18. Solve the problem from the previous two exercises without using a loop.


#19. Show how to create a numeric vector that contains the sequence from 20 to 50 by 5.
nv <- c(20:50,5)

#20. Show how to create a character vector of length 10 with the same word, “example”, ten times.
ex <- c(10 * "example")

#21. Show how to take a trio of input numbers a, b, and c and implement the quadratic equation.