.nknots.smspl =
function (n) 
{
    ans = n
    w = !(n < 50L)
    if(any(w)) {
        a1 <- log2(50)
        a2 <- log2(100)
        a3 <- log2(140)
        a4 <- log2(200)
        n2 = n[w]
        w2 = n2 < 200L
        ans[w][w2] = 2^(a1 + (a2 - a1) * (n2[w2] - 50)/150) 
        w2  = n2 >= 200L & n2 < 800L
        ans[w][w2] = 2^(a2 + (a3 - a2) * (n2[w2] - 200)/600) 
        w2 = n2 >= 800L & n2 < 3200L
        ans[w][w2] = 2^(a3 + (a4 - a3) * (n2[w2] - 800)/2400) 
        w2 = n2 >= 3200L
        ans[w][w2] =  200 + (n2[w2] - 3200)^0.2
        ans[w] = trunc(ans[w])
    }
    ans
}
