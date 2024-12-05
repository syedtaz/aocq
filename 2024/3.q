l : raze read0 `:input
// Read and flatten the input and bind it to l
m : l ss "mul"
// Find the starting indices of the string "mul" and bind it to m
pairs : {0^"I" $ "," vs first ")" vs 4_x} each m cut l
// m cut l gives you the substring between m_i and m_i+1 from l
// for each substring, drop the first 4 characters (i.e drop "mul(")
// then split on ")" and extract the first element
// then split on "," and cast the tuple to integers
// and fill nulls with 0 and bind to pairs
scores : {$[(count x) = 2;x[0] * x[1];0]} each pairs
// for each element in pairs, if the number of elements is 2 (i.e it didn't have
// any nulls during the splitting) then multiply them together, otherwise return 0
p1 : sum scores

m {s: l ss y; s s bin x}/: ("do()"; "don't()")