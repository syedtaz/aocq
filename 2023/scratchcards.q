// Part 1

pairs : {"|" vs x} each "\n" vs "c"$read1 `:input
trimmed : {trim 10_x[0], trim x[1]} each pairs
conv : {"I"$(" " vs x) except enlist""} each trimmed
f : {[s] c : 0 +/ raze ((0; 10) sublist s) {x = y}/:\:((10;25) sublist s); "i"$floor 2 xexp (c - 1)}
res : 0 +/ f each conv

// Part 2

