

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

z3 = readRDS("2colWords.rds")

class(z3)

dim(z3)

head(z3)

sort(c("January", "February", "March"))



getwd()

setwd("Public/Day15")

source("sim.R")

z3 = readRDS("2colWords.rds")

dim(z3)

# 1 million rows.



mkCol(z3[1:10,])

mkCol

system.time(mkCol(z3))

mkCol2

mkCol2(z3[1:10,])

a = mkCol(z3[1:10,])

b = mkCol2(z3[1:10,])

identical(a, b)

mkCol2

system.time(mkCol2(z3))

mkCol3

c = mkCol3(z[1:10,])

c = mkCol3(z3[1:10,])

identical(a, c)

mkCol3

system.time(mkCol3(z3))

mkCol4

d  = mkCol4(z3[1:10,])

identical(a,d)

mkCol4

d  = mkCol4(z3[1:10,])

mkCol4

# now byte-code compiled

system.time(mkCol4(z3))


