

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

a



tms = lapply(list(mkCol, mkCola, mkCol2, mkCol3, mkCol4), function(f) system.time(f(z3)))

tms

do.call(rbind, tms)

ls()

ls()

z = readRDS("~/Rinaldo/z.rds")

tms.full = lapply(list(mkCol, mkCola, mkCol2, mkCol3, mkCol4), function(f) { print(f); system.time(f(z))})

tms.full = do.call(rbind, tms.full)

tms.full

rownames(tms.full) = c("mkCol", "mkCola", paste0("mkCol", 2:4))

tms.full[, 1:3]

which.min(tms.full[,1])

tms.full %/% which.min(tms.full[,1])

tms.full[, 1:3] %/% which.min(tms.full[,1])

tms.full[, 1:3] %/% tms.full[which.min(tms.full[,1]), 1:3]

tms.full

tms.full = tms.full[, 1:3]

tms.full

apply(tms.full, 2, function(x) x/min(x))

dim(z)


