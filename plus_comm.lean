import natural_numbers

import zero_plus
import plus_zero
import succ_plus
import plus_succ

theorem plus_comm ( m n : ℕ )
: plus m n = plus n m := by
  induction m using ℕ.rec
  case zero =>
    rewrite [zero_plus, plus_zero]
    rfl
  case succ m ih =>
    rewrite [plus_succ, succ_plus]
    rewrite [ih]
    rfl
