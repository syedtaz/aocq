inp: "\n" vs "c"$read1 `:input

// Mappings between chars and scores

l : "abcdefghijklmnopqrstuvwxyz"
assoc : (l , upper l)!1 + til 52
assoc[" "] : 0

// For folding
empty : (l, upper l) ! (52 # 0)
ins : { x[y]:x[y]+1; x}

// Part 1

g : {[s] x : empty ins/ s; assoc[x?2]}
f : {[s] hl : "i"$((count s) % 2); sum each g (s[(0;hl)]; s[(hl;(count s) - hl)])}
sum f each inp

// Part 2
sum ({assoc[(empty ins/ x)?3]} each (0N 3#inp))