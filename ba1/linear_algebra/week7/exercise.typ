#let group(..content) = $ mat(..content, delim: #("{", none)) $


== Determinant of triangular matrices

> Sum the diagonal elements


==

Let $A_1 = E A$ for elementary matrix $E$

$
  det(A) = group(
    -det(A_1) "if two rows or columns have been swapped";
    lambda^(-1) det(A_1) "if a row or column has been multiplied by" lambda != 0;
    det(A_1) "if a multiple of a r/c has been added to another r/c"
  )
$

=== Case row swap

$
  det(A) = -det(A_1) "if two rows or columns have been swapped" \
  det(A_1^n) = mat(
    a_1, 0, ...;
    0, 0,  a_3, ...;
    0, a_2, ...;
    0, 0, 0, ..., a_n,
  ) = -1
$


$ A = mat(
  a, b, c;
  d, e, f;
  g, h, i;
) $

$
  A_1 = T_(2 1)^1 A \
  det(A) * det(T_(2 1)^1) \
  7 * 1
$

$
  C = T^1 S^2 A = det(A) * 2 * 1 = 14
$




