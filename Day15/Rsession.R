

t = t[t != 0]



length(t)

summary(t)

plot(density(t))

rug(t)

f = function(x) 2

f(.5)

f(.25)

f(c(.5, .25))

f(f)

debug(f)

fv = function(x) numeric(length(x) ) + 2

integrate(fv, 0, 10)

fv2 = Vectorize(f)

integrate(fv2, 0, 10)

z3 = readRDS("~/Rinaldo/z3.rds")

class(z3)

dim(z3)

head(z3)

sort(c("January", "February", "March"))


