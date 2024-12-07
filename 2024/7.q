l: {trim ":" vs x} each read0 `:input
t: {"J"$x[0]} each l
v: {reverse "J"$" " vs x[1]} each l
f: {[lst] $[1 = (count lst); enlist first lst; [rest: f[1 _ lst]; a: first lst; (a + rest) , (a * rest)]]}
p1: sum t where {target: first x; cands: f (1 _ x); target in cands} each t ,' v

g: {[lst] $[1 = (count lst); enlist first lst; [a: first lst; rest: g[1 _ lst]; (a + rest) , (a * rest), ({[future;cur] "J"$ (string cur), (string future) }[a] each rest)]]}
p2: sum t where {target: first x; cands: distinct g (1 _ x); target in cands} each t ,' v