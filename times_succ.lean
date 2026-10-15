import natural_numbers
import times_zero
import zero_times
import succ_times
import succ_plus
import plus_assoc
import plus_comm

theorem times_succ ( m n : ℕ )
: m * n.succ = m + m * n := by
  induction m using ℕ.rec
  case zero =>
    rewrite[zero_times, zero_times] /- get rid of eveyrhting multiplied by zero -/
    unfold plus
    rfl
  case succ m ih =>
    unfold times
    rewrite[ih]
    unfold plus
    rewrite [plus_comm]
    -- rewrite [plus_assoc m (m*n)]
    sorry
