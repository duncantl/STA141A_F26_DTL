procBlock =
function(x, widths = computeWidths(hdr))
{
    hdr = x[2:3]
    i = which(x == "")[1]
    dt = x[ 4:(i-1) ]

    # or drop - c(1:3, seq(which(i)[1], length(x)))

    ans = read.fwf(textConnection(dt), widths = widths)

    # need the names
    if(length(names(widths)))
        names(ans) = names(widths)
    ans
}

computeWidths =
function(h)
{
    let = strsplit(h, "")
    ww = (let[[1]] %in% LETTERS & let[[1]] != "E") | let[[2]] %in% LETTERS
    pos = which(ww)
#    browser()
    widths = diff(pos)
    names(widths) = mkNames(h, widths)
    widths
}

mkNames0 =
function(h, widths)    
{
    # XXX did the computations when stopped in computeWidths
    # and cut and paste them into this function.
    # So diff(pos) but no pos in this function.
    # See next version below.
    v = read.fwf(textConnection(h), widths = diff(pos), header = FALSE)
    sapply(v, function(x) paste(trimws(x), collapse = " "))
}

codetools::findGlobals(mkNames0, FALSE)$variables


mkNames =
function(h, widths)    
{
    v = read.fwf(textConnection(h), widths = widths, header = FALSE)
    sapply(v, function(x) paste(trimws(x), collapse = " "))
}


