#let solution(body) = block(
  stroke: (left: 2pt + blue),
  inset: (left: 10pt, y: 4pt),
  [*Solution.*

    #body],
)

#set page(height: auto)

= Notes

Verify that $i^2 = -1$.

$ i^2 = -1 $
$ (a + b i)(c + d i) = (a c - b d) + (a d + b c) i $
$ (0 + 1 dot 1)(0 + 1 dot 1) = (0 - 1) + (0 + 0) i $
$ -1 + 0 i $
$ -1 $

By definition, lists always have finite length. In lists, ordering and repetition matters, as opposed to sets.

Complex number multiplication is defined by
$ (a + b i) (c + d i) = (a c - b d) + (a d + b c) i $

Complex number division is defined by

$ beta / alpha = beta (1 / alpha) $
Where $alpha, beta in CC$

= Exercises
== 1.A
1. Suppose $a$ and $b$ are real numbers, not both 0. Find real numbers $c$ and $d$ such that $ 1 / (a + b i) = c + d i. $

#solution[
  Since $a$ and $b$ are not both $0$, we have $a^2 + b^2 != 0$.

  Multiplying both sides of $1/(a + b i) = c + d i$ by $a + b i$ gives
  $ 1 + 0 i = (a + b i)(c + d i). $

  Expanding the right-hand side by the definition of complex
  multiplication,
  $ 1 + 0 i= (a c - b d) + (a d + b c) i. $

  Two complex numbers are equal if and only if their real and
  imaginary parts are equal, so
  $ a c - b d = 1, quad a d + b c = 0. $

  Solving this system for $c$ and $d$ gives
  $ c = a / (a^2 + b^2), quad d = (-b) / (a^2 + b^2). $
]

2. Show that
$ (-1 + sqrt(3) i) / 2 $
is a cube root of 1 (meaning that its cube equals 1).

#solution[
  Let $z = (-1 + sqrt(3) i) / 2$.

  First square it:
  $
    z^2 & = (-1 + sqrt(3) i)^2 / 4 \
        & = (1 - 2 sqrt(3) i + 3 i^2) / 4 \
        & = (-2 - 2 sqrt(3) i) / 4 \
        & = (-1 - sqrt(3) i) / 2.
  $

  Then cube it:
  $
    z^3 & = z^2 dot z \
        & = ((-1 - sqrt(3) i) / 2) ((-1 + sqrt(3) i) / 2) \
        & = (-1 - sqrt(3) i)(-1 + sqrt(3) i) / 4 \
        & = (1 - 3 i^2) / 4 \
        & = 4 / 4 \
        & = 1.
  $

  Since $z^3 = 1$, the number $z$ is a cube root of $1$.

]

3. Find two distinct square roots of $i$.

#solution[
  Requirement: $(c + d i)^2 = i$

  Let $z = (c + d i)$

  We square it:
  $
    z^2 & = (c + d i)(c + d i) \
        & = c^2 - d^2 + 2c d i
  $

  We can infer from the real lane $(c^2 - d^2) = 0$ that $c$ can either be $d$ or $-d$. The $-d$ is a dead end, but we can substitute d in the other lane and solve like so:
  $
    2 d^2 & = 1 \
      d^2 & = 1/2 \
        d & = plus.minus sqrt(1/2)
  $
  Since sqrt comes in pairs, we can infer two solutions:
  $sqrt(1/2) + sqrt(1/2) i$
  and
  -$sqrt(1/2) - sqrt(1/2) i$
]

4. Show that $alpha$ + $beta$ = $beta$ + $alpha$ for all $alpha$, $beta in CC$

#solution[
  Let $alpha, beta in CC$.

  Breaking $alpha$ and $beta$ down into two lanes gives us $a + b i$ and $c + d i$.

  Rewriting the above sentences for addition gives us $(a + c) + (b + d)i$.

  Since real numbers are commutative, $(a + c) + (b + d)i = (c + a) + (d + b)i$

  The above equation is a direct rewrite of $alpha + beta = beta + alpha$
]

5. Show that $(alpha + beta) + lambda = alpha + (beta + lambda)$ for all $alpha, beta, lambda in CC$.

#solution[
  Let $alpha, beta, lambda in CC$.

  Breaking $alpha, beta$ and $lambda$ into lanes gives:
  $ alpha = a + b i $
  $ beta = c + d i $
  $ lambda = e + f i $

  Rewriting the computation in the problem statement in terms of the lames gives us:
  $
    (alpha + beta) + lambda & = ((a + b i) + (c + d i)) + (e + f i) \
                            & = ((a + c) + (b + d) i + (e + f i) \
                            & = ((a + c) + e) + ((b + d) + f) i
  $
  and
  $
    alpha + (beta + lambda) & = (a + b i) + ((c + d i) + (e + f i)) \
                            & = (a + b i) + ((c + e) + (d + f) i) \
                            & = (a + (c + e)) + (b + (d + f)) i.
  $

  Since real numbers are associative, we conclude that the real lane
  $ (a + (c + e)) = ((a + c) + e) $
  and the imaginary lane
  $ (b + (d + f)) i = ((b + d) + f) i. $

  This gives us the equation
  $ (a + (c + e)) + (b + (d + f)) i = ((a + c) + e) + ((b + d) + f) i $
  which is the expanded version of $(alpha + beta) + lambda = alpha + (beta + lambda)$.
]

6. Show that $(alpha beta) lambda = alpha (beta lambda)$ for all $alpha, beta, lambda in CC$.

#solution[
  Proof is trivial and mechanical arithmetic. Skipped
]

7. Show that for every $alpha in CC$, there exists a unique $beta in CC$ such that $alpha + beta = 0$.

#solution[
  Let $alpha in CC$.

  We extract the lanes from $alpha$ which gives us $a + b i$ where $a, b in RR$.

  Negating $a$ and $b$ gives us $-a - b i$ which we denote as $beta$.

  We then compute the problem equation
  $
    alpha + beta & = (a + b i) + (-a - b i) \
                 & = (a + (-a)) + (b + (-b)) i \
                 & = 0 + 0 i \
                 & = 0.
  $

  That concludes the proof for existence of such a $beta$, now onto uniqueness.

  Suppose $beta_1, beta_2 in CC$ satisfy $alpha + beta_1 = 0$ and $alpha + beta_2 = 0$.

  Inferring from that, the following equation must be true:
  $ alpha + beta_1 = alpha + beta_2 $

  Subtracting $alpha$ from both sides gives us
  $ beta_1 = beta_2 $
  therefore, $beta$ must be unique.
]

8. Show that for every $alpha in CC$, there exists a unique $beta in CC$ such that $alpha beta = 1$.

#solution[
  Let $alpha in CC$.

  We again extract the lanes from $alpha$ which gives us $a + b i$ where $a, b in RR$.

  Using the result from exercise 1, define $beta = c + d i$, where
  $ c = a / (a^2 + b^2) $
  and
  $ d = (-b) / (a^2 + b^2). $

  We then compute the problem statement splitting the lanes into real numbers
  $
    alpha beta & = (a + b i) (c + d i) \
    & = (a + b i) ((a / (a^2 + b^2)) + ((-b) / (a^2 + b^2)) i) \
    & = (a a/(a^2+b^2) - b (-b)/(a^2+b^2)) + (a (-b)/(a^2+b^2) + b a/(a^2+b^2)) i \
    & = (a^2/(a^2+b^2) + b^2/(a^2+b^2)) + ((-a b)/(a^2+b^2) + (b a)/(a^2+b^2))) i \
    & = (a^2 + b^2)/(a^2+b^2) + (-a b + a b)/(a^2+b^2) i \
    & = 1 + 0 i \
    & = 1
  $

  Now onto the uniqueness part.

  Suppose $beta_1, beta_2 in CC$ satisfy $alpha beta_1 = 1$ and $alpha beta_2 = 1$.

  Inferring from that, the following equation must be true:
  $ alpha beta_1 = alpha beta_2 $

  Dividing both sides by $alpha$ gives us
  $ beta_1 = beta_2 $
  therefore, $beta$ must be unique.
]

9. Show that $lambda (alpha + beta) = lambda alpha + lambda beta$ for all $lambda, alpha, beta in CC$.

#solution[
  Let $alpha, beta, lambda in CC$.

  Extract the lanes from $alpha, beta, lambda$ which gives us $a + b i$ for $alpha$, $c + d i$ for $beta$, $e + f i$ for $lambda$ where $a, b, c, d, e, f in RR$.

  We compute the left side of the problem statement
  $
    lambda (alpha + beta) & = (e + f i)((a + b i) + (c + d i)) \
                          & = (e + f i)((a + c) + (b + d) i) \
                          & = (e (a + c) - f (b + d)) + (e (b + d) + f (a + c)) i \
                          & = (e a + e c - f b - f d) + (e b + e d + f a + f c) i.
  $

  And now the right side
  $
    lambda alpha + lambda beta & = (e + f i)(a + b i) + (e + f i)(c + d i) \
    & = ((e a - f b) + (e b + f a) i) + ((e c - f d) + (e d + f c) i) \
    & = ((e a - f b) + (e c - f d)) + ((e b + f a) + (e d + f c)) i \
    & = (e a - f b + e c - f d) + (e b + f a + e d + f c) i.
  $

  Looking at the results we can see that the real parts and the imaginary parts consist of the same four terms. By commutativity of real addition the two sides are therefore equal, so
  $
    lambda (alpha + beta) = lambda alpha + lambda beta
  $
]

10. Find $x in RR^4$ such that
$ (4, -3, 1, 7) + 2x = (5, 9, -6, 8). $

#solution[
  Solving the equation is trivial:
  $
         (4, -3, 1, 7) + 2x & = (5, 9, -6, 8) | 2 \
    (2, -1.5, 0.5, 3.5) + x & = (2.5, 4.5, -3, 4) \
                          x & = (2.5, 4.5, -3, 4) - (2, -1.5, 0.5, 3.5) \
                          x & = (0.5, 6, -3.5, 0.5)
  $
]

11. Explain why there does not exist $lambda in CC$ such that
$ lambda (2 - 3 i, 5 + 4 i, -6 + 7 i) = (12 - 5 i, 7 + 22 i, -32 - 9 i). $

#solution[
  In order for the equation to hold true, $lambda$ must satisfy all of the following three statements
  $
     lambda (2 - 3 i) & = 12 - 5 i \
     lambda (5 + 4 i) & = 7 + 22 i \
    lambda (-6 + 7 i) & = -32 - 9 i
  $

  We can trivially solve the first equation by first remembering the complex number multiplication definition
  $ (a + b i) (c + d i) = (a c - b d) + (a d + b c) i $
  and secondly by extracting the lanes $a, b$ from $lambda$
  $
               (a + b i)(2 - 3 i) & = 12 - 5 i \
    (2 a + 3 b) + (-3 a + 2 b ) i & = 12 - 5 i
  $

  Separating these by lane gives us
  $ 2 a + 3 b = 12 $
  $ -3 a + 2 b = -5 $
  which we can solve as a system of linear equations
  $ a = -1.5 b + 6 $
  $
    -3(-1.5 b + 6) + 2b & = -5 \
        4.5 b - 18 + 2b & = -5 \
             6.5 b - 18 & = -5 \
                  6.5 b & = 13 \
                      b & = 2
  $

  From here we can infer the real value of $a$
  $
    a & = -1.5(2) + 6 \
      & = 3
  $

  Putting the values $a = 3$ and $b = 2$ together gives $lambda = 3 + 2 i$.

  This $lambda$ satisfies the second statement, since
  $ (3 + 2 i)(5 + 4 i) = 15 + 22 i - 8 = 7 + 22 i. $

  But it fails the third statement:
  $ (3 + 2 i)(-6 + 7 i) = -18 + 9 i - 14 = -32 + 9 i, $
  which is not equal to the required $-32 - 9 i$.

  The first equation forces λ = 3 + 2i. But then λ(−6 + 7i) = −32 + 9i, which is not equal to the required −32 − 9i. So no single λ can satisfy all three equations at once, hence no such λ ∈ ℂ exists.
]

12. Show that $(x + y) + z = x + (y + z)$ for all $x, y, z in FF^n$

#solution[
  Let $x, y, z in FF^n$.

  By the definition of addition in $FF^n$, the j-th component of $(x+y)+z$ is $(x_j+y_j)+z_j$, and the j-th component of $x+(y+z)$ is $x_j+(y_j+z_j)$.

  Since addition in $FF$ is associative, $(x_j + y_j) + z_j = x_j + (y_j + z_j)$ for each $j = 1,...,n.$

  Because addition in $FF^n$ is elementwise, we conclude that $(x + y) + z = x + (y + z)$.
]

13. Show that $(alpha beta) x = alpha (beta x)$ for all $x in FF^n$ and all $alpha, beta in FF$.

#solution[
  Let $x in FF^n$ and $alpha, beta in FF$.

  By the definition of scalar multiplication, the j-th component of $(alpha beta) x$ is $(alpha beta) x_j$ and the j-th component of $alpha (beta x)$ is $alpha (beta x_j)$.

  Since multiplication in $FF$ is associative, $(alpha beta) x_j = alpha (beta x_j)$ for each $j = 1,...,n.$

  Because multiplication in $FF^n$ is elementwise, we conclude that $(alpha beta) x = alpha (beta x)$.
]

14. Show that $1 x = x$ for all $x in FF^n$.

#solution[
  Let $x in FF^n$.

  By the definition of scalar multiplication, the j-th component of $1 x$ is $1 x_j$.

  Multiplying $1$ by $x_j$ gives us the result $x_j$. Therefore, we conclude that $1 x = x$.
]

15. Show that $lambda (x + y) = lambda x + lambda y$ for all $lambda in FF$ and all $x, y in FF^n$.

#solution[
  Let $lambda in FF$ and $x, y in FF^n$.

  By the definition of scalar addition and multiplication, the j-th component of $lambda (x + y)$ is $lambda (x_j + y_j)$ and the j-th component of $lambda x + lambda y$ is $lambda x_j + lambda y_j$.

  Since scalars satisfy the distributive property, $lambda (x_j + y_j) = lambda x_j + lambda y_j$.

  We can then conclude that since addition and multiplication is an elementwise operation, $lambda (x + y) = lambda x + lambda y$.
]

16. Show that $(a + b) x = a x + b x$ for all $a, b in FF$ and all $x in F^n$.

#solution[
  Let $a, b in FF$ and $x in FF^n$.

  By the definition of scalar addition and multiplication, the j-th component of $(a + b) x$ is $(a + b) x_j$ and the j-th component of $a x + b x$ is $a x_j + b x_j$.

  Since scalars satisfy the distributive property, $(a + b) x_j = a x_j + b x_j$.

  We can then conclude that since addition and multiplication is an elementwise operation, $(a + b) x = a x + b x$.
]
