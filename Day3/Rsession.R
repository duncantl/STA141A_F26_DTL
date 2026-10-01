d = readRDS("../Data/SFHouses.rds")

dim(d)

a = readRDS("../../Data/AirlineDelays/AirlineDelays.rds")

dim(a)

d$amount

plot(density(d$amount))

plot(density(d$amount, bw = 90000))

plot(density(d$amount))

names(d)

summary(d)

d[ d$sqft == 16830,]

c(1, 3, 7, NA) == NA

table(!is.na(d$sqft))

d[ !is.na(d$sqft) & d$sqft == 16830,]

plot(d$sqft, d$amount)

d[ !is.na(d$sqft) & d$sqft == 16830, "amount"]

d[ !is.na(d$sqft) & d$sqft == 16830, "sqft"]

d[ !is.na(d$sqft) & d$sqft == 16830, "sqft"]

d[ !is.na(d$sqft) & d$sqft == 16830, "sqft"] = 1327

d[ !is.na(d$sqft) & d$sqft == 16830, "sqft"]

d[3,]

d[ !is.na(d$sqft) & d$sqft == 1327, ]

d3 = d

d2 = d

d2[ !is.na(d$sqft) & d$sqft == 1327, ] = 1400

d2[ !is.na(d$sqft) & d$sqft == 1400,]

d2[ 3,]

d = d2

plot(d$sqft, d$amount)

which.max(d$amount)

d[which.max(d$amount),]

subset(d, sqft > 5500 & amount < 5.2e6)

abline(h = 5.5e6, col = "red")

abline(a= 0, b = 1, col = "orange", lwd = 2, lty = 3)

summary(d$amount)

tapply(d$amount, format(d$date, "%Y"), median, na.rm = TRUE)

d = readRDS("../Data/SFHouses.rds")



tapply(d$amount, format(d$date, "%Y"), median, na.rm = TRUE)

d$year = format(d$date, "%Y")

table(d$year)

g = split(d$amount, d$year)

boxplot(g)

boxplot(g, ylim = c(0, 6e6))

d2 = a

dim(d2
  )

plot(d2$CRSElapsedTime, d2$ActualElapsedTime)

smoothScatter(d2$CRSElapsedTime, d2$ActualElapsedTime)

names(a)

length(a$OriginAirportSeqID)

length(unique(a$OriginAirportSeqID))

length(unique(a$Origin))

tt = table(a$Origin, a$OriginAirportSeqID)

head(a[, 6:7])

tt[3,]

rownames(tt)[3]

g = split(a$OriginAirportSeqID, a$Origin)

head(g)

g[[1]]

length(g)

g2 = sapply(g, unique)

g2[[1]]

g2[[2]]

g2[[3]]

g2[[4]]

table(sapply(g2, length))

quantile(a$amount, c(.25, .5, .75))

quantile(a$amount, c(.25, .5, .75), na.rm = TRUE)

table(is.na(a$amount))

quantile(d$amount, c(.25, .5, .75), na.rm = TRUE)

quantile(d$amount, seq(0, 1, by = .05), na.rm = TRUE)

table(d$amount > 1e6)

table(d$amount > 1e6, useNA = "always"
  )

d$date

?format



format.Date

?format.Date



?strptime



format(d$date, "%a")

table(format(d$date, "%a"))

?png



quartz

dev.new

search()

get("quartz", 6)

png = function(file, width = 1000, height = 1000, ...) grDevices::png(file, width = width, height = height, ...)

debug(png
  )

png("lillian.png")


