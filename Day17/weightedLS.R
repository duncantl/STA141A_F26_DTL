
set.seed(493218)

N = 30
n = rep(N/2, 2)
beta = c(1, .3)
x = runif(N, 10, 80)

var = c(A = 10, B = 625) # 225)
err = rnorm(N, 0, rep(sqrt(var), n))

y = beta[1] + beta[2]*x + err
type = rep(names(var), n)

#library(ggplot2)
col = c(A = "blue", B = "orange") 
plot(x, y, col = col[type])
abline(a= beta[1], b = beta[2])

rfit = lm(y ~ x)
abline(rfit, lwd = 2, lty = 10, col = "red")

wfit = lm(y ~ x, weights = 1/var[type])

abline(wfit, lwd = 2, lty = 3, col = "cyan")
