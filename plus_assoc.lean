import natural_numbers
import zero_plus
import plus_zero
import plus_succ
import succ_plus
import plus_comm

theorem plus_assoc ( m n p : ℕ )
: m + ( n + p ) = ( m + n ) + p := by
  induction m using ℕ.rec
  case zero =>
    rewrite [zero_plus, zero_plus]
    rfl
  case succ m ih =>
    rewrite [succ_plus, succ_plus]
    rewrite [succ_plus]
    rewrite [ih]
    rfl
