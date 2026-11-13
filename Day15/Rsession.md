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
a
```

```{r}

```

```{r}
tms = lapply(list(mkCol, mkCola, mkCol2, mkCol3, mkCol4), function(f) system.time(f(z3)))
```

```{r}
tms
```

```{r}
do.call(rbind, tms)
```

```{r}
ls()
```

```{r}
ls()
```

```{r}
z = readRDS("~/Rinaldo/z.rds")
```

```{r}
tms.full = lapply(list(mkCol, mkCola, mkCol2, mkCol3, mkCol4), function(f) { print(f); system.time(f(z))})
```

```{r}
tms.full = do.call(rbind, tms.full)
```

```{r}
tms.full
```

```{r}
rownames(tms.full) = c("mkCol", "mkCola", paste0("mkCol", 2:4))
```

```{r}
tms.full[, 1:3]
```

```{r}
which.min(tms.full[,1])
```

```{r}
tms.full %/% which.min(tms.full[,1])
```

```{r}
tms.full[, 1:3] %/% which.min(tms.full[,1])
```

```{r}
tms.full[, 1:3] %/% tms.full[which.min(tms.full[,1]), 1:3]
```

```{r}
tms.full
```

```{r}
tms.full = tms.full[, 1:3]
```

```{r}
tms.full
```

```{r}
apply(tms.full, 2, function(x) x/min(x))
```

```{r}
dim(z)
```

```{r}

```
