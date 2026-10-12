import natural_numbers


theorem zero_plus ( n : ℕ ) 
: ℕ.zero + n = n := by
  sorry

theorem succ_plus ( n : ℕ )
: m.succ + n = (plus m n).succ := by
  sorry



theorem plus_zero ( m : ℕ ) 
: m + ℕ.zero = m := by
  sorry

theorem plus_succ ( m n : ℕ ) 
: m + n.succ = (m + n).succ := by
  sorry

theorem plus_comm ( m n : ℕ )
: m + n = n + m := by
  sorry
      
theorem plus_assoc ( m n p : ℕ )
: m + ( n + p ) = ( m + n ) + p := by
  sorry


theorem zero_times ( n : ℕ ) 
: ℕ.zero * n = ℕ.zero := by
  sorry

theorem succ_times ( m n : ℕ )
: m.succ * n = n + m * n := by
  sorry

theorem times_zero ( m : ℕ )
: m * ℕ.zero = ℕ.zero := by
  sorry

theorem times_succ ( m n : ℕ )
: m * n.succ = m + m * n := by
  sorry

theorem times_comm ( m n : ℕ )
: m * n = n * m := by
  sorry

theorem times_right_distrib ( m n p : ℕ )
: (m + n ) * p = m*p + n*p := by
  sorry

theorem times_left_distrib ( m n p : ℕ )
: m * ( n + p ) = m*n + m*p := by
  sorry


theorem times_assoc ( m n p : ℕ )
: m * ( n * p ) = ( m * n ) * p := by
  sorry


