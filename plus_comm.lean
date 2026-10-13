import natural_numbers

theorem plus_comm ( m n : ℕ )
: m + n = n + m := by
  induction m using ℕ.rec
  case zero =>
    calling 'plus_zero'
    rewrite [plus_zero]
    rfl
???????????
