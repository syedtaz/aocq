pairs : {"-" vs x} each raze ({"," vs x} each ("\n" vs "c"$read1 `:input))

f : {x[0] < y[0] & x[1] < y[1]}

within : {[a; b] (f [a;b]) || (f [b;a])}