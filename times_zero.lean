import natural_numbers
import succ_times

theorem times_zero ( m : ℕ )
: m * ℕ.zero = ℕ.zero := by
  induction m using ℕ.rec
  case zero =>
    unfold times
    rfl
  case succ m ih =>
    rewrite [succ_times]
    rewrite [ih]
    unfold plus
    rfl
