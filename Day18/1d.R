set.seed(123134)
mu = c(10, 30, 40)
sd = c(16, 10, 6)
N = rep(10, 3)
t1 = data.frame(X = rnorm(sum(N), rep(mu, N), rep(sd, N)),
                type = rep(c("+", "*", "#"), N))
rownames(t1) = 1:nrow(t1)
plot(t1$X, jitter(rep(1, nrow(t1)), .001), pch = t1$type, col = colors[factor(t1$type)], ylim = c(.95, 1.05))

ts = c(-10, 5, 18, 22, 36, 45)
names(ts) = letters[1:length(ts)]
points(ts, rep(1.001, length(ts)), pch = 16)

text(ts, rep(1.005, length(ts)), names(ts))





