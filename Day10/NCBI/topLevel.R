read = 
function(file = "../Data/NCBIQuery.txt",  l = readLines(file))
{
    #    l = readLines(file)
    w = l == "Sequences producing significant alignments:"
    g = split(l, cumsum(w))
    g = g[-1]

    lapply(g, procBlock)
}
