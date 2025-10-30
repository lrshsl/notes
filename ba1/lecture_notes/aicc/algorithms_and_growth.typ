= Gale-Shapley Algorithm

All $a in A$ propose to their highest preference in $B$.

= Complexity of algorithms

$ f(n) = 1.5 n^2 + 200n + 1000 $

$
  g(n) = 1.5 n^2 \
  h(n) = 200n \
  t(n) = 1000
$

For small inputs, $t(n)$ most significant, $h(n)$ takes over and in the limit,
only $g(n)$ relevant.

$
  f(x) "is" O(g(x)) \
  <-> \
  exists k forall x > k : |f(x)| <= C|g(x)|
$

