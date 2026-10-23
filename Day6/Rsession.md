```{r}
readRDS("../Data/SFHouses.rds")
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
cut(d$sqft, c(0, 500,  1000, 2000, 3000, 4000, 5000, Inf))
```

```{r}
d$fsqft = cut(d$sqft, c(0, 500,  1000, 2000, 3000, 4000, 5000, Inf))
```

```{r}
t = tapply(d$amount, list(d$fsqft, d$county), median, na.rm = TRUE)
```

```{r}
class(t)
```

```{r}
dim(t)
```

```{r}
rownames(t)
```

```{r}
dimnames(t)
```

```{r}
t2 = t(t)
```

```{r}
head(t2)
```

```{r}
dim(t)
```

```{r}
prod(dim(t))
```

```{r}
unlist(t)
```

```{r}
class(unlist(t))
```

```{r}
identical(t, unlist(t))
```

```{r}
as.numeric(t)
```

```{r}
class(as.numeric(t))
```

```{r}
length(as.numeric(t))
```

```{r}
head(t)
```

```{r}
z = data.frame(median = as.numeric(t))
```

```{r}
dim(z)
```

```{r}
t[, 1:2]
```

```{r}
z[1:14,]
```

```{r}
rownames(t)
```

```{r}
ncol(t)
```

```{r}
rep(rownames(t), ncol(t))
```

```{r}
rep(rownames(t), 3)
```

```{r}
rep("B", 10)
```

```{r}
rep
```

```{r}
?rep
```

```{r}

```

```{r}
colnames(t)[1:3]
```

```{r}
rep(colnames(t)[1:3], each = 7)
```

```{r}
z = data.frame(median = as.numeric(t))
```

```{r}
dim(z)
```

```{r}
table(is.na(z$median))
```

```{r}
head(t)
```

```{r}
t[, 1:3]
```

```{r}
library(Lahman)
```

```{r}
ls(2)
```

```{r}
Salaries
```

```{r}
summary(Salaries)
```

```{r}
s = Salaries
```

```{r}
dim(s)
```

```{r}
head(s)
```

```{r}
s$playerID[1]
```

```{r}
names(People)
```

```{r}
People[ People$playerID == s$playerID[1]]
```

```{r}
People[ People$playerID == s$playerID[1], ]
```

```{r}
head(s)
```

```{r}
subset(s, s$playerID == s$playerID[1])
```

```{r}
subset(s, s$teamID == "SFN" & s$yearID == "2004")
```

```{r}
s[s$teamID == "SFN" & s$yearID == "2004", ]
```

```{r}
tapply(s$salary, list(s$yearID, s$teamID), sum)
```

```{r}
x = tapply(s$salary, list(s$yearID, s$teamID), sum)
```

```{r}
class(x)
```

```{r}
dim(x
  )
```

```{r}
rownames(x)
```

```{r}
colnames(x)
```

```{r}
ls(2)
```

```{r}
names(Teams)
```

```{r}
Teams[  Teams$teamID == "ANA",]
```

```{r}
x
```

```{r}
n = c("Ethan", "Emily", "Lillian")
```

```{r}
paste(n, " office hours")
```

```{r}
letters
```

```{r}
paste(letters, 1:3)
```

```{r}
paste(letters, 1:3, sep = ";")
```

```{r}
head(Teams)
```

```{r}
ls(2)
```

```{r}
sapply(ls(2), function(x) class(get(x)))
```

```{r}
w = sapply(ls(2), function(x) class(get(x))) == "data.frame"
```

```{r}
table(w)
```

```{r}
ls(2)[w]
```

```{r}
vars = ls(2)[w]
```

```{r}
sapply(vars, function(x) names(get(x)))
```

```{r}
sapply(vars, function(x) "state" %in% names(get(x)))
```

```{r}
which(sapply(vars, function(x) "state" %in% names(get(x))))
```

```{r}
colnames(t)[1:3]
```

```{r}
rownames(t)[1:3]
```

```{r}
rownames(t)[1:7]
```

```{r}
t[,1:2]
```

```{r}

```
