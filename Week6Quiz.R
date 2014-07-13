filelocation <- "/Users/InnoVition/Documents/pizza-store-data.csv"
pizza <- read.table (file = filelocation, header = TRUE, sep = ",", stringsAsFactors = FALSE)

##Columns: First column contains the Date, the Second column contains the Store name
##  The Third column contains the number of Pizzas sold, the Fourth column contains the
##  number of Customers

## head(pizza)
## date          store pizzas customers
## 1 2013-01-01 Westnedge Hill      0         0
## 2 2013-01-01    Cork Street      0         0
## 3 2013-01-01  Stadium Drive      0         0
## 4 2013-01-01      West Main      0         0
## 5 2013-01-02 Westnedge Hill    198       198
## 6 2013-01-02    Cork Street    141       134

## > summary(pizza)
## date                 store         pizzas        customers    
## 2013-01-01:   4   Cork Street   :365   Min.   :  0.0   Min.   :  0.0  
## 2013-01-02:   4   Stadium Drive :365   1st Qu.:181.8   1st Qu.:148.0  
## 2013-01-03:   4   West Main     :365   Median :215.0   Median :182.0  
## 2013-01-04:   4   Westnedge Hill:365   Mean   :227.1   Mean   :189.2  
## 2013-01-05:   4                        3rd Qu.:285.0   3rd Qu.:228.2  
## 2013-01-06:   4                        Max.   :417.0   Max.   :389.0  
## (Other)   :1436

## > class(pizza[, "date"])  
## [1] "character"          One would want to convert this column to a date data type
## > class(pizza[, "store"])
## [1] "character"
## > class(pizza[, "pizzas"])
## [1] "integer"
## > class(pizza[, "customers"])
## [1] "integer"