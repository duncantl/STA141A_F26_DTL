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



fixCols =
    # Change a to df in the code from ncbiFuns3.R
    # Due to cut-and-paste from working in the R terminal with a being the data.frame.

    # Make certain to return the entire data.frame not just the last assignment to a subset of it.
function(df)
{
    # trim the whitespace at the start and end but only for the character columns
    w = sapply(df, is.character)
    df[w] = lapply(df[w], trimws)

    # identify any columns that end in %
    isPct2 = sapply(df, function(x) is.character(x) && all(substring(x, nchar(x)) == "%"))
    df[isPct2] = lapply(df[isPct2], function(x) as.numeric(substring(x, 1, nchar(x) - 1)))

    df  #<<< very important.
}
