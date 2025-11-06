#import "../../template.typ" : *

= Lecture 13

#note(title: "Recall")[
  $ sum_(n=1)^(oo) 1 / n^alpha $
  - converges if $alpha > 1$
  - diverges if $alpha <= 1$
]

== More general example

$
  sum_(n=1)^(oo) (n+1) / sqrt(n^5 + 2n^3 + 4n) a_n
$

$
  a_n = n(1 + 1/n) / (n^5/2) sqrt(1 + 2/n^2 + 4/n^4) = 1/n^(3/2) ((1 + 1/n) / sqrt(1 + 2/n^2 + 4/n^4))
$
-> 1 as $n->oo$

=> $a_n < 1/n^3/2 dot 2$ for $n > "same" k$



== More convergence theorems

=== Alternating series

#note(title: "Definition")[
  A series is called alternating if it has a form $
    sum_(i=0)^oo (-1)^i b_i "or"
    sum_(i=0)^oo (-1)^(i+1) b_i
  $ with $b_i >= 0 h1 forall i$
]


#note(title: "Alternatively")[
  A series is alternating if $a_k a_(k+1) <= 0 h1 forall k in NN$
]

#note(title: "Theorem")[
  Let $a_n = sum_(i=0)^oo a_i$ be alternating st:
  1. $lim_(i=>oo) a_i = 0$
  2. $|a_(i+1)| <= |a_i| h1 forall i in NN$

  Then $a_n$ converges.
]

=== Example

$
  a_n = (-1)^n 1/n \
  sum_(n=0)^oo a_n
$

1. Alternating: $a_n a_(n+1) <= 0$
2. $lim_(n->oo) a_n = 0$
3. $|a_(n+1)| = 1/(n+1) < 1/n = |a_n|$

Therefore $sum_(i=0)^oo ((-1)^n 1/n)$ converges.

#note(title: "Remark")[
  Alternating sequence criterion guarantees convergence but *not absolute* convergence
]

=== E. g.

$sum_(i=0)^(oo) ((-1)^n 1/n)$ converges but it's absolute series does not (= harmonic sequence).

== Cauchy's criterion

Let $(x_n)$ be a sequence st $lim_(n->oo) root(n, |x_n|) = l$

Then

1. if $l<1$ converges
2. if $l>1$ diverges
3. if $l=1$ ?

=== Examples

====
Sequences with $limits(lim) sqrt(|x_n|) = 1$

- $x_n = (-1)^n$: $limits(sum)_(i=0)^(oo) x_i$ diverges but $(s_n)$ is bound
- $x_n = n$: $limits(sum)_(i=0)^(oo) x_i$ diverges but $(s_n)$ is unbound
  - diverges to $oo$

====

$ x_n = 1/n$, $limits(sum)_(i=0)^(oo) x_i = +oo$ -> diverges

====

$x_n = 1/n^2$, $limits(sum)_(i=0)^(oo) x_n$ converges absolutely

====

$x_n = (-1)^n / n$, $limits(sum)_(i=0)^(oo) x_i$ converges but not absolutely


== D'Alambert criterion


Let $(x_n)$ be a sequence st $ lim |x_(n+1)| / |x_n|$

=== Example

D'Alamber:

$
  lim_(k->oo) |x_(k+1)| / |x_k| = lim ((k+1) / 2^(k+1)) / (k / 2^k) \
  = lim (k+1)/k 2^k/2^(k+1) = lim (k+1) / (2k) = 1/2 < 1
$

=> By D'Alamber $limits(sum)_(k=0)^(oo) k / 2^k$ converges absolutely.

====


