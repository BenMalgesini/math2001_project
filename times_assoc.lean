import natural_numbers
import zero_times
import succ_times
import times_right_distrib

theorem times_assoc ( m n p : ℕ )
: times m ( times n p ) = times ( times m n ) p := by
  induction m using ℕ.rec
  case zero =>
    rewrite [zero_times,zero_times,zero_times] -- redundant, I know, but it looks nicer
    rfl
  case succ m ih =>
    rewrite [succ_times,succ_times,ih,times_right_distrib]
    rfl
