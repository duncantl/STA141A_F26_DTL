# Summary of Day 2

+ vectors
   + ordered collection of elements
   + ordered hierarchy
      + logical -> integer -> numeric -> character
   + all elements have the same type
      + so coercion according to hierachy
   
+ list
   + vector (ordered collection) but elements can have different types


+ subsetting
   + of data.frame  - 1 and 2 dimensions

```{r}
d$amount
d[ d$address == "2868 Hannah Street", ]
d[ d$amount > 6e6, c("amount", "sqft", "bedrooms", "bathrooms")]
```
   + of vector/list - 1 dimension
```{r}
d$amount[ format(d$date, "%Y") == 2026 ] 
```

   + subsetting by 
     + logical vector
	 + names of elements

+ recycling rule


+ lapply() & sapply()


+ group-by operation
   + `lapply(split(what, by), function)`
   + `tapply(what, by, function)`
```{r}
tapply(d$amount, d$county, median, na.rm = TRUE)
```
      + note the `na.rm = TRUE` is passed in each call to median.


+ density plot


+ class(), typeof()
+ length(), names()
+ dim(), ncol(), nrow()
