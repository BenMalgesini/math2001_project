import natural_numbers
import zero_plus

theorem succ_plus ( n : ℕ )
: m.succ + n = (plus m n).succ := by
  induction m using ℕ.rec
  case zero =>
    unfold plus
    rewrite[zero_plus]
    rfl
  case succ m ih =>
    unfold plus
    rewrite [ih]
    rfl
