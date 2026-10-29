```{r}
knitr::purl("AirlineDelays_SampleSolutions.Rmd", "AirlineDelays_SampleSolutions.R", documentation = 2)
```

```{r}
knitr::purl("AirlineDelays_SampleSolutions.Rmd", "AirlineDelays_SampleSolutions.R", documentation = 2)
```

```{r}
textConnection
```

```{r}
ls()
```

```{r}
x = character()
```

```{r}
textConnectionValue
```

```{r}
source("../runByQ.R")
```

```{r}
source("../runByQ.R")
```

```{r}
?textConnection
```

```{r}
source("../runByQ.R")
```

```{r}
v = ""
```

```{r}
con = textConnection("v", "w", local = TRUE)
```

```{r}
source("../runByQ.R")
```

```{r}
z = mkCode("AirlineDelays_SampleSolutions.Rmd")
```

```{r}
z
```

```{r}
source("../runByQ.R")
```

```{r}
source("../runByQ.R")
```

```{r}
z = mkCode("AirlineDelays_SampleSolutions.Rmd")
```

```{r}
head(z, 20)
```

```{r}
cat(z[1:100], sep = "\n")
```

```{r}
q()
  ++b/Assignments/Baseball/BaseballSampleSolutions.Rmd
```

```{r}
data(mtcars)
```

```{r}
mtcars
```

```{r}
with(mtcars, tapply(mpg, cyl, median))
```

```{r}
split(mtcars, mtcars$cyl)
```

```{r}
tapply(mtcars, mtcars$cyl, function(d) lm(mpg ~ wt, d))
```

```{r}
h = c("                                                                  Scientific      Common                     Max    Total Query   E   Per.   Acc.                        ", "Description                                                       Name            Name            Taxid      Score  Score cover Value Ident  Len        Accession        ")
```

```{r}
h
```

```{r}
strsplit(h, "")
```

```{r}
e = strsplit(h, "")
```

```{r}
w = e[[2]] %in% LETTERS
```

```{r}
w
```

```{r}
names(w) = e[[2]]
```

```{r}
w
```

```{r}
which(w)
```

```{r}
w2 = e[[2]] %in% LETTERS
```

```{r}
e[[1]]
```

```{r}
LETTERS
```

```{r}
letters
```

```{r}
w1 = e[[1]] %in% LETTERS
```

```{r}
table(w1)
```

```{r}
table(w2)
```

```{r}
e[[1]][w1]
```

```{r}
e[[1]][w1 & e[[1]] != "E"]
```

```{r}
(w1 & e[[1]] != "E") | w2
```

```{r}
table((w1 & e[[1]] != "E") | w2)
```

```{r}
w = (w1 & e[[1]] != "E") | w2
```

```{r}
e[[2]][w]
```

```{r}
which(w)
```

```{r}
w
```

```{r}
diff(which(w))
```

```{r}
l = readLines("Data/NCBIQuery.txt")
```

```{r}
v = l[10:20]
```

```{r}
nchar(v)
```

```{r}
c(which(w), max(nchar(v))
  )
```

```{r}
diff(c(which(w), max(nchar(v))))
```

```{r}
widths = diff(c(which(w), max(nchar(v))))
```

```{r}
d = read.fwf(textConnection(v), widths = widths, header = FALSE)
```

```{r}
d[1,]
```

```{r}
d[1,11]
```

```{r}
sapply(d, class)
```

```{r}
sapply(d, is.character)
```

```{r}
ww = sapply(d, is.character)
```

```{r}
d[ww] = lapply(d[ww], trimws)
```

```{r}
d[1:2,]
```

```{r}
d$V6
```

```{r}
d$V7
```

```{r}
nchar(d$V7)
```

```{r}
substring(d$V7, 1, nchar(d$V7) -1)
```

```{r}
as.numeric(substring(d$V7, 1, nchar(d$V7) -1))
```

```{r}
read.fwf(textConnection(h), widths = widths, header = FALSE)
```

```{r}
h2 = read.fwf(textConnection(h), widths = widths, header = FALSE)
```

```{r}
dim(h2)
```

```{r}
h2[1,]
```

```{r}
paste(h2[1,], h2[2,])
```

```{r}
paste(trimws(h2[1,]), trimws(h2[2,]))
```

```{r}
trimws(paste(trimws(h2[1,]), trimws(h2[2,])))
```

```{r}
class(h2[1,])
```

```{r}
sapply(h2, paste, collapse = " ")
```

```{r}
sapply(h2, function(x) paste(trimws(x), collapse = " "))
```

```{r}
ll = readLines("Data/NCBIQuery.txt")
```

```{r}
head(ll, 20)
```

```{r}
tmp = l[5:15]
```

```{r}
l[5]
```

```{r}
tmp == ""
```

```{r}
tmp[tmp != ""]
```

```{r}
trimws(tmp)
```

```{r}
tmp != ""
```

```{r}
table(tmp != "")
```

```{r}
h
```

```{r}
h2 = read.fwf(textConnection(h), widths = widths, header = FALSE)
```

```{r}
h2
```

```{r}
h2$V8
```

```{r}
sapply(h2, function(x) paste(trimws(x), collapse = " "))
```

```{r}
ff = list.files("Data/NASA/", pattern = "txt", full = TRUE)
```

```{r}
length(ff)
```

```{r}
a = lapply(ff, readLines)
```

```{r}
names(a) = ff
```

```{r}
l6 = sapply(a, function(x) x[6])
```

```{r}
length(unique(l6))
```

```{r}
unique(l6)
```

```{r}
l5 = sapply(a, function(x) x[5])
```

```{r}
length(unique(l5))
```

```{r}
table(l5)
```

```{r}
table(table(l5))
```

```{r}
h
```

```{r}

```
