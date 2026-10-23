```{r}
l = readLines("../Data/USA_CA_Mount.Shasta.725957_TMYx.pvsyst")
```

```{r}
l[13:14]
```

```{r}
grep("W/m2", l)
```

```{r}
l2 = readLines("../Data/USA_CA_Mount.Shasta.725957_TMYx.pvsyst", encoding = "latin1")
```

```{r}
l2[14]
```

```{r}
grep("W/m2", l2)
```

```{r}

```

```{r}
tmp = read.table("../Data/NASA/temperature1.txt", skip = 7,header = FALSE)
```

```{r}
class(tmp)
```

```{r}
dim(tmp)
```

```{r}
head(tmp)
```

```{r}
tmp[ , -(1:2)]
```

```{r}
tmp[ , -(1:3)]
```

```{r}
class(tmp[ , -(1:3)])
```

```{r}
class(tmp[,1])
```

```{r}
class(tmp[,4])
```

```{r}
class(tmp[,4, drop = FALSE])
```

```{r}
tmp[,1]
```

```{r}
source("nasa.R")
```

```{r}
z = read()
```

```{r}
source("nasa.R")
```

```{r}
ls()
```

```{r}
tmp
```

```{r}
tmp[,1]
```

```{r}
source("nasa.R")
```

```{r}
compLatitude(tmp[,1])
```

```{r}
source("nasa.R")
```

```{r}
z = read()
```

```{r}
source("nasa.R")
```

```{r}
z = readLines("../Data/NASA/temperature1.txt", n = 6)
```

```{r}
z
```

```{r}
z[6]
```

```{r}
compLongitude(z[6])
```

```{r}
read.table("../Data/NASA/temperature1.txt", nrow = 1, skip = 5)
```

```{r}
strsplit(z[6], " ")
```

```{r}
v = strsplit(z[6], " ")[[1]]
```

```{r}
v = v[ v != ""]
```

```{r}
v
```

```{r}
compLongitude(v)
```

```{r}
Sys.getlocale()
```

```{r}
ll = readLines("~/sta141a/Assignments/ReadingData/zip/USA_CA_Marin.County.AP-Gnoss.Field.720406_TMYx.stat", encoding = "latin1")
```

```{r}
head(ll)
```

```{r}
grep("abc", ll)
```

```{r}
?Encoding
```
