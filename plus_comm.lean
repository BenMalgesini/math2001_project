import natural_numbers
import zero_plus
import plus_zero
import plus_succ
import succ_plus

theorem plus_comm ( m n : ℕ )
: m + n = n + m := by
  induction n
  case zero =>
    rewrite [zero_plus]
    rewrite [plus_zero]
    rfl
  case succ n ih =>
    rewrite [plus_succ]
    rewrite [succ_plus]
    rewrite [ih]
    rfl
