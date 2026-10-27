# Finish NASA

+ reminder of function read() we wrote last Thursday.
+ check it works.
   + verify the results make sense and are correct.
   
+ Read all the other files
  + 7 variables
  + 72 for each 
     + = 12 months * 6 years

+ warning
  + .... as NA value_

+ combining the data for each variable

+ combining the data across variables

# NCBI

../Data/NCBIQuery.txt

+ Look for Query #1 or #2...
+ or "Sequences producing significant alignments:"

```
l = readLines("../Data/NCBIQuery.txt")
w = "Sequences producing significant alignments:"
table(w)
g = split(l, cumsum(w))

length(g)
```

Does this make sense?

Check g[[2]] and g[[3]]

Note use of [[.            <<<<<<<<<<<<<<<<<<<

Get 
+ header - column names - lines 2 and 3.
+ just the table of data part


b = g[[2]]
h = b[2:3]
let = strsplit(h, "")

Starts with a capital letter on row 2
Doesn't capture "cover" corresponding to Query cover
So look on row 1 *as well*
But matches the E in "E Value"
So ignore E in the first row.

ww = (let[[1]] %in% LETTERS & let[[1]] != "E") | let[[2]] %in% LETTERS
pos = which(ww) 

mapply(function(s, e) substring(h[2], s, e - 1L), pos, c(pos[-1], 1000))

width = diff(pos)


e = which(b == "")[1]
txt = b[4:(e-1)]

See NCBIfuns.R


Start with procBlock0.R
 + debug(procBlock)
 + browser()


add widths to procBlock as a parameter/formal argument
  + add default value
  + call to a function computeWidths()
  + we have to implement that.



Could use substring rather than read.fwf.
 + Have to convert columns to numbers.


Need to 

+ trim each character column
+ convert the % for Query cover column

a = procBlock(g[[2]])

w = sapply(a, is.character)
a[w] = lapply(a[w], trimws)

sapply(a, class)

isPct = sapply(a, function(x) all(grepl("%", x)))

if(any(w))
  a[isPct] = lapply(a[isPct], function(x) as.numeric(gsub("%", "", x)))


Could also check % is the last character.
 + also can use regular expressions

isPct2 = sapply(a, function(x) all(substring(x, nchar(x)) == "%"))
a[isPct2] = lapply(a[isPct2], function(x) as.numeric(substring(x, 1, nchar(x) - 1)))

a[,7]
a$"Query cover"

summary(a$"Query cover")


b = procBlock(g[[3]])


sapply(sprintf("ncbiFuns%s.R", c("", 2:4)), source)

Cut and paste in v3 had `a` not `df` in fixCols.
codetools or CodeAnalysis didn't identify it - due to the `a[w] = ...`


split(names(a), sapply(a, class))
