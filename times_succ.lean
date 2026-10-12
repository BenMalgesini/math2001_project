import natural_numbers
import succ_plus
import plus_assoc
import plus_comm

theorem times_succ ( m n : ℕ )
: times m n.succ = m + times m n := by
  induction m using ℕ.rec
  case zero =>
    rfl
  case succ m ih =>
    unfold times
    rewrite [ih,succ_plus,succ_plus,plus_assoc,plus_assoc,plus_comm n m]
    rfl
