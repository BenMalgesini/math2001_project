import natural_numbers

theorem zero_times ( n : ℕ )
: ℕ.zero * n = ℕ.zero := by
  induction n using ℕ.rec
  case zero =>
    unfold times /- by def of times -/
    rfl
  case succ n ih =>
    unfold times /- by def of times -/
    rfl
