# From Day 2

+ See [Day 2 topics summary](../Day2/README.md)




# Topics

+ [outliers](outliers.md)

+ Missing values & is.na()
   + see is.na() and [outliers](outliers.md)
      + `d[!is.na(d$sqft) & d$sqft > 15000,]`

+ Combining logical conditions
   + see [outliers](outliers.md) and `amount > 4.8e6 and sqft > 5800`

+ density()
   + see [univariate](univariate.md)
   + multiple densities on the same plot
     + base R
	 + ggplot2

+ boxplot
   + single vector
        + see [univariate](univariate.md)
```{r}
boxplot(d$amount)
```
   
   + multiple vectors
      + e.g., from split()
```{r}
boxplot(split(d$amount, format(d$date, "%Y")))
```

+ smoothScatter()
   + Compare
  
```{r}
plot(d2$CRSElapsedTime, d2$ActualElapsedTime)
```
```{r}
smoothScatter(d2$CRSElapsedTime, d2$ActualElapsedTime, nbin = 512)
```


+ plot() & points()/lines
   + col = 
   + lty = 
   + lwd = 
   + legend()

  + Plot sqft v amount
    + Color code county, # bedrooms, # bathrooms on each point

```{r}
colors = RColorBrewer::brewer.pal(9, name = "YlOrRd")
colors = RColorBrewer::brewer.pal(9, name = "Spectral") # BrBG"
plot(d$sqft, d$amount, col = colors[d$bedrooms], xlab = "Square Feet", ylab = "Sale Price ($)")
legend("topleft", legend = sort(unique(d$bedrooms)), col = colors, pch = 1)
points(d$sqft, d$amount, pch = ".")
```


+ matplot
   + quantiles for sale price binned by square feet.

+ discretizing a variable
   + cut()
   + start and end for each interval

+ [Guidance for Plots](Plots.md)
