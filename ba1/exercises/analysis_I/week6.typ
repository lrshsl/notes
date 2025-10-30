#let h1 = h(1em)
#let v1 = v(1em)
#let h2 = h(2em)
#let v2 = v(2em)


= 1.

== Exercise

Let $a_n = sin(1/n) / n$, starting from $n = 1$
Is $a_n$ monotone? Is it convergent / divergent?

== Direct solution

$
  lim_(n->oo) a_n
  &= lim (sin(1/n)) 1/(lim n) \
  &= lim (sin(1/n)) lim (1/n) \
  &= lim (sin(1/n)) 0 \
  &= 0
$

== Alternative solution using sqeeze theorem

Since $ - 1 / n <= sin(1/n) / n <= 1 / n $ trivially holds, and $lim 1/n = lim
-1/n = 0$, we have $lim a_n = 0$


= 2a

== Exercise

Consider the sequence $a_n = n / (4n - 1)$. Is it monotone? Is it convergent /
divergent?

Through intuition:
  - monotonely increasing
  - diverges to infinity

=== Squeeze theorem

$ a_n = n (1 / (4n - 1)) $

We can factor out the highest degree ($n^1$)

$ a_n = 1 / (4 - 1/n) $

as $1/n -->^(n->oo) 0$, we have

$ a_n = 1 / (4 - 0) = 1/4 $


