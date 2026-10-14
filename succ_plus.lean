import natural_numbers

theorem succ_plus ( n : ℕ )
: m.succ + n = (plus m n).succ := by
  conv =>
    lhs
    unfold plus
    rfl
