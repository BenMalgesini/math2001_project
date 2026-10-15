import natural_numbers
import zero_times
import plus_zero


theorem succ_times ( m n : ℕ )
: m.succ * n = n + m * n := by
-- Tried induction on n first but got stuck on the successor --
  induction m
  case zero =>
    rewrite[zero_times]
    rewrite[plus_zero]
    unfold times
    unfold times
    rewrite [plus_zero]
    rfl
  case succ m ih =>
    unfold times
    rewrite[ih]
    rfl
