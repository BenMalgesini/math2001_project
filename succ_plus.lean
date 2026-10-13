import natural_numbers
import plus_zero
import plus_succ

theorem succ_plus ( n : ℕ )
: m.succ + n = (plus m n).succ := by
  induction n
  case zero =>
    rewrite [plus_zero] -- gets rid of zeros here
    rewrite [plus_zero] -- and here
    rfl -- to make m.succ = m.succ
  case succ n ih =>
    rewrite [plus_succ] -- uses plus_succ to rewrite the left to match the left of the ih
    rewrite [plus_succ] -- rewrites the right to match the right of the ih
    rewrite [ih] -- makes (m + n).succ.succ = (m + n).succ.succ
    rfl
