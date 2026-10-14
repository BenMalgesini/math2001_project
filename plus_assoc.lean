import natural_numbers
import zero_plus
import plus_zero
import succ_plus
import plus_succ

theorem plus_assoc ( m n p : ℕ )
: m + ( n + p ) = ( m + n ) + p := by
  induction m using ℕ.rec
  case zero =>
    rewrite[zero_plus]
    rewrite[zero_plus]
    rfl
  case succ m ih =>
    rewrite[succ_plus]
    rewrite[succ_plus]
    rewrite[succ_plus]
    rewrite[ih]
    rfl
