source("../Day9/nasa.R")



i = c("ozone58.txt" , "cloudlow2.txt", "ozone49.txt")

z = read()

class(z)

dim(z)

names(z)

24*24

table(z$lat)

length(table(z$lat))

table(z$lon)

table(z$lat, z$lon)

table(table(z$lat, z$lon))

length(unique(z$date))

z$date[1]

sapply(z, class)

summary(z$value)

sapply(z, function(x) table(is.na(x)))

sapply(z, function(x) sum(is.na(x)))

plot(z$lat, z$value)

plot(z$lon, z$value)

ff = list.files("../Data/NASA", full.names = TRUE)

head(ff)

length(ff)

sample(ff, 3)

i

j = file.path("../Data/NASA", i)

j

file.exists(j)

z = lapply(j, read)

class(z)

class(z[[3]])

class(z[3])

length(z[3])

x = c(1, 3)

x[1]

sapply(z, class)

sapply(z, dim)

sapply(z, names)

lapply(z, function(x) sapply(x, class))

z[[2]]$value

w = as.numeric(z[[2]]$value)

x = z[[2]]$value

x[ is.na(x) ]

x[ is.na(w) ]



j

getwd()

source("NASA/nasa2.R")

read

z = lapply(j, read)

lapply(z, function(x) sapply(x, class))

ff

err = sapply(z, inherits, 'try-error')

table(err)

z[err]

ff[err]

ff = list.files("../Data/NASA", full.names = TRUE, pattern = "cloudhigh")

ff

z = lapply(ff, read)

length(z)

names(z) = ff

sapply(z, class)

table(sapply(z, class))

rbind

z2 = do.call(rbind, z)

class(z2)

dim(z2)

sapply(z2, class)

table(z2$date)

table(z2$lat)

ff

sapply(z2, nrow)

dim(z2)

sapply(z, nrow)



l = readLines("../Data/NCBIQuery.txt")

head(substring(l, 1, 7), 10)

w = substring(l, 1, 7) == "Query #"

table(w)

which(w)

length(l)

cs = cumsum(w)

table(cs)

g = split(l, cs)

length(g)

g[[1]]

head(g[[2]], 10)

which(g[[2]] == "")

x = g[[2]]

x = x[-(1:3)]

head(x)

which(x == "")[1]

x2 = x[ 1:(which(x == "")[1] - 1)]

x2

x2[1:2]

h = x2[1:2]

strsplit(h[2], "|")

strsplit(h[2], "")

strsplit(h[2], "")[[1]] %in% LETTERS

which(strsplit(h[2], "")[[1]] %in% LETTERS)





################################################



source("../Day9/nasa.R")

read

v = read()

v

v = read()

debug(read.table)

undebug(read.table)


