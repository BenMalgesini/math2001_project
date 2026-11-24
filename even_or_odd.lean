import parity

theorem even_or_odd (n : ℕ)
: is_even n ∨ is_odd n := by
  induction n
  case zero =>
    apply Or.inl
    unfold is_even
    rfl
  case succ n ih =>
    unfold is_even
    unfold is_odd
    cases ih
    case inl ih =>
      unfold is_even at ih
      apply Or.inr
      unfold remainder
      rewrite [ih]
      rfl
    case inr ih =>
      unfold is_odd at ih
      apply Or.inl
      unfold remainder
      rewrite [ih]
      rfl
