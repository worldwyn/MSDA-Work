#Week 4 Assignment 1
variable <- 10.65
variable
variable = 11.23
variable
assign ("variable", 11.98)
variable

#Week 4 Assignment 2
numbers <- c(48,52,NA,47,50,NA,49,51)
sum(is.na(numbers))

#Week 4 Assignment 3
#load the FieldReturnAnalysis package which is a frequently used and well understood package
library(FieldReturnAnalysis)
#display the CDF for the ST32165 product
CDF(ST32165)

#load the Jim'sFieldReturnAnalysis package which is a rarely used 
#package saved on a server that the author may not have placed there
# if it is not up to date
require(Jim'sFieldReturnAnalysis)
#Insert a test here to display a warning if the package can't be found
#display the CDF for the ST32165 product
CDF(ST32165)