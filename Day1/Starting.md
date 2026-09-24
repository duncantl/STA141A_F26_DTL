
We'll start by exploring a data set.
I have already read it into R and I have it assigned to a variable `d`.

You can do this via
```r
d = readRDS("../Data/SFHouses.rds")
```

In RStudio, we can see some of the contents of `d` in the top-right panel.
But let's programmatically explore its structure and contents.

What "sort" of object it it
```{r}
class(d)
```

So a data.frame.
What is that?

Let's look at the "top" of it
```{r}
head(d)
```


It likes like a 2-D table with rows and columns.
The columns have names such as address, date, amount.
The rows are numbered/named 1, 2, ... (but not necessarily the case in other data.frames)

Each row corresponds to a record or observational unit. In this case, a record is a house that was
sold.

For each record/observation, we have variables describing that house. These are the columns.
Importantly, for each row, the variables are for the same house.

We'll discuss all the following in more generality next week. But for now we wan to be able to do
basic things.

First, let's determine how many rows and columns there are:
```{r}
dim(d)
ncol(d)
nrow(d)
```

What are the names of the columns/variables:
```{r}
names(d)
```


Next, let's get a summary of the entire data.frame:
```{r}
summary(d)
```

We see that there are some `NA` values in some of the variables, e.g., bedrooms, bathrooms, sqft,
builds, ...


We can see the summary of the `amount` the houses were sold for.
It can be easier to see with
```{r}
summary(d$amount)
```
Importantly, we are accessing the column `amount` in `d` via `d$amount`.
(We could also use `d[["amount"]]` but the first is slightly shorter and more convenient.)

Note that we pass `d$amount` to the same `summary()` function we called above with `d` as the
argument.  R's is often smart enough to know what to do and we'll talk in the future how it does
this and how you can reason about it to know what it will do or why.

Let's look at the entire distribution, either with a histogram or a density (estimate):
```{r}
plot(density(d$amount), xlim = c(0, max(d$amount)))
```
```{r}
hist(d$amount)
```

In the density plot, we might also want to show the points and the median and mean:
```{r}
plot(density(d$amount), xlim = c(0, max(d$amount)))
rug(d$amount)
abline(v = c(median(d$amount), mean(d$amount)), col = c("green", "purple"))
```

What's the relationship betwee price (`amount`) and the square footage (`sqft`) of the house?
```{r}
plot(d$sqft, d$amount)
```

We may have already noticed the very large value for square foot in the output from `summary(d)`
above.
There is a house with 16,830 square feet!
Which observation is this?

```{r}
subset(d, sqft == 16830)
```

Alternatively, 
```{r}
d[ which.max(d$sqft), ]
d[ !is.na(d$sqft) & d$sqft == 16830, ]
```
This is subsetting and in R this is very powerful and flexible. It is also very important to master
so you are fluent and can express operations easily.

Note that we are providing a condition to identify the rows and nothing for the columns - nothing
after the `,`. That means all elements in that dimension.


Searching the address, we find
[here](https://www.zillow.com/homedetails/2057-15th-St-APT-D-San-Francisco-CA-94114/2088489347_zpid/)
as a likely candidate. This indicates 1,312 as the value for square footage.
So let's change the value in our data.frame. Either of the following work:
```{r}
d$sqft[ d$address == "2057 15th St. #D"] = 1312
d[ d$address == "2057 15th St. #D", "sqft"] = 1312
```

Be wary of doing this in general without carefully checking where the original value came from
and whether we have found the correct value.

Is it possible that we have 2 or more houses with the same value for `address`?
We should have checked:
```{r}
table(d$address == "2057 15th St. #D")
sum(d$address == "2057 15th St. #D")
```
So we are okay in this case, but if there were others, we would have changed other, unintended values.


With this change, we should look at `sqft` versus `amount` again.
We may find another outlier now that we have removed the largest value for `sqft`.

## What's the time period for these data?

```{r}
range(d$date)
```

We can plot this distribution, similar to what we did above:
```{r}
plot(density(as.numeric(d$date)))
```
It looks like there are two periods with one have about twice as many observations/houses.

We could make the bandwidth smaller for the density estimate:
```{r}
plot(density(as.numeric(d$date), bw = 20))
```
Now we see 3 peaks.

Let's count the number of observations in each year.
We first have to compute the year from `date`.
```{r}
y = format(d$date, "%Y")
```
Now we want a frequency table of the counts for each unique year value:
```{r}
table(y)
```


What was the median price in each year?
We could write code to loop over each observation and determine the year and add that to the
computation for the median.
R will help us do this and hide the details of what is a very common statistical operation - `group
by`.
Specifically, we want to split a set of observations by one or more variables and then perform a
computation on each group separately  and get the result for each group.

```{r}
tapply(d$amount, y, median)
```

While we are printing the results so we can see and intepret them, we can also assign the result to
a variable and use it later.
```{r}
med.year = tapply(d$amount, y, median)
med.year/min(med.year)
```
So we see that median amounts for 2011 and 2012 were within 10% of each other, but 2026 is 80% more
than the 2012.





# Useful Functions

+ class()
+ dim(), ncol(), nrow()
+ summary()
+ mean(), median(), sd(), min(), max()
+ table(), sum()
+ head()
+ c() - combine/concatenate values into a vector.
+ format() - for converting Date objects, but much more general.
+ plot()
+ density()
+ is.na()
+ `$` - `d$amount`
+ subset(), `[`
+ which.max()
+ tapply() (and by(), aggregate())
+ abline()
+ as.numeric()
+ rug()
+ 
