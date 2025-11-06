#import "../../template.typ": *

#set page(columns: 2)

= Subspaces

#note(title: "Definition 13.1")[

  We call vectors $v_1, .., v_k in V$ _basis_ of $V$ if:

  - $"span"{v_1, ..., v_k} = V$
  - ${v_1, ..., v_k}$ are minimal with this property
    - $<=> {v_1, ..., v_k}$ are linearly independent
    - i.e. $exists.not lambda_1, ..., lambda_k "st" lambda_1 v_1,
      ... lambda_k v_k = 0$
]

#note(title: "Definition 13.2")[
  Any two bases of a vector space have the same number of vectors
]

#note(title: "Definition 13.3")[
  The _dimension_ of a vector space $V$ is the number of vectors in *any* basis
  of $V$
]

#note(title: "Definition")[
  a set of vectors are the basis of a vector space iff the matrix
  with the vectors as columns is invertible $<->$ its determinant
  is non-zero.
]


== Notation for coordinates

=== Change of basis

$
  P_(v <- w) = mat(
    a_(1 1), ..., a_(1 n);
    ..., ..., ...;
    a_(n 1), ..., a_(n n);
  )
$

- Suppose $v$ and $w$  are two bases of $RR^n$
  - How to find $P_(v<-w)$ $w_i = a_(1 i) v_1 + ...$

$
  (v_1, ..., v_n) =
  mat(
    a_(1 1), ..., a_(1 n);
    ..., ..., ...;
    a_(n 1), ..., a_(n n);
  )
$
$
  (w_1, ..., w_n) =
  mat(
    b_(1 1), ..., b_(1 n);
    ..., ..., ...;
    b_(n 1), ..., b_(n n);
  )
$


#note(title: "DEF 14.1")[
  Given vector space $V$ and $W$ a function $f: W -> V$ is called *linear* if:
  - $f(w + w') = f(w) + f(w'), h1 forall w, w' in W$
  - $f(lambda w) = lambda f(w), h1 forall lambda in RR, forall w in WW$
]


#note(title: "Theorem 14.2")[
  If a matrix $a$ corresponds to a linear function $f: W -> V$ with respect to
  bases $w$ and $w$ then
  $
    [f(z)]_v = A [z]_w, h1 forall z in W
  $
]

#note(title: "Theorem 14.3")[
  $f dot g: Z -->^g W -->^f V$

  $f dot g$ corresponds to the matrix $P_(Z <- W) P_(W <- V)$
]


#note(title: "Definition 14.4")[
  $"Ker"(f) = { w in W | f(w) = O_w } subset W$
  $"Im"(f) = { v in V | exists w in W "st" f(w) = v} subset V$

  $"Ker"(f)$ and $"Im"(f)$ are subspaces of $W$ and $V$
]

Because:

- $O_w in "Ker"(f)$
- $forall w, w' in "Ker"(f) h_2 w + w' in "Ker"(f)$
- $forall lambda in RR, forall w in "Ker"(f) h_2 lambda w in "Ker"(f)$

Analog to that with $"Im"$.

#note(title: "Theorem 14.5")[
  - $f$ is injective $<=>$ $"Ker"(f) = {o_w}$
  - $f$ is surjective $<=>$ $"Im"(f) = V$
]

$
   f: RR^n & -> RR^m, f(x) = A x h1 "where" A in RR^(m n) \
  "Ker"(f) & = { x in RR^n | A x = 0 } \
           & = "Ker"(A) = "Null"(A) \
   v1
   "Im"(f) & = { b in RR^m | A x = b "has solutions" } \
           & = "Col"(A) = "span of columns/column space of" A \
  v1
  "Row"(A) & = "Col"(A^T) = "span of rows/row space of" A
$

=== Problem

$
  A = mat(
    1, 2, 3, 1;
    1, 1, 2, 1;
    2, 3, 5, 2;
  ) ~~> "REF"(A) = mat(
    1, 0, 1, 1;
    0, 1, 1, 0;
    0, 0, 0, 0;
  )
$

Find a basis for
$
  "Ker"(A) & = {vec(x_1, ..., x_4) | A vec(x_1, ..., x_4) = 0} \
           & = {vec(-s -t, -s, s, t)}_(s,t in RR) \
           & = { s vec(-1, -1, 1, 0) + t vec(-1, 0, 0, 1) }_(s, t in RR)
$

$
  "Ker"(A) = "span" {vec(-1, -1, 1, 0), vec(-1, 0, 0, 1) }
$

Dimension: $2 = "number free columns"$

=== Problem

#let a = $vec(1, 2, 3, 1)$
#let b = $vec(1, 1, 2, 1)$
#let c = $vec(2, 3, 5, 2)$

Consider vector space spanned by ${#a #b #c}$.

$
  A = mat(
    1, 2, 3, 1;
    1, 1, 2, 1;
    2, 3, 5, 2;
  ) ~~> "REF"(A) = mat(
    1, 0, 1, 1;
    0, 1, 1, 0;
    0, 0, 0, 0;
  )
$

$ V = "Col"(A^T) = "Col"("REF"(A)^T) $

Pivot rows of $"REF"(A)$ are linearly independent $==>$ pivot rows form a basis

A basis of $V$ is given by $vec(1, 0, 1, 1)$ and $vec(0, 1, 1, 0)$

=== Problem

$
  V = "vector space spanned by"
  {vec(1, 1, 2), vec(2, 1, 3), vec(3, 2, 5), vec(1, 1, 2)}
$

Construct the matrix $A$ whose columns are the vectors.

$
  A = mat(
    1, 2, 3, 1;
    1, 1, 2, 1;
    2, 3, 5, 2;
  ) ~~> "REF"(A) = mat(
    1, 0, 1, 1;
    0, 1, 1, 0;
    0, 0, 0, 0;
  )
$

$ V = "Col"(A) != "Col"("REF"(A)) $

but any linear dependency between the columns of $A$ is reflected by linear
dependency between the columns of $"REF"(A)$.

#important[
  The pivots of the $"REF"(A)$ show which columns are linearly independent
  $<=>$ form the basis
]

