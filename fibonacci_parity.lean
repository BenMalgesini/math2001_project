import natural_numbers
import two_step_induction
import remainders_by_3
import odd_iff_not_even
import even_plus_odd_is_odd
import odd_plus_even_is_odd
import odd_plus_odd_is_even
import fibonacci

local notation "F" => Fibonacci

example ( n : ℕ ) 
: ( n % 3 ) = 0 ↔ is_even ( Fibonacci n ) 
:= by
  sorry
private theorem fibonacci_parity_lemma (n:ℕ)
: (n%3 = 0) ∧ (F n %2 = 0) ∧ (F n.succ %2 = 1) ∨
  (n%3 = 1) ∧ (F n %2 = 1) ∧ (F n.succ %2 = 1) ∨
  (n%3 = 2) ∧ (F n %2 = 1) ∧ (F n.succ %2 = 0)
:= by
  sorry
theorem fibonacci_parity (n:ℕ)
: ( n % 3 = 0 ) ↔ ( ( Fibonacci n ) % 2 = 0 )
:= by
  sorry
example (n:ℕ)
: ( n % 3 = 0 ) ↔ ( ( Fibonacci n ) % 2 = 0 )
:= by
  sorry
