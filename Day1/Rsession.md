```{r}
d = readRDS("../../Data/SFGate/Sep2026_Mar2012_May2011.rds")
```

```{r}
ls()
```

```{r}
class(d)
```

```{r}
head(d)
```

```{r}
nrow(d)
```

```{r}
ncol(d)
```

```{r}
names(d)
```

```{r}
tail(d)
```

```{r}
head(d$bedrooms)
```

```{r}
tail(d$bedrooms)
```

```{r}
class(d$bedrooms)
```

```{r}
d$date
```

```{r}
min(d$date)
```

```{r}
max(d$date)
```

```{r}
range(d$date)
```

```{r}
typeof(d)
```

```{r}
class(d$date)
```

```{r}
typeof(d$date)
```

```{r}
format(d$date,  "%Y")
```

```{r}
table(format(d$date,  "%Y"))
```

```{r}
ls()
```

```{r}
N = 1000
```

```{r}
plot(x, y)
```

```{r}
y = 10*x + rnorm(N) + 500
```

```{r}
?table
```

```{r}

```

```{r}
example(table)
```

```{r}

```
