read = 
function(file = "../Data/NASA/temperature1.txt", encoding = "UTF8")
{
    tmp = read.table(file, skip = 7,header = FALSE)
    vals = unlist(tmp[, -(1:3)])
    d = data.frame(value = vals)
    
    # latitude
    lat = compLatitude(tmp[,1])
    d$lat = rep(lat, ncol(tmp) - 3)


    # Read the first 6 lines to get the date and the longitude
    # Other ways to do longitude
    tmp2 = readLines(file, n = 6)
#    browser()
    
    # longitude
    # Split the longitude line get only the values
    # Originally had
    #     lon = strsplit(tmp2[6],  " ")
    # What difference does it make?
    # options(warn = 2, error = recover)
    # then read()
    lon = strsplit(tmp2[6],  " ")[[1]]
    lon = lon[ lon != "" ]
    lon = compLongitude(lon)
    d$lon = rep(lon, each = nrow(tmp))

    
    # date
    d$date = as.Date(getDate(tmp2[5]), "%d-%b-%Y")

    # remove the meaningless row names.
    rownames(d) = NULL
    
    d
}

compLatitude =
function(x)
{
#    browser()
    ans = as.numeric(substring(x, 1, nchar(x) - 1))
    ns = substring(x, nchar(x))
    w = ns == "S"
    ans[w] = ans[w]*-1

    ans
}

compLongitude =
function(x)
{
    ans = as.numeric(substring(x, 1, nchar(x) - 1))
    we = substring(x, nchar(x))
    w = we == "W"
    ans[w] = ans[w]*-1

    ans
}

# Should  consolidate compLatitude and compLongitude as
# later was a copy of the former and then tweak variable names
# and "S" to "W"

getDate =
    # quick initial implementation
function(x)
{
  trimws(gsub(":", "", gsub("TIME", "", x)))
}


getDate =
    # Probably better way
function(x)
{
    els = strsplit(trimws(x), " ")[[1]]
    els[which(els == ":") + 1]
}
