import natural_numbers
import zero_plus
import zero_times
import times_right_distrib
import succ_times

theorem times_assoc ( m n p : ℕ )
: m * ( n * p ) = ( m * n ) * p := by
  induction m using ℕ.rec
  case zero =>
    rewrite [zero_times, zero_times, zero_times]
    rfl
  case succ m ih =>
    rewrite [succ_times, succ_times, ih]
    rewrite [times_right_distrib n (m*n) p]
    rfl
