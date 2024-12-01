l : "\n" vs "c"$read1 `:input
ll : {"I"$(" " vs x) except enlist""} each l
a : asc {x[0]} each ll
b : asc {x[1]} each ll
res : 0 +/ abs (a - b)
res2: 0 +/ {x * 0 +/ {x = y}[x] each b} each a