import natural_numbers

theorem succ_plus ( n : ℕ )
: m.succ + n = (plus m n).succ := by
  induction m using ℕ.rec
  case zero =>
    unfold plus
    unfold plus
    rfl
  case succ m ih =>
    unfold plus
    rewrite [ih]
    rfl
