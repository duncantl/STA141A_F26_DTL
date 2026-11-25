colors = c("orange", "purple", "green")

source("1d.R")

source("knnCircle.R")

dev.new()

with(train, plot(x, y, col = rep(colors, N), pch = type))

par(mfrow = c(1,1))

with(train, plot(x, y, col = rep(colors, N), pch = type))



source("knnCircle.R")

with(train, plot(x, y, col = rep(colors, N), pch = type))

with(train, plot(x, y1, col = rep(colors, N), pch = type))

with(test, points(x, y1, pch = 16))

with(train, plot(x, y, col = rep(colors, N), pch = type))

with(train, plot(x, y1, col = rep(colors, N), pch = type))

with(test, points(x, y1, pch = 16))

source("1d.R")

ts

t1

D = as.matrix(dist(c(ts, structure(t1$X, names = rownames(t1)))))

D

D["a", -(1:6)]

D[1:6, -(1:6)]

D["f", -(1:6)]

o = order(D["f", -(1:6)])

o

t1$type

t1$type[o]

D["c", -(1:6)]

o = order(D["c", -(1:6)])

t1$type[o]


