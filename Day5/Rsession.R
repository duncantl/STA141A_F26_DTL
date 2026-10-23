

d = readRDS("../Data/SFHouses.rds")

library(Lahman)

x = 1:10

sum(x
  )

sum = "abc"

sum(x)

search()

ls()

ls(2)

ls("package:Lahman")

sum

find("sum")

base::sum

search()

sapply(search(), function(p)  "sum" %in% ls(p))

ls("package:Lahman")

v = ls("package:Lahman")

sapply(v, function(x) class(get(x, 2)))

table(sapply(v, function(x) class(get(x, 2))))

lapply

get("sum", "package:base")

get("sum", "package:base")(x)



d = readRDS("../Data/SFHouses.rds")

names(d)

dim(d)

table(d$county)




