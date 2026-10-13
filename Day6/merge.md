
Find the names of the 10 highest paid people in 2016 and how much they were paid in that year.

```{r}
s16 = subset(Salaries, yearID == 2016)
l = s16[order(s16$salary, decreasing = TRUE)[1:10],]
```

```{r}
m = match(l$playerID, People$playerID)
p = People[m,]
```

```{r}
t16 = cbind(l, p)
```


```{r}
t16.2 = merge(l, People,  "playerID")
```


```{r}
identical(t16, t16.2)
````

No, names are not in the same order. Nor are the rows.


Do they have the same dimension?
```{r}
identical(dim(t16),  dim(t16.2))
```

playerID is common to both and how we merged.
merge() removes the duplicate column.
```{r}
setdiff(names(t16), names(t16.2))
```
reports the same names.
However, there is an additional playerID in t16.
```{r}
table(names(t16))
```

Check they are the same and so a duplicate.
```{r}
t16$playerID # first one

z = t16[names(t16) == "playerID"]
length(z)
identical(z[[1]], z[[2]]) 
```

Why the `[[ ]]`?
What is `z[1]` and `z[2]`?


```
tmp = t16[names(t16.2)]
identical(tmp[order(tmp$playerID), ], t16.2[order(t16.2$playerID),])
```

```{r}
all.equal(tmp[order(tmp$playerID), ], t16.2[order(t16.2$playerID),])
```

```{r}
tmp = tmp[order(tmp$playerID), ]
tmp2 = t16.2[order(t16.2$playerID),]

w = sapply(names(tmp2), function(var) identical(tmp[[var]], tmp2[[var]]))
table(w)
```


How do we merge if the names are different in the two data.frames?

We specify the column name(s) in by.x and by.y ?
```{r}
names(l)[4] = "playerId"
t16.2 = merge(l, People,  by.x = "playerId", by.y = "playerId")
```

What if we need to merge by more than one column?

Which of these 10 players were in the All Star game in 2016?
```{r}
merge(l, AllstarFull, c("playerID", "yearID"))
```

What about the 6 that didn't match?

```{r}
merge(l, AllstarFull, c("playerID", "yearID"), all.x = TRUE)
```

What about
```{r}
z2 = merge(l, AllstarFull, c("playerID", "yearID"), all = TRUE)
```
