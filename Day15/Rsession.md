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
z3 = readRDS("~/Rinaldo/z3.rds")
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
