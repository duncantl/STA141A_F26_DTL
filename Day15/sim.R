mkWord0 =
function()
{
    wordLen = sample(3:8, 1)
    chars = sample(c(letters, 0:9), wordLen, replace = TRUE)
    paste(chars, collapse = "")
}

mkWord = mkString =
function(n)    
{
    wordLen = sample(3:8, n, replace = TRUE)
    chars = sample(c(letters, 0:9), sum(wordLen), replace = TRUE)
    tapply(chars, rep(1:n, wordLen), paste, collapse = "")
}

mkString2 =
function(n)
{
    chars = c(letters, 0:9)
    replicate(n,  paste(sample(chars, sample(3:8, 1), replace = TRUE), collapse = ""))
}


############

mkCol =
    # vectorized in 2 subgroups
    #   where already in sorted pairs
    #   when need to reverse the pairing.
    #  1 call to <
    #  2 calls to sprintf()
function(z)
{
    w = z$a < z$b
    z$c = ""
    z$c[w] = sprintf("%s_%s", z$a[w], z$b[w])
    z$c[!w] = sprintf("%s_%s", z$b[!w], z$a[!w])
    z
}

mkCola =
    # same as mkCol() but using paste() instead of sprintf()
    # Still 1 call to < and 2 to paste()
function(z)
{
    w = z$a < z$b
    z$c = ""
    z$c[w] = paste(z$a[w], z$b[w], sep = "_")
    z$c[!w] = paste(z$b[!w], z$a[!w], sep = "_")
    z
}

mkCol2 =
    # order() and paste() for each pair of elements
    # n calls to order() and n calls to paste()
function(z)
{
    z$c = apply(z, 1, function(x) paste(x[order(x)], collapse = "_"))
    z
}

mkCol3 =
    # sprintf() to combine each pair of elements
    # n calls to order
    # one call to sprintf()
    # actually 3 but one we make. Others are implicit (part of my prompt setting.)
function(z)
{
    tmp = apply(z, 1, function(x) x[order(x)])
    # vectorize the sprintf()
    z$c = sprintf("%s_%s", tmp[1,], tmp[2,])
    z
}

mkCol4 =
    # paste() to combine each pair of elements
function(z)
{
    tmp = apply(z, 1, function(x) x[order(x)])
    # paste rather than sprintf() - still vectorized
    z$c = paste(tmp[1,], tmp[2,], sep = "_")
    z
}


if(FALSE) {
N = 18e6
z = data.frame(a = mkString(N), b = mkString(N))


}

if(FALSE) {

    x = data.frame(a = c("asj123", "hdsahvu", "ttsq", "isdii"),
                   b = c("cgyy562", "baoiw25", "adkeoje", "zoosd21"),
                   stringsAsFactors = FALSE)

}
