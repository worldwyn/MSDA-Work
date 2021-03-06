#  Which year were the best popular movies made?

#  The definition of "best popular" will be defined as the movies that were at least
#  60 minutes long, received ratings by IMDB voting > 9.5 and were mpaa rated  < PG,
#  i.e. not rated PG, PG-13, R, or NC-17. The year the best popular movies were made
#  will be defined as the year with the most movies meeting the "best popular" criteria.

library(ggplot2)
library(dplyr)

m <- read.table("movies.tab", sep="\t", header=TRUE, quote="", comment="")
(movies_df <- tbl_df(m))  # read in data and create wrapper
(bp1 <- arrange(movies_df, desc(rating))) # sort by rating descending
(bp2 <- select(bp1, year, title, rating, length)) # include year, title, rating, and length
(bp3 <- filter(bp2, length >= 60, rating >9.5))  # filter by the "best popular" criteria
(bp4 <- group_by(bp3, year))  # group by year to identify highest frequency
(bp5 <- summarize(bp4,
                  count=n()))  # summarize for plotting
(bp6 <- arrange(bp5, desc(count)))  # sort for best display
(bp7 <- bp6[1:5,])  # include the top five years for the graph
(BestPopularMovies <- ggplot(bp7, aes(x=factor(year), y=count)) +
   geom_bar(stat="identity"))
