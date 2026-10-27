source("../Day9/nasa.R")

d = read()

class(d)

dim(d)

names(d)

table(d$lat)

table(d$lon)

summary(d$value)

plot(d$lat, d$value)

boxplot(d$value ~ d$lat)

subset(d, lat == 13.8 & lon == -91.2)   # manually check cell in file.

length(unique(d$date))

sapply(d, class)

boxplot(d$value ~ d$lon)

plot(d$lon, d$lat)

table(d$lon, d$lat)

all(table(d$lon, d$lat) == 1)

ff = list.files("~/Data/NASA", full.names = TRUE)

ff

i = sample(ff, 3)

i

z = lapply(i, read)

# different variables - cloud cover and ozone.

sapply(z, class)

sapply(z, dim)

identical(z[[1]], z[[2]])

all.equal(z[[1]], z[[2]])

head(z[[1]]
  )

head(z[[2]])

sapply(z, function(x) sapply(x, class))

# why is the value in item 2 a character?

class(z[[2]]$value)

z[[2]]$value

unique(z[[2]]$value)

# ....    That's their way of indicating a missing value.

# How to fix our read() function?

?read.table

# new version with na.strings = "...."

read

z2 = read(i[2])

sapply(z2, class)

class(z2$value)

table(is.na(z2$value))

z2$value

ls()

names(al) = ff

err = sapply(al, inherits, 'try-error')

ff[err]

# Aaah.

# .dat files not .txt

# not the same format.

ff

basename(ff)

vars = c("cloudhigh", "cloudlow", "cloudmid", "ozone", "pressure", "surftemp", "temperature")

ffv = lapply(vars, function(v) list.files("~/Data/NASA", pattern = v, full.names = TRUE))

names(ffv)

names(ffv) = vars

sapply(ffv, length)

dfs.vars = lapply(ffv, function(fs) lapply(fs, read))

sapply(dfs.vars, function(x) table(sapply(x, class)))

sapply(dfs.vars, function(x) table(sapply(x, nrow)))

lapply(dfs.vars, function(x) table(sapply(x, nrow)))

dfs = lapply(dfs.vars, function(x) do.call(rbind, x))

sapply(dfs, class)

sapply(dfs, dim)

41472/72

576/(24*24)

sapply(dfs, names)

# Can we put these side by side?  Do the rows match across the 7 variables?

sapply(dfs, function(x, first) identical(x$lat, first), dfs[[1]]$lat)

sapply(dfs, function(x, first) identical(x$lon, first), dfs[[1]]$lon)

sapply(dfs, function(x, first) identical(x$date, first), dfs[[1]]$date)

# Yes

# The value columns should not match

df = cbind(dfs[[1]][, c("lat", "lon", "date", "value")], do.call(cbind, lapply(dfs[-1], function(x) x[, "value", drop = FALSE])))

names(df)

vars

names(df)[-(1:3)] = vars

head(df)

names(dfs)

head(dfs$ozone)

head(dfs$cloudhigh)

# now check these make sense.

plot(df$lon, df$lat)

table(df$lon, df$lat)



table(df$lon, df$lat)

# Does this make sense?

# plot temperature by month of the year (across 6 years)

boxplot( df$temperature ~ as.integer(format(df$date, "%m")))

# Make sense?

boxplot( df$surftemp ~ as.integer(format(df$date, "%m")))

with(df, plot(cloudlow, surftemp))

# color by month?

library(ggplot2)

ggplot(df, aes(x = cloudlow, y = surftemp, color = format(date, "%m"))) + geom_point()

sapply(df, function(x) sum(is.na(x)))



df$date[is.na(df$cloudlow)]

table(df$lat[is.na(df$cloudlow)], df$lon[is.na(df$cloudlow)])


