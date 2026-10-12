import natural_numbers
import zero_plus
import plus_zero
import plus_succ
import succ_plus

theorem plus_comm ( m n : ℕ )
: m + n = n + m := by
  induction m using ℕ.rec
  case zero =>
    rewrite[zero_plus, plus_zero]
    rfl
  case succ m ih =>
    rewrite[succ_plus, plus_succ, ih]
    rfl
