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
  lim_(n->oo) a_n & = lim (sin(1/n)) 1/(lim n) \
                  & = lim (sin(1/n)) lim (1/n) \
                  & = lim (sin(1/n)) 0 \
                  & = 0
$

== Alternative solution using sqeeze theorem

Since $ - 1 / n <= sin(1/n) / n <= 1 / n $ trivially holds, and $lim 1/n = lim
-1/n = 0$, we have $lim a_n = 0$


= 2a

== Exercise

Consider the sequence $a_n = n / (4n - 1)$. Is it monotone? Is it convergent /
divergent?

== Intuition

- monotonely decreasing
- converges

== Solution

$ a_n = n (1 / (4n - 1)) $

We can factor out the highest degree ($n^1$)

$ a_n = 1 / (4 - 1/n) $

as $1/n -->^(n->oo) 0$, we have

$ a_n --> 1 / (4 - 0) = 1/4 $

= 2b

== Exercise

Check if the sequence $a_n = (-1)^n (n^2 + pi) / n$, starting from $n = 1$
- is monotone
- converges or diverges
- and what its limit is

== Solution

=== Monotonicity

Since $a_n a_(n+1) <= 0 forall n >= 1 in NN$ due to the $(-1)^n$ term, $a_n$ is
alternating, which means it cannot be monotone.

=== (Con|Div)ergence & Limit

$a_n$ can be split into subsequences
$
  cases(
    "odd" n: - (n^2 + pi) / n,
    "even" n: (n^2 + pi) / n,
  )
$

And because $n^2 >> n$ and $n^2$ is in the
numerator

$
  (n^2 + pi) / n --> +oo \
  -(n^2 + pi) / n --> -oo
$

as $a / b forall a,b a >> b ==> a / b --> +oo$.

==== Upshot

$a_n$ consists of two subsequences $a_n forall "even" n --> +oo$ and $a_n
forall "odd" n --> -oo$. Thus $a_n$ diverges, is unbound and does not have a
limit.


= 3a

$
  a_n & = (5n^2 - 3n + 2) / (3n^2 + 7) \
      & = (n^2 (5 - 3/n + 2/n^2)) / (n^2 (3 + 7/n^2)) \
      & = (5 - 3/n + 2/n^2) / (3 + 7/n^2)
$

We can substitute $a_n = b / c$ which through limit law IV means $a_n -->
lim b / lim c$ and since $c/n^k --> 0 forall c in RR, k in NN$ we can neglect
all the quotients in this form due to limit law I

$
  lim_(n -> oo) a_n = (5 - 0 + 0) / (3 + 0) = 5 / 3
$

The limit is $5/3$

= 3b

$
  a_n & = (-1)^n root(4, n) / root(3, n)
$

Can be split into subsequences:
$
  a_n = cases(
    n "odd": - root(4, n) / root(3, n) --> -L,
    n "even": root(4, n) / root(3, n) --> L
  )
$

Through the monotone 

