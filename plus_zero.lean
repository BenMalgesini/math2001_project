import natural_numbers

theorem plus_zero ( m : ℕ )
: m + ℕ.zero = m := by
  induction m with
    | zero=>
    rfl
    | succ m ih=>
    unfold plus
    rewrite [ih]
    rfl
