```{r}
getwd()
```

```{r}
dir = "~/Data/FEC/2026"
```

```{r}
file.exists(dir)
```

```{r}
file.path(dir, "itcont.txt")
```

```{r}
file.exists(file.path(dir, "itcont.txt"))
```

```{r}
f = file.path(dir, "itcont.txt")
```

```{r}
readLines
```

```{r}
l = readLines(f)
```

```{r}
readLines
```

```{r}
readLines(f, n = 6)
```

```{r}
l = readLines(f, n = 6)
```

```{r}
l[1]
```

```{r}
strsplit(l, "|")
```

```{r}
strsplit(l[1], "|")
```

```{r}
strsplit(l[1], "|", fixed = TRUE)
```

```{r}
e = strsplit(l, "|", fixed = TRUE)
```

```{r}
e
```

```{r}
sapply(e, length)
```

```{r}
l = readLines(f, n = 60000)
```

```{r}
e = strsplit(l, "|", fixed = TRUE)
```

```{r}
table(sapply(e, length))
```

```{r}
e[1:3]
```

```{r}
rbind(e[1], e[2], e[3])
```

```{r}
class(rbind(e[1], e[2], e[3]))
```

```{r}
dim(rbind(e[1], e[2], e[3]))
```

```{r}
lapply(1:2, function(i) sapply(e, function(x) x[i]))
```

```{r}
lapply(1:2, function(i) sapply(e[1:5], function(x) x[i]))
```

```{r}
z = lapply(1:21, function(i) sapply(e, function(x) x[i]))
```

```{r}
class(z)
```

```{r}
length(z)
```

```{r}
sapply(z, length)
```

```{r}
d = as.data.frame(z)
```

```{r}
dim(d)
```

```{r}
read.csv
```

```{r}
read.table
```

```{r}
?read.table
```

```{r}
length(l)
```

```{r}
l[626:630]
```

```{r}
l[1:629]
```

```{r}
l2 = l[-628]
```

```{r}
length(l2)
```

```{r}
d2 = read.table(textConnection(l2[1:600]), sep = "|", nrows = 60000)
```

```{r}
d2 = read.table(textConnection(l[1:600]), sep = "|", nrows = 60000)
```

```{r}
d2 = read.table(textConnection(l[1:610]), sep = "|", nrows = 60000)
```

```{r}
d2 = read.table(textConnection(l[1:620]), sep = "|", nrows = 60000)
```

```{r}
d2 = read.table(textConnection(l[1:623]), sep = "|", nrows = 60000)
```

```{r}
d2 = read.table(textConnection(l[1:624]), sep = "|", nrows = 60000)
```

```{r}
read.table
```

```{r}
d2 = read.table(textConnection(l[1:628]), sep = "|", nrows = 60000, quote = '')
```

```{r}
l[23510:23520]
```

```{r}
d2 = read.table(textConnection(l), sep = "|", nrows = 60000, quote = '', comment.char = "")
```

```{r}

```

```{r}
d2 = read.table(f, sep = "|", nrows = 60000, quote = '', comment.char = "")
```

```{r}
d2 = read.table(f, sep = "|", quote = '', comment.char = "")
```

```{r}
f2 = "~/Data/NASAWeather/cloudhight10.txt"
```

```{r}
f2 = "~/Data/NASAWeather/cloudhigh10.txt"
```

```{r}
read.table(f2, skip = 7)
```

```{r}
z = read.table(f2, skip = 7)
```

```{r}
class(z)
```

```{r}
dim(z)
```

```{r}
unlist(z[, -(1:3)])
```

```{r}

```
