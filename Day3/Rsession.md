```{r}
d = readRDS("../Data/SFHouses.rds")
```

```{r}
dim(d)
```

```{r}
a = readRDS("../../Data/AirlineDelays/AirlineDelays.rds")
```

```{r}
dim(a)
```

```{r}
d$amount
```

```{r}
plot(density(d$amount))
```

```{r}
plot(density(d$amount, bw = 90000))
```

```{r}
plot(density(d$amount))
```

```{r}
names(d)
```

```{r}
summary(d)
```

```{r}
d[ d$sqft == 16830,]
```

```{r}
c(1, 3, 7, NA) == NA
```

```{r}
table(!is.na(d$sqft))
```

```{r}
d[ !is.na(d$sqft) & d$sqft == 16830,]
```

```{r}
plot(d$sqft, d$amount)
```

```{r}
d[ !is.na(d$sqft) & d$sqft == 16830, "amount"]
```

```{r}
d[ !is.na(d$sqft) & d$sqft == 16830, "sqft"]
```

```{r}
d[ !is.na(d$sqft) & d$sqft == 16830, "sqft"]
```

```{r}
d[ !is.na(d$sqft) & d$sqft == 16830, "sqft"] = 1327
```

```{r}
d[ !is.na(d$sqft) & d$sqft == 16830, "sqft"]
```

```{r}
d[3,]
```

```{r}
d[ !is.na(d$sqft) & d$sqft == 1327, ]
```

```{r}
d3 = d
```

```{r}
d2 = d
```

```{r}
d2[ !is.na(d$sqft) & d$sqft == 1327, ] = 1400
```

```{r}
d2[ !is.na(d$sqft) & d$sqft == 1400,]
```

```{r}
d2[ 3,]
```

```{r}
d = d2
```

```{r}
plot(d$sqft, d$amount)
```

```{r}
which.max(d$amount)
```

```{r}
d[which.max(d$amount),]
```

```{r}
subset(d, sqft > 5500 & amount < 5.2e6)
```

```{r}
abline(h = 5.5e6, col = "red")
```

```{r}
abline(a= 0, b = 1, col = "orange", lwd = 2, lty = 3)
```

```{r}
summary(d$amount)
```

```{r}
tapply(d$amount, format(d$date, "%Y"), median, na.rm = TRUE)
```

```{r}
d = readRDS("../Data/SFHouses.rds")
```

```{r}

```

```{r}
tapply(d$amount, format(d$date, "%Y"), median, na.rm = TRUE)
```

```{r}
d$year = format(d$date, "%Y")
```

```{r}
table(d$year)
```

```{r}
g = split(d$amount, d$year)
```

```{r}
boxplot(g)
```

```{r}
boxplot(g, ylim = c(0, 6e6))
```

```{r}
d2 = a
```

```{r}
dim(d2
  )
```

```{r}
plot(d2$CRSElapsedTime, d2$ActualElapsedTime)
```

```{r}
smoothScatter(d2$CRSElapsedTime, d2$ActualElapsedTime)
```

```{r}
names(a)
```

```{r}
length(a$OriginAirportSeqID)
```

```{r}
length(unique(a$OriginAirportSeqID))
```

```{r}
length(unique(a$Origin))
```

```{r}
tt = table(a$Origin, a$OriginAirportSeqID)
```

```{r}
head(a[, 6:7])
```

```{r}
tt[3,]
```

```{r}
rownames(tt)[3]
```

```{r}
g = split(a$OriginAirportSeqID, a$Origin)
```

```{r}
head(g)
```

```{r}
g[[1]]
```

```{r}
length(g)
```

```{r}
g2 = sapply(g, unique)
```

```{r}
g2[[1]]
```

```{r}
g2[[2]]
```

```{r}
g2[[3]]
```

```{r}
g2[[4]]
```

```{r}
table(sapply(g2, length))
```

```{r}
quantile(a$amount, c(.25, .5, .75))
```

```{r}
quantile(a$amount, c(.25, .5, .75), na.rm = TRUE)
```

```{r}
table(is.na(a$amount))
```

```{r}
quantile(d$amount, c(.25, .5, .75), na.rm = TRUE)
```

```{r}
quantile(d$amount, seq(0, 1, by = .05), na.rm = TRUE)
```

```{r}
table(d$amount > 1e6)
```

```{r}
table(d$amount > 1e6, useNA = "always"
  )
```

```{r}
d$date
```

```{r}
?format
```

```{r}

```

```{r}
format.Date
```

```{r}
?format.Date
```

```{r}

```

```{r}
?strptime
```

```{r}

```

```{r}
format(d$date, "%a")
```

```{r}
table(format(d$date, "%a"))
```

```{r}
?png
```

```{r}

```

```{r}
quartz
```

```{r}
dev.new
```

```{r}
search()
```

```{r}
get("quartz", 6)
```

```{r}
png = function(file, width = 1000, height = 1000, ...) grDevices::png(file, width = width, height = height, ...)
```

```{r}
debug(png
  )
```

```{r}
png("lillian.png")
```

```{r}

```
