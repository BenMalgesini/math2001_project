import natural_numbers
import zero_times
import times_zero
import succ_times
import times_succ

theorem times_comm ( m n : ℕ )
: times m n = times n m := by
  induction m using ℕ.rec
  case zero =>
    rewrite[zero_times,times_zero] -- I understand that technically using zero_times is redundant here but I like it when it's nice and neat
    rfl
  case succ m ih =>
    rewrite[succ_times,ih,times_succ]
    rfl
