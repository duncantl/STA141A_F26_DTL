```{r}
library(Lahman)
```

```{r}
s16 = Salaries[ Salaries$yearID == 2016, ]
```

```{r}
order(s16$salary, decreasing = TRUE)
```

```{r}
head(s16$salary[ order(s16$salary, decreasing = TRUE) ], 20)
```

```{r}
range(s16$salary)
```

```{r}
l = s16[order(s16$salary, decreasing = TRUE)[1:10],]
```

```{r}
head(l)
```

```{r}
l
```

```{r}
names(People)
```

```{r}
head(People)
```

```{r}
m = match(l$playerID, People$playerID)
```

```{r}
m
```

```{r}
table(is.na(m))
```

```{r}
p = People[m,]
```

```{r}
p
```

```{r}
cbind(l$playerId, p$playerId)
```

```{r}
cbind(l$playerID, p$playerID)
```

```{r}
l$playerID == p$playerID
```

```{r}
table(l$playerID == p$playerID)
```

```{r}
cbind(l, p)
```

```{r}
t16.2 = merge(l, People,  "playerID")
```

```{r}
t16 = cbind(l, p)
```

```{r}
identical(t16, t16.2)
```

```{r}
all.equal(t16, t16.2)
```

```{r}
dim(t16)
```

```{r}
dim(t16.2)
```

```{r}
names(t16)
```

```{r}
names(t16.2)
```

```{r}
all(names(t16.2) %in% names(t16))
```

```{r}
table(names(t16))
```

```{r}
which(names(t16) == "playerId")
```

```{r}
which(names(t16) == "playerID")
```

```{r}
which(names(t16) == "playerID")[2]
```

```{r}
tt = t16[ - which(names(t16) == "playerID")[2], ]
```

```{r}
tt = t16[ , - which(names(t16) == "playerID")[2] ]
```

```{r}
dim(tt)
```

```{r}
cbind(names(tt), names(t16.2))
```

```{r}
length(intersect(names(tt), names(t16.2)))
```

```{r}
names(tt[, names(t16.2)]) == names(t16.2)
```

```{r}
table(names(tt[, names(t16.2)]) == names(t16.2))
```

```{r}
identical(tt[, names(t16.2)], t16.2)
```

```{r}
all.equal(tt[, names(t16.2)], t16.2)
```

```{r}
names(Parks)
```

```{r}
head(Parks)
```

```{r}
names(Teams)
```

```{r}
table(Teams$park %in% Parks$park.key)
```

```{r}
table(Teams$park %in% Parks$park.name)
```

```{r}
table(Teams$park %in% Parks$park.alias)
```

```{r}
table(Teams$park.name[Teams$yearID >= 1986 & Teams$yearID < 2017] %in% Parks$park.alias)
```

```{r}
table(Teams$park[Teams$yearID >= 1986 & Teams$yearID < 2017] %in% Parks$park.name)
```

```{r}
setdiff(Teams$park[Teams$yearID >= 1985 & Teams$yearID < 2017], Parks$park.name)
```

```{r}
grep("Anaheim", Parks$park.name, value = TRUE)
```

```{r}
grep("pacbell", Parks$park.name, value = TRUE, ignore.case = TRUE)
```

```{r}
grep(" I+$", Parks$park.name, value = TRUE)
```

```{r}
w = grepl(" I", Parks$park.name) | grepl(" II", Parks$park.name) | grepl(" III", Parks$park.name)
```

```{r}
table(w)
```

```{r}
Parks$park.name[w]
```

```{r}
z = gregexpr(" I+$", Parks$park.name)
```

```{r}
z[1:5]
```

```{r}
z
```

```{r}
z = gregexpr(" I+$", c("Agricultural County Fair Grounds II", "League Park II", "Inlet Park II"                      ))
```

```{r}
z
```

```{r}

```
