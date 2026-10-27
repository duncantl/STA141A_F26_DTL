########################
# Missing the last column.
# Need to add the max(nchar(body)) to pos before diff where body is the vector of lines of data in the table
# Need to have the body.
# Arrange for procBlock() to provide this in the call to computeWidths
# But don't have it (dt) until 3rd line of procBlock()

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

    ans
}

