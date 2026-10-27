```{r}
source("../Day9/nasa.R")
```

```{r}
d = read()
```

```{r}
class(d)
```

```{r}
dim(d)
```

```{r}
names(d)
```

```{r}
table(d$lat)
```

```{r}
table(d$lon)
```

```{r}
summary(d$value)
```

```{r}
plot(d$lat, d$value)
```

```{r}
boxplot(d$value ~ d$lat)
```

```{r}
subset(d, lat == 13.8 & lon == -91.2)   # manually check cell in file.
```

```{r}
length(unique(d$date))
```

```{r}
sapply(d, class)
```

```{r}
boxplot(d$value ~ d$lon)
```

```{r}
plot(d$lon, d$lat)
```

```{r}
table(d$lon, d$lat)
```

```{r}
all(table(d$lon, d$lat) == 1)
```

```{r}
ff = list.files("~/Data/NASA", full.names = TRUE)
```

```{r}
ff
```

```{r}
i = sample(ff, 3)
```

```{r}
i
```

```{r}
z = lapply(i, read)
```

```{r}
# different variables - cloud cover and ozone.
```

```{r}
sapply(z, class)
```

```{r}
sapply(z, dim)
```

```{r}
identical(z[[1]], z[[2]])
```

```{r}
all.equal(z[[1]], z[[2]])
```

```{r}
head(z[[1]]
  )
```

```{r}
head(z[[2]])
```

```{r}
sapply(z, function(x) sapply(x, class))
```

```{r}
# why is the value in item 2 a character?
```

```{r}
class(z[[2]]$value)
```

```{r}
z[[2]]$value
```

```{r}
unique(z[[2]]$value)
```

```{r}
# ....    That's their way of indicating a missing value.
```

```{r}
# How to fix our read() function?
```

```{r}
?read.table
```

```{r}
# new version with na.strings = "...."
```

```{r}
read
```

```{r}
z2 = read(i[2])
```

```{r}
sapply(z2, class)
```

```{r}
class(z2$value)
```

```{r}
table(is.na(z2$value))
```

```{r}
z2$value
```

```{r}
ls()
```

```{r}
names(al) = ff
```

```{r}
err = sapply(al, inherits, 'try-error')
```

```{r}
ff[err]
```

```{r}
# Aaah.
```

```{r}
# .dat files not .txt
```

```{r}
# not the same format.
```

```{r}
ff
```

```{r}
basename(ff)
```

```{r}
vars = c("cloudhigh", "cloudlow", "cloudmid", "ozone", "pressure", "surftemp", "temperature")
```

```{r}
ffv = lapply(vars, function(v) list.files("~/Data/NASA", pattern = v, full.names = TRUE))
```

```{r}
names(ffv)
```

```{r}
names(ffv) = vars
```

```{r}
sapply(ffv, length)
```

```{r}
dfs.vars = lapply(ffv, function(fs) lapply(fs, read))
```

```{r}
sapply(dfs.vars, function(x) table(sapply(x, class)))
```

```{r}
sapply(dfs.vars, function(x) table(sapply(x, nrow)))
```

```{r}
lapply(dfs.vars, function(x) table(sapply(x, nrow)))
```

```{r}
dfs = lapply(dfs.vars, function(x) do.call(rbind, x))
```

```{r}
sapply(dfs, class)
```

```{r}
sapply(dfs, dim)
```

```{r}
41472/72
```

```{r}
576/(24*24)
```

```{r}
sapply(dfs, names)
```

```{r}
# Can we put these side by side?  Do the rows match across the 7 variables?
```

```{r}
sapply(dfs, function(x, first) identical(x$lat, first), dfs[[1]]$lat)
```

```{r}
sapply(dfs, function(x, first) identical(x$lon, first), dfs[[1]]$lon)
```

```{r}
sapply(dfs, function(x, first) identical(x$date, first), dfs[[1]]$date)
```

```{r}
# Yes
```

```{r}
# The value columns should not match
```

```{r}
df = cbind(dfs[[1]][, c("lat", "lon", "date", "value")], do.call(cbind, lapply(dfs[-1], function(x) x[, "value", drop = FALSE])))
```

```{r}
names(df)
```

```{r}
vars
```

```{r}
names(df)[-(1:3)] = vars
```

```{r}
head(df)
```

```{r}
names(dfs)
```

```{r}
head(dfs$ozone)
```

```{r}
head(dfs$cloudhigh)
```

```{r}
# now check these make sense.
```

```{r}
plot(df$lon, df$lat)
```

```{r}
table(df$lon, df$lat)
```

```{r}

```

```{r}
table(df$lon, df$lat)
```

```{r}
# Does this make sense?
```

```{r}
# plot temperature by month of the year (across 6 years)
```

```{r}
boxplot( df$temperature ~ as.integer(format(df$date, "%m")))
```

```{r}
# Make sense?
```

```{r}
boxplot( df$surftemp ~ as.integer(format(df$date, "%m")))
```

```{r}
with(df, plot(cloudlow, surftemp))
```

```{r}
# color by month?
```

```{r}
library(ggplot2)
```

```{r}
ggplot(df, aes(x = cloudlow, y = surftemp, color = format(date, "%m"))) + geom_point()
```

```{r}
sapply(df, function(x) sum(is.na(x)))
```

```{r}

```

```{r}
df$date[is.na(df$cloudlow)]
```

```{r}
table(df$lat[is.na(df$cloudlow)], df$lon[is.na(df$cloudlow)])
```

```{r}

```
