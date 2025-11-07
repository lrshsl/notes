#import "../../template.typ" : *

#let is_draft = true

#show: summary.with(
  subject: "Analysis I",
)

= Important terms

== Triangle inequality

#important[$ |x + y| <= |x| + |y| $]

== Reverse Triangle inequality

#important[$ ||x| - |y|| <= |x - y| $]

#pagebreak()
= Sequences

$ (x_n)_(n>=1 in NN) in RR $

== Convergence

#note(title: "Definition")[
  $(x_n)$ converges to limit $l$ iff $ forall epsilon > 0 in RR h0 exists N in NN "st" forall n > N in NN \ |x_n - l| < epsilon $

  We write $lim_(n->oo) (x_n) = l$ or $(x_n) -->^(n->oo) l$

  If no such limit exists, $(x_n)$ diverges.
]

=== Properties

$ exists l -> exists ! l $
$ (x_n) "is convergent" -> (x_n) "is bounded" $


== Limit laws

If $(x_n) --> a$ and $(y_n) --> b$ then

#important[
  $
    & (I) h2     & x_n + y_n & --> a + b \
    & (I I) h2   & x_n - y_n & --> a - b \
    & (I I I) h2 &   x_n y_n & --> a b \
    & (I V) h2   & x_n / y_n & --> a / b h2 "if" b != 0 \
    & (V) h2     &     |x_n| & --> |a|
  $
]

#note(title: "Attention")[
  In order to apply these laws the limits of $x_n$ and $y_n$ need to exist and
  be finite.
]

== Monotonicity

#note(title: "Difference criterion")[
  For a real sequence $(a_n)$ and $d = a_(n+1) - a_n$:
  $
    cases(
      d > 0 : "strictly increasing",
      d < 0 : "strictly decreasing",
      d = 0 : "(locally) constant",
    )
  $

  If this is true $forall n > "some" N$, the sequence is _eventually monotone_.
  One can also use the quotient $a_(n+1) / a_n$
]

#note(title: "Monotone convergence theorem")[
  $x_n$ is bounded above (below) and monotone increasing (decreasing)
  $-> x_n "converges"$.
]

#note(title: "Bolzano-Weierstrass Theorem")[
  Every *bounded* sequence in $RR$ has a *convergent subsequence*.
]

== Alternating sequence

#note(title: "Convergence of an alternating sequence")[
  An alternating sequence converges iff its magnitude converges (to zero).
  Alternating sequences can only converge to zero.
  $
    lim_(n -> oo) a_n = 0 <==> lim_(n -> oo) |a_n| = 0
  $
]

== Cauchy criterion

#important(width: 100%)[
  In $RR$:
  $
    (x_n) "converges" \
    <==> \
    forall epsilon > 0 h1 exists N "st" forall n,m > N
    \ |x_n - x_m| < epsilon
  $
]

=== Root limit test

Let $(x_n)$ be a sequence st $lim_(n->oo) root(n, |x_n|) = l$

Then

1. if $l<1$ converges
2. if $l>1$ diverges
3. if $l=1$ inconclusive

== Squeeze theorem

Let $(x_n) --> a$ and $(y_n) --> a$.

#important[If $x_n <= a_n <= y_n forall n$, then $a_n --> a$]

#pagebreak()
= Series

A infinite sum (series) $s_n$ of a sequence $x_n$ is defined as a sequence of
finite sums.

$
  s_n = sum_(i=0)^n (x_n)_i \
  lim_(n->oo) s_n = sum_(i=0)^oo (x_n)_i
$

Absolutely convergent $<==> sum_(i=0)^oo |(x_n)_i|$ converges.

$x_n$ is absolutely convergent $==>$ $x_n$ converges

#important[Thus: _Signs don't matter when determining the absolute convergence of a series_]

== Series Tests

=== Nth-Term Test (for Divergence)
#important[
  If $lim_(n->oo) x_n != 0$ or $exists.not$ limit, then $sum x_n$ *diverges*.
]
#note(title: "Warning")[
  If $lim_(n->oo) x_n = 0$, this test is *inconclusive*.
]

=== Comparison Tests
(For positive-term series, $x_n, y_n >= 0$)

#note(title: "Direct Comparison")[
  Let $0 <= x_n <= y_n$ for all large $n$
  - $sum y_n "converges" ==> sum x_n "converges"$
  - $sum x_n "diverges" ==> sum y_n "diverges"$
]

#note(title: "Limit Comparison")[
  Let $L = lim_(n->oo) (x_n / y_n)$.
  If $0 < L < oo$, then:
  $ sum x_n " and " sum y_n $
  either *both converge* or *both diverge*.
]

=== Ratio Test
Let $L = lim_(n->oo) |x_(n+1) / x_n|$
#important(width: 100%)[
  $
    cases(
      L < 1 : "Series converges absolutely",
      L > 1 : "Series diverges",
      L = 1 : "Test is inconclusive",
    )
  $
]
#note[Especially useful for factorials ($n!$) and exponentials ($c^n$).]

=== Alternating Series Test (Leibniz)

#note(title: "AST")[
  The series $sum (-1)^n x_n$ (with $x_n > 0$)
  converges if *both* are true:
  1. $x_(n+1) <= x_n$ for all large $n$ (non-increasing)
  2. $lim_(n->oo) x_n = 0$
]


== Examples

=== Constant sequence

$
                 x_n & = c h1 c != 0 \
  -> lim_(n->oo) s_n & = plus.minus oo
$

=== Geometric series

$
  x_n & = q^n \
  s_n & = (1 - q^(n+1)) / (1 - q) \
      & = 1 / (1 - q) (1 - q^(n+1))
$

if $|q| < 1$ then $s_n$ converges to $1 / (1 - q)$

=== Harmonic series

$
              x_n & = 1/n \
  lim_(n->oo) s_n & = sum_(i=1)^oo 1/i = oo
$

===

$
              x_n & = 1/(n!) \
  lim_(n->oo) s_n & = sum_(n=0)^oo 1/(n!) = lim_(n->oo) (1 + 1/n)^n = e
$

#pagebreak()

== Cheat sheet

=== Useful limits

#important[
  $
        sin(x) / x h1 & -->^(x -> 0)  h1 &   1 \
    log(1 + x) / x h1 & -->^(x -> 0)  h1 &   1 \
       (1 + 1/n)^n h1 & -->^(n -> oo) h1 &   e \
       (1 + x/n)^n h1 & -->^(n -> oo) h1 & e^x
  $
]

=== "Divergence speed tricks"

#note(title: "Principle")[
  The limit of polynomials is determined by the terms with the fastest growth.
]

=== Growth hierarchy

#important[
  $ forall c h1 c << log n << n^c << c^n << n! << n^n $
]

For polynomials in the same growth category, the base resp. exponent counts
($c < n^1 < n^2, ..., n^(oo)$, $2^n < 3^n, ..., (oo)^n$)

==== Example

For example for taking the limit of a fraction in the form

$
  x_n = (a_p n^p + a_(p-1) n^(p-1) .. a_0 n^0)
  /
  (b_q n^q + b_(q-1) n^(q-1) .. b_0 n^0)
$

Only the terms with the highest degrees $a_p n^p$ and $b_q n_q$ determine the
limit:

$
  (p < q) h1 & -> h1 (x_n --> 0) \
  (p = q) h1 & -> h1 (x_n --> a_p / a_q) \
  (p > q) h1 & -> h1 (x_n --> plus.minus oo)
$

=== Check monotony

Just check the difference between $a_n$ and $a_(n+1)$:

#important[
  $
    exists N "st" forall n > N \
    a_(n+1) - a_n cases(
      > 0 & -> "monotone increasing",
      < 0 & -> "monotone decreasing",
      = 0 & -> "constant sequence",
    )
  $
]

#pagebreak()

= Functions

== Domain & Range (Co-Domain)

$ f: D -> R $

== Image

$ "Im"(f) := { f(x) | x in D } $


== Periodic functions

$ f: D -> R $

Then:

$
  exists T > 0 "st" forall x in D x + T in D \
  ==> f(x) = f(x + T)
$

#note[
  A periodic function can be defined on some interval and
  extended periodically:

  Let $f(x)$ be a $T$-periodic function defined for $(0, T]$.
  $f(x)$ for $x = 3T + 1$ is $f(x - 3T) = f(1)$
]

=== Examples

==== Trigonometric functions

- $sin(alpha x), cos(alpha x)$ are $(2 pi) / alpha$-periodic
- $tan(alpha x), cot(alpha x)$ are $pi / alpha$-periodic

==== Rational characteristic function

Let $f: RR -> RR$ and $f(x) = cases(x in QQ: 1, "otherwise" 0)$

Then $f$ is $T$-periodic $forall T in QQ$


== Symmetric functions

#note[
  A function is _odd symmetric_ if it is mirrored about the
  origin, and _even symmetric_ if it is mirrored along the y-axis
]

From any function $f(x)$ an odd/even symmetric function can be
built, for example through:

$
  cases(
    "even": (f(x) + f(-x)) / 2,
    "odd": (f(x) - f(-x)) / 2
  ) 
$

#note[The division by $2$ is not necessary but convention]

#important[$f(x) = "even version of" f(x) + "odd version of" f(x)$]

=== Examples

- $cos$ is even symmetric
- $sin$ is odd symmetric

==== Hyperbolic functions

$
  cosh(x) = (e^x + e^(-x)) / 2: "even" \
  sinh(x) = (e^x - e^(-x)) / 2: "odd"
$


