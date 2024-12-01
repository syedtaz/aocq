i : "I"$read0 `:input
swin : {[f;w;s] f each { 1_x,y }\[w#0;s]}
f : {[l] sum 1_swin[{x[0] < x[1]};2;l]}
p1 : f[i]
p2 : f[2_swin[sum;3;i]]