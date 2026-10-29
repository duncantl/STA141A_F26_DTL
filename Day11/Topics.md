# Concepts

+ Computational Reasoning

+ Problem Solving



+ Summarizing Data

+ Verifying Data

+ Transforming Data

+ Reading Data

+ R data structures

+ Subsetting

+ Group By 

+ R function calls


# You should understand

+ data.frame

+ how to subset a vector
  + logical condition 
     + `==`, `>` ... 
	 + `&`, `|` - vector operations
	 + `&&`, `||` - scalar
	 + `!`
	 + `any()`, `all()  `
  + index/position
  + negative position
  + by name `df$var`
  + subset() - `subset(df, var > 10 & var < 30)`
  + column in a list/data.frame - `df$varName`

+ NA values
   + is.na()
   + anyNA()



+ How to examine and verify a data object
  + class()
  + dim()/length()/nrow()/ncol()
  + names()
  + `sapply(x, class)`

  + table()
  + min() & max(), range()
  + summary() - column/vector and data.frame
  
  + identical(), all.equal()


+ Transforming data
  + format() for Dates
  + cut()
  + factor(), ordered()

+ plots
  + `hist()`
  + `density()`
  + `plot(x, y)`
  + `boxplot()` - 0, 1 and 2 groups
  + `matplot()`

+ apply functions
  + sapply() and lapply()

+ Group-by operations
  + split()
  + tapply() and by()
  + by 1 or more variables
  + Factors - factor() and ordered() 
  + cut()

  +  cumsum() to get group identifiers


+ Matching across vectors and data.frames
  + match()
  + merge()


+ how to read data from a file
  + strategies and computational reasoning
  
  + read.table    - file or connection
  + read.csv
  + read.fwf()
  + strsplit()
  + substring()


  + textConnection()



