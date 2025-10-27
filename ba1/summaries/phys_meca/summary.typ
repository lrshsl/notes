#let h1 = h(1em)
#let h2 = h(2em)
#let h3 = h(3em)
#let v1 = v(1em)
#let v2 = v(2em)
#let v3 = v(3em)

#let vv(x) = $accent(#x, ->)$    // Vector variable
#let uv(x) = $hat(#x)$           // Unit vector

#set page(columns: 2)

= Phys Meca

== Terms

- $R$ := Référenciel

== Repère cartésien

${e_x, e_y, e_z}$

- $forall (i, j, k) in {x, y, z} #h1 hat(e_i) crossmark hat(e_j) = e_k$


=== Position $vv(r)(t)$

- $x(t) uv(e_x) + y(t) uv(e_y) + z(t) uv(e_z)$
- $forall i in {x, y, z} #h1 i(t) = vv(r) dot uv(e_i)$


=== Abscisse curviligne $s(t)$

$ s(t) = integral_0^t |vv(v)| $
$ v(t) = dot(s)(t) $

=== Vitesse $vv(v)(t)$

$ vv(v)(t) := lim_(delta_t -> 0) delta_(vv(r)) / delta_t = d/(d t) vv(r) = dot(vv(r)) $

La vitesse instantanée est toujours *tangent à la trajectoire* et pointe dans le sense the trajectoire.


=== Vecteur unitaire tangent $hat(tau)(t)$

$ hat(tau) = vv(v) / v $

- $dot(hat(tau))$ point toujours à l'intérieur de la trajectoire, perpendiculaire à $hat(tau)$
- sauf si $dot(hat(tau)) = vv(o)$

- $vv(R)$ est le radius de courbure, en direction de trajectoire -> $norm(dot(hat(tau))) = v / R$


=== Accélération $vv(a)(t)$

$ vv(a)(t) := dot(vv(v)) = d^2/(d t) vv(r) = dot.double(vv(r)) $

$ vv(a) = dot(vv(v)) = dot(v) hat(tau) + v dot(hat(tau)) = vv(a_t) + vv(a_n) $


=== Quantité de mouvement $vv(p)$

$ vv(p) := m vv(v) $


== Formulae


=== PFD (Principe fondamental de la dynamique = 2nd loi de Newton)

$ d/(d t) #v1 vv(p) = sum(vv(F)) $

Si $m$ est constante

$ dot(vv(p)) = m dot(vv(v)) = m vv(a) $

