# Consider 2 normals with the same mean but different SDs.

set.seed(934128)

mu = 100
var = c(2, 25)
sd = sqrt(var)

n = c(10, 10)

x = c(rnorm(n[1], mu, sd[1]),
      rnorm(n[2], mu, sd[2]))
names(x) = rep(c("A", "B"), n)

gmean = tapply(x, names(x), mean)

x.bar = mean(x)

wts = rev(var)/ sum(var)
names(wts)=  c("A", "B")
weights = rep(wts, n)
weighted.xbar =  sum(x*weights/sum(weights)) # /sum(n)

library(ggplot2)
ggplot(data.frame(x = x, dist = names(x)), aes(x = x, color= dist) ) + geom_density()

gmean
x.bar
weighted.xbar
