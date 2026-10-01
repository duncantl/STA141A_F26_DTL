
Let's look at the sale price.

```{r}
summary(d$amount)
```

We can also get the quantiles
```{r}
q1 = quantile(d$amount, c(.25, .5, .75)
```

or 
```{r}
q2 = quantile(d$amount, seq(0, 1, by = .05))
```


We can draw the density
```{r}
plot(density(d$amount))
```

We might experiment with different "bandwidth" values.
```{r}
plot(density(d$amount, bw = 90000))
```

We can show multiple densities.
```{r}
dens = tapply(d$amount, format(d$date, "%Y"), density)
plot(dens[[1]], xlim = range(d$amount), ylim = c(0, max(sapply(dens, function(x) max(x$y)))), lwd = 3)
lapply(dens[-1], function(d) lines(d$x, d$y))
```
We want to change the color for the different densities.

```{r}
plot(dens[[1]], 
     xlim = range(d$amount), 
     ylim = c(0, max(sapply(dens, function(x) max(x$y)))), 
	 lwd = 3, 
	 xlab = "Sale price ($)",
	 main = "Distribution of sale price - 3 years")
mapply(function(d, col, lty) 
         lines(d$x, d$y, col = col, lty = lty, lwd = 3),
       dens[-1], c("orange", "green"), 2:3)
```

Add the legend so we can interpret the colors:
```{r}
legend("topright", legend = names(dens),
       col = c("black", "orange", "green"),
	   lty = 1:3,
	   lwd = 3)
```


Show the points by year along the X axis using rug()
```{r}
cols = c("2011" = "black", "2012" = "orange", "2026" = "green")
g = split(d$amount, format(d$date, "%Y"))
lapply(names(g), function(id) rug(g[[id]], col = cols[id]))
```

Lot's of over-plotting here.


ggplot2 is good at this
```{r}
library(ggplot2)
d$year = format(d$date, "%Y")
ggplot(d, aes(x = amount, color = year)) + geom_density()
```

How to add the equivalent of rug()?



## Boxplot

We might also consider a boxplot
```{r}
boxplot(d$amount)
```

What do the different elements of the plot represent?


What about by year
```{r}
boxplot(split(d$amount, format(d$date, "%Y")))
```

# Violin Plot

Show the density rather than the median, IQR, 25 & 75th quantiles, whiskers.

```{r}
library(ggplot2)
ggplot(d, aes(y = amount, x = format(date, "%Y"))) + geom_violin() + xlab("Year") + ylab("Sale Price ($)")
```



## ECDF

We can draw the empirical CDF (Cumulative Distribution Function)
```{r{
plot(ecdf(d$amount))
```
