d = readRDS("../Data/SFHouses.rds")

names(d)

class(d)

dim(d)

head(d)

sapply(d, class)

ty = sapply(d, class)

class(ty)

dim(ty)

length(ty)

names(ty)

ty["date"]

ty[2]

ty

sapply(d, length)

is.list(d)

class(d)

head(d)

tail(d)

lapply(d, class)

ty2 = lapply(d, class)

class(ty2)

sapply(ty2, class)

table(sapply(ty2, class))

table(sapply(ty2, length))

table(d$bathrooms)

table(d$bedrooms)

tt = lapply(d, table)

sapply(tt, length)

duplicated(d$address)

table(duplicated(d$address))

d[duplicated(d$address), ]

which(duplicated(d$address))

class(sapply(d[ , c("amount", "bedrooms", "bathrooms")],  mean, na.rm  = TRUE))

class(sapply(d[ , c("amount", "bedrooms", "bathrooms")],  range, na.rm  = TRUE))

(sapply(d[ , c("amount", "bedrooms", "bathrooms")],  range, na.rm  = TRUE))

v = lapply(d[ , c("amount", "bedrooms", "bathrooms")],  range, na.rm  = TRUE)

sapply(v, class)

class(c(TRUE))

class(c(1L))

x1 = c(TRUE, 1L)

class(x1)

x1

x1 = c(TRUE, 2L)

x1

class(3.141)

x2 = c(x1,3.141)

class(x2)

x3 = c("abc", x1, 3.141)

class(x3)

x3 = c("123", x1, 3.141)

class(x3)

x3 = c(as.numeric("123"), x1, 3.141)

class(x3)


