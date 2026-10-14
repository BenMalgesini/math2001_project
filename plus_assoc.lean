import natural_numbers
import zero_plus


theorem plus_assoc ( m n p : ℕ )
: m + ( n + p ) = ( m + n ) + p := by
  induction m using ℕ.rec
  case zero =>
    rewrite[zero_plus (n+p)]
    rewrite[zero_plus n]
    rfl
  case succ m ih =>
    unfold plus
    rewrite [ih]
    rfl
