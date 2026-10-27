
computeWidths =
function(h, body)
{
    let = strsplit(h, "")
    ww = (let[[1]] %in% LETTERS & let[[1]] != "E") | let[[2]] %in% LETTERS
    pos = which(ww)
    widths = diff(c(pos, max(nchar(body))))
    names(widths) = mkNames(h, widths)
    widths
}

procBlock =
function(x, widths = computeWidths(hdr, dt))
{
    hdr = x[2:3]
    i = which(x == "")[1]
    dt = x[ 4:(i-1) ]

    # or drop - c(1:3, seq(which(i)[1], length(x)))

    ans = read.fwf(textConnection(dt), widths = widths)

    # need the names
    if(length(names(widths)))
        names(ans) = trimws(names(widths))


    fixCols(ans)
}



tmp = fixCols = 
function(df)
{
    # trim the whitespace at the start and end but only for the character columns
    w = sapply(a, is.character)
    a[w] = lapply(a[w], trimws)

    # identify any columns that end in %
    isPct2 = sapply(a, function(x) is.character(x) && all(substring(x, nchar(x)) == "%"))
    a[isPct2] = lapply(a[isPct2], function(x) as.numeric(substring(x, 1, nchar(x) - 1)))
}
