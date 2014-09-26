library(ggplot2)
library(dplyr)

m <- read.table("movies.tab", sep="\t", header=TRUE, quote="", comment="")
minyear <- min(m$year)
maxyear <- max(m$year)
m$decade[m$year>=1890 & m$year<1900]<-1890
m$decade[m$year>=1900 & m$year<1910]<-1900
m$decade[m$year>=1910 & m$year<1920]<-1910
m$decade[m$year>=1920 & m$year<1930]<-1920
m$decade[m$year>=1930 & m$year<1940]<-1930
m$decade[m$year>=1940 & m$year<1950]<-1940
m$decade[m$year>=1950 & m$year<1960]<-1950
m$decade[m$year>=1960 & m$year<1970]<-1960
m$decade[m$year>=1970 & m$year<1980]<-1970
m$decade[m$year>=1980 & m$year<1990]<-1980
m$decade[m$year>=1990 & m$year<2000]<-1990
m$decade[m$year>=2000 & m$year<2010]<-2000
m$decade[m$year>=2010 & m$year<2020]<-2010
(movies_df <- tbl_df(m))
select(movies_df, title, decade)
d1 <- group_by(movies_df, decade)
d2 <- summarize(d1, n())


#    decade   n()
# 1    1890    49
# 2    1900   232
# 3    1910   401
# 4    1920   795
# 5    1930  4328
# 6    1940  4613
# 7    1950  5160
# 8    1960  5456
# 9    1970  6270
# 10   1980  7907
# 11   1990 12788
# 12   2000 10789

# 1. Show an appropriate visualization that displays the total number of movies 
# for each decade.
countbydecade <- ggplot(data=d1, aes(factor(decade)))
(countbydecade + geom_bar())

# 2. Show the average IMDB user rating for different genres of movies? Has this 
# changed over time?
g1 <- filter(movies_df, Action == 1)
g1$genre <- "Action"
g2 <- filter(movies_df, Animation == 1)
g2$genre <- "Animation"
g3 <- filter(movies_df, Comedy == 1)
g3$genre <- "Comedy"
g4 <- filter(movies_df, Drama == 1)
g4$genre <- "Drama"
g5 <- filter(movies_df, Documentary == 1)
g5$genre <- "Documentary"
g6 <- filter(movies_df, Romance == 1)
g6$genre <- "Romance"
g7 <- filter(movies_df, Short == 1)
g7$genre <- "Short"
moviegenre <- tbl_df(rbind(g1, g2, g3, g4, g5, g6, g7))

# Rating by genre for all data
mg <- group_by(moviegenre, genre)
(ratingbygenre <- summarize(mg, arating = mean(rating)))

# Rating by genre for each decade
mg <- group_by(moviegenre, genre)
mg <- filter(mg, decade == 2000)
rating2000 <- summarize(mg, arating = mean(rating))
mg <- group_by(moviegenre, genre)
mg <- filter(mg, decade == 1990)
rating1990 <- summarize(mg, arating = mean(rating))
mg <- group_by(moviegenre, genre)
mg <- filter(mg, decade == 1980)
rating1980 <- summarize(mg, arating = mean(rating))
mg <- group_by(moviegenre, genre)
mg <- filter(mg, decade == 1970)
rating1970 <- summarize(mg, arating = mean(rating))
mg <- group_by(moviegenre, genre)
mg <- filter(mg, decade == 1960)
rating1960 <- summarize(mg, arating = mean(rating))
ratinghistory <- cbind(rating1960, rating1970, rating1980, rating1990, rating2000)
ratinghistory <- ratinghistory[, c(1, 2, 4, 6, 8, 10)]
colnames(ratinghistory) <- c("Genre", "1960's", "1970's", "1980's", "1990's", "2000's")
ratinghistory
#         Genre   1960's   1970's   1980's   1990's   2000's
# 1      Action 5.608709 5.414286 5.005987 4.862913 5.621059
# 2   Animation 6.240166 6.688304 6.835662 6.351087 6.564563
# 3      Comedy 5.883847 5.434425 5.445530 5.589835 6.146673
# 4 Documentary 6.473423 6.569182 6.731250 6.483896 7.092589
# 5       Drama 6.181957 5.841569 6.025827 5.948772 6.365864
# 6     Romance 6.416887 6.112186 5.994643 5.890671 6.144742
# 7       Short 6.217774 6.525926 6.596288 6.217671 6.894250
#  Yes the average rating by genre has changed over time.

# 3. Is there a relationship between length of movie and movie rating?
(arrange(movies_df, desc(length))) #  see what the range is

arrange(movies_df, length)
select(movies_df, length, rating)
ratingbylength <- ggplot(data=movies_df, aes(x=length, y=rating)) +
  geom_point(alpha = 1/10) + 
  coord_cartesian(xlim = c(0, 250)) + # limit x range to spread the most dense data
  geom_smooth(method=lm)
ratingbylength
# There is no clear relationship between length and rating

# 4. Is there a relationship between length of movie and genre?
select(moviegenre, length, genre)
(lengthbygenre <- ggplot(data=moviegenre, aes(x=genre, y=length)) +
  geom_point(shape=1)) # look at raw data of length vs genre

mg <- group_by(moviegenre, genre)
lengthbygenre <- summarize(mg, alength = mean(length, na.rm = TRUE))
(alengthbygenre <- ggplot(data=lengthbygenre, aes(x=genre, y=alength)) +
   geom_point(shape=1)) # look at mean length vs genre
# Yes, there is a relationship between length and genre

# 5. Which other variable best predicts total number of votes that a movie received.
select(moviegenre, length, genre)
(lengthbygenre <- ggplot(data=moviegenre, aes(x=genre, y=votes)) +
   geom_point(alpha=1/10))

mg <- group_by(moviegenre, genre)
lengthbygenre <- summarize(mg, alength = mean(votes, na.rm = TRUE))
(alengthbygenre <- ggplot(data=lengthbygenre, aes(x=genre, y=alength)) +
   geom_point(shape=1))
# There is a relationship between genre and number of votes

arrange(movies_df, year) # check year
moviesbyvar <- group_by(movies_df, year)
(vartable <- (select(moviesbyvar, year, avotes=mean(votes, na.rm = TRUE))))
(arrange(vartable, year))
(correlationcheck <- ggplot(vartable, aes(x=year, y=avotes)) +
  geom_point(alpha = 1/10) + 
  coord_cartesian(ylim = c(0, 25000)) +
  geom_smooth(method=lm))
# There is a increasing number of votes as the year increases

arrange(movies_df, length) # check length
moviesbyvar <- group_by(movies_df, length)
(vartable <- (select(moviesbyvar, length, avotes=mean(votes, na.rm = TRUE))))
(arrange(vartable, length))
(correlationcheck <- ggplot(vartable, aes(x=length, y=avotes)) +
   geom_point(alpha = 1/10) + 
   coord_cartesian(xlim = c(0, 250)) +
   geom_smooth())
# The number of votes increases dramatically when the film length is between about 70 and 150min.

arrange(movies_df, rating) # check rating
moviesbyvar <- group_by(movies_df, rating)
(vartable <- select(moviesbyvar, rating, avotes=mean(votes, na.rm = TRUE)))
(arrange(vartable, rating))
(correlationcheck <- ggplot(vartable, aes(x=rating, y=avotes)) +
   geom_point(alpha = 1) + 
   geom_smooth(method=lm))
# The number of votes increases with increasing rating up to about 8.75

arrange(movies_df, mpaa) # check mpaa
(moviesbyvar <- group_by(movies_df, mpaa))
(vartable <- select(moviesbyvar, mpaa, avotes=mean(votes, na.rm = TRUE)))
(correlationcheck <- ggplot(vartable, aes(x=mpaa, y=avotes)) +
   geom_point(shape = 1))
# There is some relationship between mpaa and votes

# There is no clear winner for a variable that is the best predictor of number of votes.  
# It looks like R rated Action movies that are about 110 minutes produced the most recently
# will have the most votes.