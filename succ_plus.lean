import natural_numbers

theorem succ_plus ( n : ℕ )
: m.succ + n = (plus m n).succ := by
  induction m using ℕ.rec
  case zero =>
    unfold plus
    rfl
  case succ m hp =>
    unfold plus
    rewrite [hp]
    rfl
