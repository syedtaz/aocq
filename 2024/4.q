l: read0 `:input

// Part 1

res: raze {{(x;y;l[x][y])}[x] each til count l} each til count l
starts: {[char] {0 2 sublist x} each res where {y[2] = char}[char] each res}
app: {all {y in x}[z] each (x y)}

gen: {[delt] {[delt;coord] ((coord + delt[0]), "M"; (coord + delt[1]), "A"; (coord + delt[2]), "S")}[delt]}

delts: (((0;1);(0;2);(0;3));
      ((0;-1);(0;-2);(0;-3));
      ((-1;0);(-2;0);(-3;0));
      ((1;0);(2;0);(3;0));
      ((-1;1);(-2;2);(-3;3));
      ((1;1);(2;2);(3;3));
      ((-1;-1);(-2;-2);(-3;-3));
      ((1;-1);(2;-2);(3;-3)))



solve: {[funcs;starts] sum {sum {app[y;x;res]}[x] each funcs} each starts}
p1: solve[gen each delts;starts["X"]]

// Part 2

genA: {[delt] {[delt;coord] ((coord + delt[0]), "M"; (coord + delt[1]), "S"; (coord + delt[2]), "M"; (coord + delt[3]), "S")}[delt]}
// ; ; TR -> BL; BR -> TL;
deltsA: (((-1;-1);(1;1);(-1;1);(1;-1)); // TL -> BR + BL -> TR
        ((-1;-1);(1;1);(1;-1);(-1;1)); // TL -> BR + TR -> BL
        ((1;-1);(-1;1);(1;1);(-1;-1)); // TR -> BL + BR -> TL
        ((-1;1);(1;-1);(1;1);(-1;-1))) // BL -> TR + BR -> TL

p2: solve[genA each deltsA; starts["A"]]