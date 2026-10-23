l = readLines("../Data/USA_CA_Mount.Shasta.725957_TMYx.pvsyst")

l[13:14]

grep("W/m2", l)

l2 = readLines("../Data/USA_CA_Mount.Shasta.725957_TMYx.pvsyst", encoding = "latin1")

l2[14]

grep("W/m2", l2)



tmp = read.table("../Data/NASA/temperature1.txt", skip = 7,header = FALSE)

class(tmp)

dim(tmp)

head(tmp)

tmp[ , -(1:2)]

tmp[ , -(1:3)]

class(tmp[ , -(1:3)])

class(tmp[,1])

class(tmp[,4])

class(tmp[,4, drop = FALSE])

tmp[,1]

source("nasa.R")

z = read()

source("nasa.R")

ls()

tmp

tmp[,1]

source("nasa.R")

compLatitude(tmp[,1])

source("nasa.R")

z = read()

source("nasa.R")

z = readLines("../Data/NASA/temperature1.txt", n = 6)

z

z[6]

compLongitude(z[6])

read.table("../Data/NASA/temperature1.txt", nrow = 1, skip = 5)

strsplit(z[6], " ")

v = strsplit(z[6], " ")[[1]]

v = v[ v != ""]

v

compLongitude(v)

Sys.getlocale()

ll = readLines("~/sta141a/Assignments/ReadingData/zip/USA_CA_Marin.County.AP-Gnoss.Field.720406_TMYx.stat", encoding = "latin1")

head(ll)

grep("abc", ll)

?Encoding
