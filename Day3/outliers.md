
Consider the SF housing data

Let's look at the distribution of the sale price
```{r}
summary(d$amount)
```

$20M is a lot, but not unheard of in the Bay Area.

Is this record correct or simply a very expensive house?

```{r}
d[which.max(d$amount),]
```

There is no information about sqft, bathrooms, bedrooms.
On the Web, the sale price seems to be 20,500,000 - so correct.


How many houses are there with a sales price over say $5M
```{r}
table(d$amount > 5e6)
```
Do we want to explore these also?


Let's look at bivariate distributions
```{r}
w = sapply(d, is.numeric)
pairs(d[w])
```

+ 8 bathrooms?


Let's look more closely at sqft v price
```{r}
plot(d$sqft, d$amount)
```

15,000 square feet? and so cheap?

```{r}
d[d$sqft > 15000,]
```
No that is not good. It includes a lot of records where the sqft is `NA`.

```{r}
d[!is.na(d$sqft) & d$sqft > 15000,]
```
This has gone down in price since it was sold in 2011!

Searching on the Web,
[Zillow](https://www.zillow.com/homedetails/2057-15th-St-APT-D-San-Francisco-CA-94114/2088489347_zpid/)
has a match and has sqft as 1312. The price history doesn't list 2011.

[Redfin](https://www.redfin.com/CA/San-Francisco/2057-15th-St-94114/unit-D/home/173449276)
approximately matches the sales price in 2011 (620,000 and Feb 11, 2010.)
The sqft is 1312. So we have a match from Zillow and Redfin.

Both list built in 1907.

So let's change this value:

```{r}
d$sqft[ d$address == "2057 15th St. #D"] 
d$sqft[ d$address == "2057 15th St. #D"]  = 1312
```


Let's plot again
```{r}
plot(d$sqft, d$amount)
```

What about the ~ 8000 sqft
```{r}
d[which.max(d$sqft),]
```
Sold for $9M. So sqft ~ 8000 is not unreasonable.

[Zillow](https://www.zillow.com/homedetails/8-Camino-Lenada-Orinda-CA-94563/18475099_zpid/) actually reports it at 8,190 sqft.


What about the 4 properties around $5M and about 6000 sqft?

```{r}
d[d$amount > 4.8e6 & d$sqft > 5800,]
```

No - need to drop records with NA values for sqft
```{r}
d[d$amount > 4.8e6 & !is.na(d$sqft) & d$sqft > 5800,]
```

(We could use subset()
```{r}
subset(d, amount > 4.8e6 & sqft > 5800)
```
This is convenient, but it is also important to learn subsetting properly.
)


Do these seem reasonable?


Another way to check is compare these to similarly sized homes in the corresponding  county.
How would you do this.


