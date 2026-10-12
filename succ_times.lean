import natural_numbers

theorem succ_times ( m n : ℕ )
: times m.succ n = n + times m n := by
  rfl
