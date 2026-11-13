```{r}

```

```{r}
t = t[t != 0]
```

```{r}

```

```{r}
length(t)
```

```{r}
summary(t)
```

```{r}
plot(density(t))
```

```{r}
rug(t)
```

```{r}
f = function(x) 2
```

```{r}
f(.5)
```

```{r}
f(.25)
```

```{r}
f(c(.5, .25))
```

```{r}
f(f)
```

```{r}
debug(f)
```

```{r}
fv = function(x) numeric(length(x) ) + 2
```

```{r}
integrate(fv, 0, 10)
```

```{r}
fv2 = Vectorize(f)
```

```{r}
integrate(fv2, 0, 10)
```

```{r}
z3 = readRDS("2colWords.rds")
```

```{r}
class(z3)
```

```{r}
dim(z3)
```

```{r}
head(z3)
```

```{r}
sort(c("January", "February", "March"))
```

```{r}

```

```{r}
getwd()
```

```{r}
setwd("Public/Day15")
```

```{r}
source("sim.R")
```

```{r}
z3 = readRDS("2colWords.rds")
```

```{r}
dim(z3)
```

```{r}
# 1 million rows.
```

```{r}

```

```{r}
mkCol(z3[1:10,])
```

```{r}
mkCol
```

```{r}
system.time(mkCol(z3))
```

```{r}
mkCol2
```

```{r}
mkCol2(z3[1:10,])
```

```{r}
a = mkCol(z3[1:10,])
```

```{r}
b = mkCol2(z3[1:10,])
```

```{r}
identical(a, b)
```

```{r}
mkCol2
```

```{r}
system.time(mkCol2(z3))
```

```{r}
mkCol3
```

```{r}
c = mkCol3(z[1:10,])
```

```{r}
c = mkCol3(z3[1:10,])
```

```{r}
identical(a, c)
```

```{r}
mkCol3
```

```{r}
system.time(mkCol3(z3))
```

```{r}
mkCol4
```

```{r}
d  = mkCol4(z3[1:10,])
```

```{r}
identical(a,d)
```

```{r}
mkCol4
```

```{r}
d  = mkCol4(z3[1:10,])
```

```{r}
mkCol4
```

```{r}
# now byte-code compiled
```

```{r}
system.time(mkCol4(z3))
```

```{r}

```
