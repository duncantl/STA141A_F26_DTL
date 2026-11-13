The challenge is to take the 2 columns in 2colWords.rds
and combine each pair (i.e., each row) into a single string
but with the two strings ordered.

So 
```
1  ekob91a2      sxd   
```
yields `ekob91a2_sxd`.

However
```
7   o2v3ccf   hib1aq
```
results in `hib1aq_o2v3ccf`.

There are functions in [sim.R](sim.R)
that do this in various different related but different ways.
These are

+ mkCol()
+ mkCola()  
+ mkCol2()
+ mkCol3()
+ mkCol4()  


mkCol() and mkCola() are thoroughly vectorized.
They only differ in whether we use paste() or sprintf() to create the resulting strings.

The key to mkCol() and mkCola() is that we 
+ determine which rows have pairs with `column 1 < column2` and which do not
+ have two distinct subsets
+ operate on each subset slightly differently, i.e., combining a with b, and b with a  respectively
+ insert the results into the corresponding element of our result vector.

There is one call to `<` and 2 calls to paste() or sprintf().
All are vectorized.


mkCol2 should be the slowest.
It loops over each row and orders the pair of strings and then pastes them together.

This involves a loop (`apply()`) which iterates over all N rows.
Each operation within the loop involves a call to order() and paste() (and `[`)
Therefore, we have N calls to order() each with a vector of length 2. Similarly, we have N calls to
paste, each with a vector of length 2.


mkCol3 is slightly better than mkCol2.
This loops over each row and reorders each pair.
Now the result is in the correct order with row 1 and row 2 of the results ready for combining via
a single sprintf (or paste).

So we have a loop and N calls to order(), and one call to sprintf() or paste().

mkCol4 is the same as mkCol3 but replacing sprintf() with paste().




# Timings

First we want to ensure all the functions are byte-compiled before we time the results.
We can call each a couple of times and examine the result to see the bytecode label at the bottom of
the printed value of the function. Alternatively, we can call  `mkCol = compile:cmpfun(mkCol)` 
and do the same thing for all of the functions.

We have 1 million rows to test these on.

```r
tms = lapply(list(mkCol, mkCola, mkCol2, mkCol3, mkCol4),
             function(f) system.time(f(z3)))
```

```r
do.call(rbind, tms)[, 1:3]
       user.self sys.self elapsed
mkCol      0.980    0.005   0.986
mkCola     0.919    0.002   0.921
mkCol2    46.050    0.040  46.093
mkCol3    42.572    0.066  42.667
mkCol4    43.482    0.071  43.621
```

We see that mkCola (with paste) is slightly faster than mkCol() (same as mkCola but with sprintf()
rather than paste()).

Both are between 46 to 50 times faster than the much less vectorized versions.

mkCol2() is the slowest because we have N calls to order  and N calls to paste().

mkCol3() is slightly faster than mkCol2() as we have only one call to sprintf() rather than N calls
to paste()/sprintf().

mkCol4() is slightly slower than mkCol3() but only differs by calling paste() rather than sprintf()


So in one case paste() is faster than sprintf() and in another it is slower.
But most importantly, reducing the number of calls to R functions and putting as much data into 
a smaller number of calls is a big win.


Note that a factor of 50 speed up a) is the difference between 1 minute and almost one hour, 
and b) that factor probably will increase slightly when we have even more rows.


For 18 million

```
       user.self sys.self  elapsed
mkCol     51.214    0.386   51.652
mkCola    24.666    0.200   24.896
mkCol2  1208.951    4.466 1215.113
mkCol3   818.480    7.735  828.489
mkCol4   826.514    5.839  833.708
```

mkCola() is now a twice as fast as mkCol(). So paste() is faster than sprintf() in this context.


```r
apply(tms.full, 2, function(x) x/min(x))


       user.self sys.self   elapsed
mkCol   2.076299    1.930  2.074711
mkCola  1.000000    1.000  1.000000
mkCol2 49.012852   22.330 48.807559
mkCol3 33.182518   38.675 33.277996
mkCol4 33.508230   29.195 33.487629
```

So the ratio didn't increase but actually shrunk to 33 for mkCol3 and 4.

The ratio for the least vectorized case is still 48, close to the factor 50 earlier for 1 million observations.



