import natural_numbers

theorem zero_times ( n : ℕ )
: times ℕ.zero n = ℕ.zero := by
  -- I initially used unfold times first, then realized it was unneeded entirely.
  rfl
