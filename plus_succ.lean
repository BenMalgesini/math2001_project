import natural_numbers

theorem plus_succ ( m n : ℕ )
: plus m n.succ = (plus m n).succ := by
  induction m using ℕ.rec
  case zero =>
    unfold plus
    rfl
  case succ m ih =>
    unfold plus
    rewrite [ih]
    rfl
