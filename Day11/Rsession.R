knitr::purl("AirlineDelays_SampleSolutions.Rmd", "AirlineDelays_SampleSolutions.R", documentation = 2)

knitr::purl("AirlineDelays_SampleSolutions.Rmd", "AirlineDelays_SampleSolutions.R", documentation = 2)

textConnection

ls()

x = character()

textConnectionValue

source("../runByQ.R")

source("../runByQ.R")

?textConnection

source("../runByQ.R")

v = ""

con = textConnection("v", "w", local = TRUE)

source("../runByQ.R")

z = mkCode("AirlineDelays_SampleSolutions.Rmd")

z

source("../runByQ.R")

source("../runByQ.R")

z = mkCode("AirlineDelays_SampleSolutions.Rmd")

head(z, 20)

cat(z[1:100], sep = "\n")

q()
  ++b/Assignments/Baseball/BaseballSampleSolutions.Rmd

data(mtcars)

mtcars

with(mtcars, tapply(mpg, cyl, median))

split(mtcars, mtcars$cyl)

tapply(mtcars, mtcars$cyl, function(d) lm(mpg ~ wt, d))

h = c("                                                                  Scientific      Common                     Max    Total Query   E   Per.   Acc.                        ", "Description                                                       Name            Name            Taxid      Score  Score cover Value Ident  Len        Accession        ")

h

strsplit(h, "")

e = strsplit(h, "")

w = e[[2]] %in% LETTERS

w

names(w) = e[[2]]

w

which(w)

w2 = e[[2]] %in% LETTERS

e[[1]]

LETTERS

letters

w1 = e[[1]] %in% LETTERS

table(w1)

table(w2)

e[[1]][w1]

e[[1]][w1 & e[[1]] != "E"]

(w1 & e[[1]] != "E") | w2

table((w1 & e[[1]] != "E") | w2)

w = (w1 & e[[1]] != "E") | w2

e[[2]][w]

which(w)

w

diff(which(w))

l = readLines("Data/NCBIQuery.txt")

v = l[10:20]

nchar(v)

c(which(w), max(nchar(v))
  )

diff(c(which(w), max(nchar(v))))

widths = diff(c(which(w), max(nchar(v))))

d = read.fwf(textConnection(v), widths = widths, header = FALSE)

d[1,]

d[1,11]

sapply(d, class)

sapply(d, is.character)

ww = sapply(d, is.character)

d[ww] = lapply(d[ww], trimws)

d[1:2,]

d$V6

d$V7

nchar(d$V7)

substring(d$V7, 1, nchar(d$V7) -1)

as.numeric(substring(d$V7, 1, nchar(d$V7) -1))

read.fwf(textConnection(h), widths = widths, header = FALSE)

h2 = read.fwf(textConnection(h), widths = widths, header = FALSE)

dim(h2)

h2[1,]

paste(h2[1,], h2[2,])

paste(trimws(h2[1,]), trimws(h2[2,]))

trimws(paste(trimws(h2[1,]), trimws(h2[2,])))

class(h2[1,])

sapply(h2, paste, collapse = " ")

sapply(h2, function(x) paste(trimws(x), collapse = " "))

ll = readLines("Data/NCBIQuery.txt")

head(ll, 20)

tmp = l[5:15]

l[5]

tmp == ""

tmp[tmp != ""]

trimws(tmp)

tmp != ""

table(tmp != "")

h

h2 = read.fwf(textConnection(h), widths = widths, header = FALSE)

h2

h2$V8

sapply(h2, function(x) paste(trimws(x), collapse = " "))

ff = list.files("Data/NASA/", pattern = "txt", full = TRUE)

length(ff)

a = lapply(ff, readLines)

names(a) = ff

l6 = sapply(a, function(x) x[6])

length(unique(l6))

unique(l6)

l5 = sapply(a, function(x) x[5])

length(unique(l5))

table(l5)

table(table(l5))

h


