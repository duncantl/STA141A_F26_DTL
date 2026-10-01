
# Plotting Quantiles for Sale Price by Square Feet

Let's consider only 2026
```{r}
d3 = subset(d, format(date, "%Y") == 2026)
```

We'll group the houses by sqft into different bins.

```{r}
breaks = c(0, 500, 1000, 1500, 2000, 2500, 3000, 4000, max(d3$sqft, na.rm = TRUE))
bin = cut(d3$sqft, breaks)
class(bin)
```


For each bin, we will compute the 25th, 50th and 75th quantile for sale price

```{r}
q = tapply(d3$amount, bin, quantile, c(.25, .5, .75))
```

```{r}
class(q)
dim(q)
```

Let's make these into a data.frame with 3 columns and 1 row for each "county".
```{r}
q2 = do.call(rbind, q)
```

```{r}
matplot(q2, type = "l")
```

Let's set the X axis correctly to reflect the mid-points of the intervals.

We want the mid-point. How do we compute this?
```{r}
mid = breaks[-length(breaks)] + diff(breaks)/2
```

```{r}
matplot(mid, q2, type = "l", xlab = "Square feet (mid-point)", ylab = "Sale Price ($)")
```

Let's draw vertical lines at the break points

```{r}

```



