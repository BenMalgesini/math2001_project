import natural_numbers
import le_trans
import le_refl
import le_zero_is_eq_zero
import le_is_lt_or_eq
import lt_succ_is_le
import lt_le_is_lt

theorem strong_induction { P : (n:ℕ) → Prop } ( ih : ∀ (n:ℕ), ( ∀ (m:ℕ), (m<n) → P m ) → P n ) 
: ∀ (n:ℕ), P n := by
  sorry
