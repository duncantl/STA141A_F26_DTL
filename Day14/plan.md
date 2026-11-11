# NCBI Functions
   + Day10/NCBI

   + top-down functions
       + calls other functions we have yet to define/write
       + then create these small stand-alone functions
   + bottom-up
       + create small functions to solve each small step
       + easier to create high-level function to assemble the solution as sequence of steps.         

   + Note we are converting all the values in each column in a single call.
       + trimws()
       + nchar(), substring(), as.numeric() for %

   + Non-local/wrong variables in functions from cutting-and-pasting from the R console and not
     changing the variable names to match the function parameters/argument names
       + find them with `codetools::findGlobals(fun, FALSE)$variables`

   + returning the object not assigning to a subset of the object if that is the last computation.

# integrate() example
  + integrate  `f = function(x) 2` from 0 to 1
  + numerical integration    

```r
integrate(f, 0, 1)
```
   + Error.
```
Error in integrate(f, 0, 1) : 
  evaluation of function gave a result of wrong length
```

   + f() is called with a vector of values for x.
     + Not obvious.
     + `debug(f)` then `integrate(f, 0, 1)`
     + ls() and class(x), length(x)

   + Better approach?
      + `f(x)` returns a vector with as many elements as x and 2 for each element.
```r
f = function(x) rep(2, length(x))
```
```r
integrate(f, 0, 1)
```


# .nknots.smspl in smooth.spline help page 

  + `nKnots = Vectorize(.nknots.smspl)`
```r    
nKnots <- Vectorize(.nknots.smspl) 
curve(nKnots, 1, 250, n = 250)
```


```r
curve(nKnots, 1, 5000, n = 25000)
source("nknots.smspl_2.R")
curve(.nknots.smspl, 1, 250, n = 250)
curve(.nknots.smspl, 1, 5000, n = 25000)
```
   + Not actually a fair comparison.
       + Byte-code compile both and then compare


# Dates
  + readDates.R

  + don't want to process each element separately

  + group them based on their format
     + `tapply(dates, formatType, format, theFormatString)`
     + little tricky as
         +  `theFormatString` changes for each `formatType` so need to pass it in each
            call to format, i.e., for each group/bucket.
         + the result will not be in the order of dates so hard to realign with other rows/data.
             + Can do this, just need to be intentional.

     + Alternative




