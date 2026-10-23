```{r}

```

```{r}
d = readRDS("../Data/SFHouses.rds")
```

```{r}
library(Lahman)
```

```{r}
x = 1:10
```

```{r}
sum(x
  )
```

```{r}
sum = "abc"
```

```{r}
sum(x)
```

```{r}
search()
```

```{r}
ls()
```

```{r}
ls(2)
```

```{r}
ls("package:Lahman")
```

```{r}
sum
```

```{r}
find("sum")
```

```{r}
base::sum
```

```{r}
search()
```

```{r}
sapply(search(), function(p)  "sum" %in% ls(p))
```

```{r}
ls("package:Lahman")
```

```{r}
v = ls("package:Lahman")
```

```{r}
sapply(v, function(x) class(get(x, 2)))
```

```{r}
table(sapply(v, function(x) class(get(x, 2))))
```

```{r}
lapply
```

```{r}
get("sum", "package:base")
```

```{r}
get("sum", "package:base")(x)
```

```{r}

```

```{r}
d = readRDS("../Data/SFHouses.rds")
```

```{r}
names(d)
```

```{r}
dim(d)
```

```{r}
table(d$county)
```

```{r}

```

```{r}

```
