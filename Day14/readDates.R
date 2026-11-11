dates = readLines("../Data/messyDates.txt")

head(dates)
# different formats





























fmts = c(a = "%y/%d/%b",
         b = "%d/%m/%y",
         c = "%m-%d-%y",
         d = "%Y/%b/%d")

dt = rep(as.Date(NA), length(d))

for(fmt in fmts) {
    print(fmt)
    w = is.na(dt)
    dt[w] = as.Date( d[w], fmt)
}

table(is.na(dt))

head(d[is.na(dt)])



