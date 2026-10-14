import natural_numbers
import plus_assoc
import plus_comm

theorem times_succ ( m n : ℕ )
: m * n.succ = m + m * n := by
  induction m using ℕ.rec
  case zero =>
    unfold times
    rfl
  case succ m ih =>
    unfold times
    unfold plus
    rewrite [ih]
    apply congrArg
    rewrite[plus_assoc n m (m*n)]
    rewrite[plus_assoc m n (m*n)]
    rewrite[plus_comm m n]
    rfl
    
