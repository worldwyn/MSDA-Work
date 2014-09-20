require (ggplot2)
require (dplyr)

m <- read.table("movies.tab", sep="\t", header=TRUE, quote="", comment="")
minyear <- min(m$year)

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
m$decade[m$year>=2000 & m$year<20100]<-2000
m$decade[m$year>=2010 & m$year<2020]<-2010
d1 <- group_by(m, decade)

# decade  name
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

