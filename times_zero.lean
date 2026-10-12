import natural_numbers

theorem times_zero ( m : ℕ )
: times m ℕ.zero = ℕ.zero := by
  induction m using ℕ.rec
  case zero =>
    rfl
  case succ m ih =>
    unfold times
    rewrite [ih]
    rfl
