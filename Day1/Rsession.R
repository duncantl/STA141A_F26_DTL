d = readRDS("../../Data/SFGate/Sep2026_Mar2012_May2011.rds")

ls()

class(d)

head(d)

nrow(d)

ncol(d)

names(d)

tail(d)

head(d$bedrooms)

tail(d$bedrooms)

class(d$bedrooms)

d$date

min(d$date)

max(d$date)

range(d$date)

typeof(d)

class(d$date)

typeof(d$date)

format(d$date,  "%Y")

table(format(d$date,  "%Y"))

ls()

N = 1000

plot(x, y)

y = 10*x + rnorm(N) + 500

?table



example(table)


