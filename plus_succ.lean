import natural_numbers
import zero_plus

theorem plus_succ ( m n : ℕ )
: m + n.succ = (m + n).succ := by
  induction m using ℕ.rec
  case zero =>
    rewrite [zero_plus]
    rewrite [zero_plus]
    rfl
  case succ m ih =>
    unfold plus
    rewrite [ih]
    rfl
