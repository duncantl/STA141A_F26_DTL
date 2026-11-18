x = readRDS("x.rds")

N = length(x)
summary(x)

plot(density(x), xlim = range(x))

T =
function(x)
{
    q = quantile(x, c(.25, .75))
    q[2]/q[1]
}


# non-parameteric
B = 9999
x.star = replicate(B, sample(x, N, replace = TRUE), simplify = FALSE)
T.star = sapply(x.star, T)


plot(density(T.star))
rug(T.star)

lines(density(x), col = "red")
# Doesn't make any sense!

# But adding T(X) to the plot does
abline(v = T(x), col = "red")

# for what its worth given the 4+ modes/peaks
sd(T.star)

# bias
T(x) - mean(T.star)

# Coefficient of variation for bias
(T(x) - mean(T.star))/sd(T.star)


# Confidence interval

ci = quantile(T.star, c(.025, .975))
abline(v = ci, col = "green")

T(x) >= ci[1] && T(x) <= ci[2]




T.q.star = as.data.frame(lapply(c(.25, .75), \(q) sapply(x.star, \(x) quantile(x, q))))
# Note we are doing a lot of redundant work. But fast enough for our purposes.
names(T.q.star) = c("q25", "q75")

lines(density(T.q.star$q75, T.q.star$q25), col = "cyan")

# How do the quantiles within each sample vary together across samples
plot(T.q.star$q25, T.q.star$q75)






# Parametric

# What distribution do we believe the X's come from?
# If we have a strong reason to assume, e.g., Normal, Weibull, Beta or Exponential
# (perhaps with scaling parameter for Beta)

# Suppose Exponential

# Estimate lambda
lambda.hat = 1/mean(x)

x.star.p = replicate(B, rexp(N, lambda.hat), simplify = FALSE)

T.star.p = sapply(x.star.p, T)

library(ggplot2)
tt = data.frame(T = c(T.star, T.star.p),
                approach = rep(c("Non-parametric", "Exponential"),
                               c(length(T.star), length(T.star.p))))
ggplot(tt, aes(x = T, color = approach)) + geom_density()


#######

# What if x came from a Normal distribution
# With such a long tail???

norm.hat = c(mean = mean(x), sd = sd(x))
x.star.pn = replicate(B, rnorm(N, norm.hat[1], norm.hat[1]), simplify = FALSE)
T.star.pn = sapply(x.star.pn, T)


library(ggplot2)
tt = data.frame(T = c(T.star, T.star.p, T.star.pn),
                approach = rep(c("Non-parametric", "Exponential", "Normal"),
                               c(length(T.star), length(T.star.p), length(T.star.pn))))
ggplot(tt, aes(x = T, color = approach)) + geom_density()


# Do not start trying every distribution to see which gives the answer you want.
# There must be good reasons and justifications for assuming a distribution
# and you must be able to defend these for them to be useful.
# There will always be one that gives the "best" answer, even if it is just by chance.
