```{r}
d = readRDS("../Data/SFHouses.rds")
```

```{r}
names(d)
```

```{r}
class(d)
```

```{r}
dim(d)
```

```{r}
head(d)
```

```{r}
sapply(d, class)
```

```{r}
ty = sapply(d, class)
```

```{r}
class(ty)
```

```{r}
dim(ty)
```

```{r}
length(ty)
```

```{r}
names(ty)
```

```{r}
ty["date"]
```

```{r}
ty[2]
```

```{r}
ty
```

```{r}
sapply(d, length)
```

```{r}
is.list(d)
```

```{r}
class(d)
```

```{r}
head(d)
```

```{r}
tail(d)
```

```{r}
lapply(d, class)
```

```{r}
ty2 = lapply(d, class)
```

```{r}
class(ty2)
```

```{r}
sapply(ty2, class)
```

```{r}
table(sapply(ty2, class))
```

```{r}
table(sapply(ty2, length))
```

```{r}
table(d$bathrooms)
```

```{r}
table(d$bedrooms)
```

```{r}
tt = lapply(d, table)
```

```{r}
sapply(tt, length)
```

```{r}
duplicated(d$address)
```

```{r}
table(duplicated(d$address))
```

```{r}
d[duplicated(d$address), ]
```

```{r}
which(duplicated(d$address))
```

```{r}
class(sapply(d[ , c("amount", "bedrooms", "bathrooms")],  mean, na.rm  = TRUE))
```

```{r}
class(sapply(d[ , c("amount", "bedrooms", "bathrooms")],  range, na.rm  = TRUE))
```

```{r}
(sapply(d[ , c("amount", "bedrooms", "bathrooms")],  range, na.rm  = TRUE))
```

```{r}
v = lapply(d[ , c("amount", "bedrooms", "bathrooms")],  range, na.rm  = TRUE)
```

```{r}
sapply(v, class)
```

```{r}
class(c(TRUE))
```

```{r}
class(c(1L))
```

```{r}
x1 = c(TRUE, 1L)
```

```{r}
class(x1)
```

```{r}
x1
```

```{r}
x1 = c(TRUE, 2L)
```

```{r}
x1
```

```{r}
class(3.141)
```

```{r}
x2 = c(x1,3.141)
```

```{r}
class(x2)
```

```{r}
x3 = c("abc", x1, 3.141)
```

```{r}
class(x3)
```

```{r}
x3 = c("123", x1, 3.141)
```

```{r}
class(x3)
```

```{r}
x3 = c(as.numeric("123"), x1, 3.141)
```

```{r}
class(x3)
```

```{r}

```
