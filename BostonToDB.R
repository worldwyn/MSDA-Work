require("RSQLite")
data(Boston)
drv <- dbDriver("SQLite")
con <- dbConnect(drv, dbname="MASS")
dbWriteTable(con, "t1", Boston)
dbWriteTable(con, "t2", Boston)

dbListTables(con)

rs <- dbSendQuery(con, "select * from t1")
dbGetStatement(rs)
dbHasCompleted(rs)

info <- dbGetInfo(rs)
names(info)
info$fields

fetch(rs, n=2)
dbHasCompleted(rs)
info <- dbGetInfo(rs)
info$fields
dbClearResult(rs)

names(dbGetInfo(drv))  

# DBIConnection info
names(dbGetInfo(con))

dbDisconnect(con)