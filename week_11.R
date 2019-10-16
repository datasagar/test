install.packages("DBI")
install.packages("RSQLite")

library(DBI)

setwd("/Users/⁨iDeshmukh/Downloads/Week 11")

getwd()

setwd("/Users/iDeshmukh/Downloads/Week 11")

con <- dbConnect(RSQLite::SQLite(), "./sqlcourse.db")


## List all of the tables

dbListTables(con)



## read the salescall table

dbReadTable(con, "salescall")




# Run the following query:

queryResult <- dbSendQuery(con, "select max(customer_id) from salescall")

dbFetch(queryResult)
