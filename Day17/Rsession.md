```{r}
source("weights.R")
```

```{r}
ggplot(data.frame(x = x, dist = names(x)), aes(x = x, color= dist) ) + geom_density()
```

```{r}
gmean = tapply(x, names(x), mean)
```

```{r}
gmean
```

```{r}
sd
```

```{r}
sd/sqrt(10)
```

```{r}
mean(x)
```

```{r}
gmean
```

```{r}
gmean[1]*.5 + gmean[2]*.5
```

```{r}
alpha = .5
```

```{r}
gmean[1]*alpha + gmean[2]*(1-alpha)
```

```{r}
alpha = .75
```

```{r}
gmean[1]*alpha + gmean[2]*(1-alpha)
```

```{r}
# L(u, sigma|x)  = f(u, sigma, x1) * f(u, sigma, x2) * (u, sigma, x3) ... f(u, sigma, xn)
```

```{r}
# L(u, sigmaA, sigmaB|x)  = f(u, sigmaA, x1) * f(u, sigma, x2) * (u, sigma, x3) ... f(u, sigmaA, xnA) f(u, sigmaA, x1) * f(u, sigmb, x2) * (u, sigmb, x3) ... f(u, sigmb, xnb)
```

```{r}
1/var
```

```{r}
1/2
```

```{r}
1/25
```

```{r}
precision = 1/var
```

```{r}
precision
```

```{r}
precision/sum(precision)
```

```{r}
#wA =varB/(varA + varB)
```

```{r}
#wB =varA/(varA + varB)
```

```{r}
x
```

```{r}
wtmp = c(rep(1/var[1], 10), rep(1/var[2], 10))
```

```{r}
wtmp
```

```{r}
weights = wtmp/sum(wtmp)
```

```{r}
weights
```

```{r}
sum(weights)
```

```{r}
sum(x*weights)
```

```{r}
var
```

```{r}
names(var) = c("A", "B")
```

```{r}
1/var[names(x)]
```

```{r}

```

```{r}
source("weightedLS.R")
```

```{r}
d = data.frame(y = y, x = x, device = type)
```

```{r}
d
```

```{r}
fita = lm(y ~ x, subset(d, device == "A")
  )
```

```{r}
fita = lm(y ~ x, subset(d, device == "A"))
```

```{r}
coef(fita)
```

```{r}
abline(fita, col = "green")
```

```{r}
fitb = lm(y ~ x, subset(d, device == "B"))
```

```{r}
abline(fitb, col = "purple")
```

```{r}
summary(fita)
```

```{r}
table(d$type)
```

```{r}
table(d$device)
```

```{r}
residuals(fita)
```

```{r}
summary(residuals(fita))
```

```{r}
summary(residuals(fitb))
```

```{r}
summary(residuals(wfit))
```

```{r}
residuals(fita)
```

```{r}
resa = residuals(fita)
```

```{r}
resb
```

```{r}
summary(resa)
```

```{r}
summary(resb)
```

```{r}
sample(resb, 1000, replace = TRUE)
```

```{r}
residuals(wfit)
```

```{r}

```
