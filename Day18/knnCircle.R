set.seed(196345)

N = c(50, 100, 200)
r = c(10, 20, 40)
r0 = pmax(0, c(0, r[-3]) + rnorm(length(N), sd = 4))
r1 = r + rnorm(length(N), sd = 4)
tmp = mapply(runif, N, r0, r1)
rs = unlist(tmp)
theta = runif(sum(N), 0, 2*pi)

x = rs*cos(theta)
y = rs*sin(theta)

train = data.frame(x = x, y = y, y1 = 5*y, type = rep(c("+", "*", "#"), N))

colors = c("orange", "purple", "green")

with(train, plot(x, y, col = rep(colors, N), pch = type))
with(train, plot(x, y1, col = rep(colors, N), pch = type))


nt = 40
r.test = runif(nt, 0, max(r)*1.1)
theta.test = runif(nt, 0, 2*pi)
test = data.frame(x = r.test* cos(theta.test), y = r.test * sin(theta.test))
test$y1 = 5 * test$y

with(test, points(x, y1, pch = 16))

saveRDS(train, "train.rds")
saveRDS(test, "test.rds")



