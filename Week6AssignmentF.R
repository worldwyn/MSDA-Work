## URL:  http://www.encyclopedia-titanica.org/titanic-second-class-passengers/

require(XML)
theURL <- "http://www.encyclopedia-titanica.org/titanic-second-class-passengers/"
passengers2 <- readHTMLTable(theURL, which = 1, header = TRUE, stringsAsFactors = FALSE)
