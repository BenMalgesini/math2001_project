import natural_numbers

import zero_plus

theorem plus_succ ( m n : ℕ )
: m + n.succ = (m + n).succ := by -- goal is m+n.succ = (m+n).succ
  induction m using ℕ.rec -- do induction on m to get m in 2 scenarios, zero and succ
  case zero =>            -- goal is 0+n.succ = (0+n).succ
    rewrite [zero_plus]   --left hand zero gone
    rewrite [zero_plus]   --right hand zero gone
    rfl                   -- n.succ = n.succ
  case succ m ih =>       -- goal is m.succ+n.succ = (m.succ+n).succ
    unfold plus           -- now (m+n.succ).succ = (m+n).succ.succ by unfolding
    rewrite [ih]          -- now n is unfolded, or (m+n).succ.succ = (m+n).succ.succ
    rfl
