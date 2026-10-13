
# Wide to Long data.frame

Using the SF housing data...

Create a factor for square-feet using `cut()`
```{r}
d$fsqft = cut(d$sqft, c(0, 500,  1000, 2000, 3000, 4000, 5000, Inf))
```

```{r}
t = tapply(d$amount, list(d$fsqft, d$county), median, na.rm = TRUE)
```

`t` is a 2-dimensional "table" - rows and columns.
```{r}
class(t)
dim(t)
```

The row and columnames are the square-footage interval labels and "county/city" names
```{r}
rownames(t)
colnames(t)

dimnames(t)
```

We want to convert it to a 3-column data.frame in which each row
is a  square-feet label, county/city and median price.

```
Alameda (0,500]          NA
Alameda (500,1e+03]      NA
Alameda (1e+03,2e+03]  1070000
...
Alameda (5e03,Inf]

Albany  (0,500]         NA
Albany  (500,1e+03]     NA
Albany  (1e+03,2e+03]   NA
...
Albany  (5e03,Inf]     5900000
....
```
