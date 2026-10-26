import natural_numbers
import sets

theorem peano_induction (S : Set ℕ) (z : ℕ.zero ∈ S) (s : ∀ (n:ℕ), n ∈ S → n.succ ∈ S)
: ∀ (n:ℕ), n ∈ S := by
  sorry
