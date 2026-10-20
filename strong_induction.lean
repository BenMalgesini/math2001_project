import natural_numbers

theorem strong_induction { P : (n:ℕ) → Prop } ( ih : ∀ (n:ℕ), ( ∀ (m:ℕ), (m<n) → P m ) → P n ) 
: ∀ (n:ℕ), P n := by
  sorry







