```{r}
colors = c("orange", "purple", "green")
```

```{r}
source("1d.R")
```

```{r}
source("knnCircle.R")
```

```{r}
dev.new()
```

```{r}
with(train, plot(x, y, col = rep(colors, N), pch = type))
```

```{r}
par(mfrow = c(1,1))
```

```{r}
with(train, plot(x, y, col = rep(colors, N), pch = type))
```

```{r}

```

```{r}
source("knnCircle.R")
```

```{r}
with(train, plot(x, y, col = rep(colors, N), pch = type))
```

```{r}
with(train, plot(x, y1, col = rep(colors, N), pch = type))
```

```{r}
with(test, points(x, y1, pch = 16))
```

```{r}
with(train, plot(x, y, col = rep(colors, N), pch = type))
```

```{r}
with(train, plot(x, y1, col = rep(colors, N), pch = type))
```

```{r}
with(test, points(x, y1, pch = 16))
```

```{r}
source("1d.R")
```

```{r}
ts
```

```{r}
t1
```

```{r}
D = as.matrix(dist(c(ts, structure(t1$X, names = rownames(t1)))))
```

```{r}
D
```

```{r}
D["a", -(1:6)]
```

```{r}
D[1:6, -(1:6)]
```

```{r}
D["f", -(1:6)]
```

```{r}
o = order(D["f", -(1:6)])
```

```{r}
o
```

```{r}
t1$type
```

```{r}
t1$type[o]
```

```{r}
D["c", -(1:6)]
```

```{r}
o = order(D["c", -(1:6)])
```

```{r}
t1$type[o]
```

```{r}

```
