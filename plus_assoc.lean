import natural_numbers
import zero_plus
import succ_plus

theorem plus_assoc ( m n p : ℕ )
: m + ( n + p ) = ( m + n ) + p := by
  induction m using ℕ.rec
  case zero =>
    rewrite[zero_plus, zero_plus] /- getting rid of zeros in addition -/
    rfl
  case succ m ih =>
    rewrite [succ_plus, succ_plus, succ_plus] /- puts addition into the succ -/
    rewrite [ih] /- Rewrites addition inside the succ to be equal to other side-/
    rfl
