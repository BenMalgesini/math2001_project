import natural_numbers
import zero_plus
import succ_plus

theorem plus_assoc ( m n p : ℕ )
: plus m ( plus n p ) = plus ( plus m n ) p := by
  induction m using ℕ.rec
  case zero =>
    rewrite [zero_plus,zero_plus]
    rfl
  case succ m ih =>
    rewrite [succ_plus,succ_plus,succ_plus]
    rewrite [ih]
    rfl
