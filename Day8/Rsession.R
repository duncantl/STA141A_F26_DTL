getwd()

dir = "~/Data/FEC/2026"

file.exists(dir)

file.path(dir, "itcont.txt")

file.exists(file.path(dir, "itcont.txt"))

f = file.path(dir, "itcont.txt")

readLines

l = readLines(f)

readLines

readLines(f, n = 6)

l = readLines(f, n = 6)

l[1]

strsplit(l, "|")

strsplit(l[1], "|")

strsplit(l[1], "|", fixed = TRUE)

e = strsplit(l, "|", fixed = TRUE)

e

sapply(e, length)

l = readLines(f, n = 60000)

e = strsplit(l, "|", fixed = TRUE)

table(sapply(e, length))

e[1:3]

rbind(e[1], e[2], e[3])

class(rbind(e[1], e[2], e[3]))

dim(rbind(e[1], e[2], e[3]))

lapply(1:2, function(i) sapply(e, function(x) x[i]))

lapply(1:2, function(i) sapply(e[1:5], function(x) x[i]))

z = lapply(1:21, function(i) sapply(e, function(x) x[i]))

class(z)

length(z)

sapply(z, length)

d = as.data.frame(z)

dim(d)

read.csv

read.table

?read.table

length(l)

l[626:630]

l[1:629]

l2 = l[-628]

length(l2)

d2 = read.table(textConnection(l2[1:600]), sep = "|", nrows = 60000)

d2 = read.table(textConnection(l[1:600]), sep = "|", nrows = 60000)

d2 = read.table(textConnection(l[1:610]), sep = "|", nrows = 60000)

d2 = read.table(textConnection(l[1:620]), sep = "|", nrows = 60000)

d2 = read.table(textConnection(l[1:623]), sep = "|", nrows = 60000)

d2 = read.table(textConnection(l[1:624]), sep = "|", nrows = 60000)

read.table

d2 = read.table(textConnection(l[1:628]), sep = "|", nrows = 60000, quote = '')

l[23510:23520]

d2 = read.table(textConnection(l), sep = "|", nrows = 60000, quote = '', comment.char = "")



d2 = read.table(f, sep = "|", nrows = 60000, quote = '', comment.char = "")

d2 = read.table(f, sep = "|", quote = '', comment.char = "")

f2 = "~/Data/NASAWeather/cloudhight10.txt"

f2 = "~/Data/NASAWeather/cloudhigh10.txt"

read.table(f2, skip = 7)

z = read.table(f2, skip = 7)

class(z)

dim(z)

unlist(z[, -(1:3)])


