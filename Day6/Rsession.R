readRDS("../Data/SFHouses.rds")



d = readRDS("../Data/SFHouses.rds")

names(d)

cut(d$sqft, c(0, 500,  1000, 2000, 3000, 4000, 5000, Inf))

d$fsqft = cut(d$sqft, c(0, 500,  1000, 2000, 3000, 4000, 5000, Inf))

t = tapply(d$amount, list(d$fsqft, d$county), median, na.rm = TRUE)

class(t)

dim(t)

rownames(t)

dimnames(t)

t2 = t(t)

head(t2)

dim(t)

prod(dim(t))

unlist(t)

class(unlist(t))

identical(t, unlist(t))

as.numeric(t)

class(as.numeric(t))

length(as.numeric(t))

head(t)

z = data.frame(median = as.numeric(t))

dim(z)

t[, 1:2]

z[1:14,]

rownames(t)

ncol(t)

rep(rownames(t), ncol(t))

rep(rownames(t), 3)

rep("B", 10)

rep

?rep



colnames(t)[1:3]

rep(colnames(t)[1:3], each = 7)

z = data.frame(median = as.numeric(t))

dim(z)

table(is.na(z$median))

head(t)

t[, 1:3]

library(Lahman)

ls(2)

Salaries

summary(Salaries)

s = Salaries

dim(s)

head(s)

s$playerID[1]

names(People)

People[ People$playerID == s$playerID[1]]

People[ People$playerID == s$playerID[1], ]

head(s)

subset(s, s$playerID == s$playerID[1])

subset(s, s$teamID == "SFN" & s$yearID == "2004")

s[s$teamID == "SFN" & s$yearID == "2004", ]

tapply(s$salary, list(s$yearID, s$teamID), sum)

x = tapply(s$salary, list(s$yearID, s$teamID), sum)

class(x)

dim(x
  )

rownames(x)

colnames(x)

ls(2)

names(Teams)

Teams[  Teams$teamID == "ANA",]

x

n = c("Ethan", "Emily", "Lillian")

paste(n, " office hours")

letters

paste(letters, 1:3)

paste(letters, 1:3, sep = ";")

head(Teams)

ls(2)

sapply(ls(2), function(x) class(get(x)))

w = sapply(ls(2), function(x) class(get(x))) == "data.frame"

table(w)

ls(2)[w]

vars = ls(2)[w]

sapply(vars, function(x) names(get(x)))

sapply(vars, function(x) "state" %in% names(get(x)))

which(sapply(vars, function(x) "state" %in% names(get(x))))

colnames(t)[1:3]

rownames(t)[1:3]

rownames(t)[1:7]

t[,1:2]


