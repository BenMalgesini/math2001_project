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
    rewrite [zero_times, zero_times]
    unfold plus
    rfl
  case succ m ih =>
    rewrite [succ_times, succ_times]
    rewrite [succ_plus, succ_plus]
    rewrite [ih]
    rewrite [plus_assoc, plus_assoc]
    rewrite [plus_comm n m]
    rfl
