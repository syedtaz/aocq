l:"\n\n" vs "c"$read1 `:input
orders:{"I"$ "|" vs x} each "\n" vs l[0]
updates:{"I"$ "," vs x} each "\n" vs l[1]
to_dict:{[d;lst] k:`$string lst[0];v:lst[1]; $[first null d[k];d[k]:(enlist v);d[k]:(d[k],v)];d}
start:`a`b!((enlist 1);(enlist 2))
dict:`a`b _ start to_dict/ orders


validity:{k:`$string x[1]; any dict[k] in x[0]}
check_order:{[up] pats: {[up;x](x sublist up; first x _ up)}[up] each 1 _ til count up; not any validity each pats }
valids:updates where check_order each updates
p1:sum {x[(count x) div 2]} each valids

// Part 2
invalids:updates where not check_order each updates
firsti:{k:`$string x; first where y in dict[k]}
reorder: {[lst] i: 1; while[i<count lst; left: i sublist lst; idx: firsti[lst[i];left]; $[null idx;i:i+1;[temp: lst[idx]; lst[idx]:lst[i]; lst[i]:temp;i:idx]]]; lst}
p2: sum {res: reorder x; res[(count res) div 2]} each invalids