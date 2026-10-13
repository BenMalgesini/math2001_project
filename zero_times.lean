import natural_numbers

theorem zero_times ( n : ℕ )
: ℕ.zero * n = ℕ.zero := by
  induction n with /-induction with two cases-/
  | zero => /-case zero-/
  rfl /-0*0=0 so by rfl we're done-/
  | succ n ih => /-induction step-/
  unfold times /-zero times anything is zero-/
  rfl /-we have what we need so we use rfl-/
