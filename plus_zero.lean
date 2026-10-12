import natural_numbers

theorem plus_zero ( m : ℕ )
: m + ℕ.zero = m := by
 induction m with
 | zero => rfl
  | succ m ih =>
    calc
      ℕ.succ m + ℕ.zero = ℕ.succ (m + ℕ.zero) := by rfl
      _ = ℕ.succ m := by rw [ih]

