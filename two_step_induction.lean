import natural_numbers

namespace ℕ
theorem two_step_induction {P: ℕ → Prop}
( h0 : P 0 )
( h1 : P 1 )
( step : (n:ℕ) → P n → P n.succ → P n.succ.succ )
: ∀ (n:ℕ), P n 
:= by
  sorry
end ℕ

      






