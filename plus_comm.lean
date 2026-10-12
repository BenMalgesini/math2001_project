import natural_numbers
import plus_zero
import plus_succ
import zero_plus
import succ_plus

theorem plus_comm ( m n : ℕ )
: m + n = n + m := by
  induction m
  case zero =>
    rewrite [zero_plus]
    rewrite [plus_zero]
    rfl
  case succ m ih =>
    rewrite [plus_succ]
    rewrite [succ_plus]
    rewrite [ih]
    rfl
