source("weights.R")

ggplot(data.frame(x = x, dist = names(x)), aes(x = x, color= dist) ) + geom_density()

gmean = tapply(x, names(x), mean)

gmean

sd

sd/sqrt(10)

mean(x)

gmean

gmean[1]*.5 + gmean[2]*.5

alpha = .5

gmean[1]*alpha + gmean[2]*(1-alpha)

alpha = .75

gmean[1]*alpha + gmean[2]*(1-alpha)

# L(u, sigma|x)  = f(u, sigma, x1) * f(u, sigma, x2) * (u, sigma, x3) ... f(u, sigma, xn)

# L(u, sigmaA, sigmaB|x)  = f(u, sigmaA, x1) * f(u, sigma, x2) * (u, sigma, x3) ... f(u, sigmaA, xnA) f(u, sigmaA, x1) * f(u, sigmb, x2) * (u, sigmb, x3) ... f(u, sigmb, xnb)

1/var

1/2

1/25

precision = 1/var

precision

precision/sum(precision)

#wA =varB/(varA + varB)

#wB =varA/(varA + varB)

x

wtmp = c(rep(1/var[1], 10), rep(1/var[2], 10))

wtmp

weights = wtmp/sum(wtmp)

weights

sum(weights)

sum(x*weights)

var

names(var) = c("A", "B")

1/var[names(x)]



source("weightedLS.R")

d = data.frame(y = y, x = x, device = type)

d

fita = lm(y ~ x, subset(d, device == "A")
  )

fita = lm(y ~ x, subset(d, device == "A"))

coef(fita)

abline(fita, col = "green")

fitb = lm(y ~ x, subset(d, device == "B"))

abline(fitb, col = "purple")

summary(fita)

table(d$type)

table(d$device)

residuals(fita)

summary(residuals(fita))

summary(residuals(fitb))

summary(residuals(wfit))

residuals(fita)

resa = residuals(fita)

resb

summary(resa)

summary(resb)

sample(resb, 1000, replace = TRUE)

residuals(wfit)


