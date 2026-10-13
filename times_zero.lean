import natural_numbers

theorem times_zero ( m : ℕ )
: m * ℕ.zero = ℕ.zero := by
  induction m using ℕ.rec
  case zero =>
    unfold times /- Can be solved by basic principles of times-/
    rfl
  case succ m ih =>
    unfold times /- Unfold times to get a form we can rewrite with ih-/
    rewrite[ih] /- Simplify to an easy to solve form -/
    unfold plus /- zero + zero = zero -/
    rfl
