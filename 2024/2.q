l: {"I"$" " vs x} each read0 `:input
swin : {[f;w;s] f each { 1_x,y }\[w#0;s]}
diff : {[n] all {(x >= 1) and (x <= 3)} each 1_swin[{abs x[0] - x[1]};2;n]}
f: {[n] diff[n] and (all 1_swin[{x[0] > x[1]};2;n]) or (all 1_swin[{x[0] < x[1]};2;n])}
p1 : 0 +/ f each l

rem : {[temp;bad] temp[(til count temp) except bad]}
g : {[n] s:{rem[x;(y)]}[n] each til count n; any f each s}
p2 : 0 +/ g each l