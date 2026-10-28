```{r}
source("../Day9/nasa.R")
```

```{r}

```

```{r}
i = c("ozone58.txt" , "cloudlow2.txt", "ozone49.txt")
```

```{r}
z = read()
```

```{r}
class(z)
```

```{r}
dim(z)
```

```{r}
names(z)
```

```{r}
24*24
```

```{r}
table(z$lat)
```

```{r}
length(table(z$lat))
```

```{r}
table(z$lon)
```

```{r}
table(z$lat, z$lon)
```

```{r}
table(table(z$lat, z$lon))
```

```{r}
length(unique(z$date))
```

```{r}
z$date[1]
```

```{r}
sapply(z, class)
```

```{r}
summary(z$value)
```

```{r}
sapply(z, function(x) table(is.na(x)))
```

```{r}
sapply(z, function(x) sum(is.na(x)))
```

```{r}
plot(z$lat, z$value)
```

```{r}
plot(z$lon, z$value)
```

```{r}
ff = list.files("../Data/NASA", full.names = TRUE)
```

```{r}
head(ff)
```

```{r}
length(ff)
```

```{r}
sample(ff, 3)
```

```{r}
i
```

```{r}
j = file.path("../Data/NASA", i)
```

```{r}
j
```

```{r}
file.exists(j)
```

```{r}
z = lapply(j, read)
```

```{r}
class(z)
```

```{r}
class(z[[3]])
```

```{r}
class(z[3])
```

```{r}
length(z[3])
```

```{r}
x = c(1, 3)
```

```{r}
x[1]
```

```{r}
sapply(z, class)
```

```{r}
sapply(z, dim)
```

```{r}
sapply(z, names)
```

```{r}
lapply(z, function(x) sapply(x, class))
```

```{r}
z[[2]]$value
```

```{r}
w = as.numeric(z[[2]]$value)
```

```{r}
x = z[[2]]$value
```

```{r}
x[ is.na(x) ]
```

```{r}
x[ is.na(w) ]
```

```{r}

```

```{r}
j
```

```{r}
getwd()
```

```{r}
source("NASA/nasa2.R")
```

```{r}
read
```

```{r}
z = lapply(j, read)
```

```{r}
lapply(z, function(x) sapply(x, class))
```

```{r}
ff
```

```{r}
err = sapply(z, inherits, 'try-error')
```

```{r}
table(err)
```

```{r}
z[err]
```

```{r}
ff[err]
```

```{r}
ff = list.files("../Data/NASA", full.names = TRUE, pattern = "cloudhigh")
```

```{r}
ff
```

```{r}
z = lapply(ff, read)
```

```{r}
length(z)
```

```{r}
names(z) = ff
```

```{r}
sapply(z, class)
```

```{r}
table(sapply(z, class))
```

```{r}
rbind
```

```{r}
z2 = do.call(rbind, z)
```

```{r}
class(z2)
```

```{r}
dim(z2)
```

```{r}
sapply(z2, class)
```

```{r}
table(z2$date)
```

```{r}
table(z2$lat)
```

```{r}
ff
```

```{r}
sapply(z2, nrow)
```

```{r}
dim(z2)
```

```{r}
sapply(z, nrow)
```

```{r}

```

```{r}
l = readLines("../Data/NCBIQuery.txt")
```

```{r}
head(substring(l, 1, 7), 10)
```

```{r}
w = substring(l, 1, 7) == "Query #"
```

```{r}
table(w)
```

```{r}
which(w)
```

```{r}
length(l)
```

```{r}
cs = cumsum(w)
```

```{r}
table(cs)
```

```{r}
g = split(l, cs)
```

```{r}
length(g)
```

```{r}
g[[1]]
```

```{r}
head(g[[2]], 10)
```

```{r}
which(g[[2]] == "")
```

```{r}
x = g[[2]]
```

```{r}
x = x[-(1:3)]
```

```{r}
head(x)
```

```{r}
which(x == "")[1]
```

```{r}
x2 = x[ 1:(which(x == "")[1] - 1)]
```

```{r}
x2
```

```{r}
x2[1:2]
```

```{r}
h = x2[1:2]
```

```{r}
strsplit(h[2], "|")
```

```{r}
strsplit(h[2], "")
```

```{r}
strsplit(h[2], "")[[1]] %in% LETTERS
```

```{r}
which(strsplit(h[2], "")[[1]] %in% LETTERS)
```

```{r}

```

```{r}

```

```{r}
################################################
```

```{r}

```

```{r}
source("../Day9/nasa.R")
```

```{r}
read
```

```{r}
v = read()
```

```{r}
v
```

```{r}
v = read()
```

```{r}
debug(read.table)
```

```{r}
undebug(read.table)
```

```{r}

```
