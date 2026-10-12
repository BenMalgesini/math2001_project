import natural_numbers

theorem plus_zero ( m : ℕ )
: m + ℕ.zero = m := by
  induction m
  case zero =>
    unfold plus
    rfl
  case succ m ih =>
    unfold plus
    rewrite [ih]
    rfl
