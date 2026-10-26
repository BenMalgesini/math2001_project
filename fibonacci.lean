import natural_numbers

def Fibonacci : ℕ → ℕ
| 0 => 0
| 1 => 1
| ℕ.succ ( ℕ.succ n ) => Fibonacci n + Fibonacci n.succ

