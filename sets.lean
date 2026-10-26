/- the axiom of comprehension -/
def Set (T : Type) := T → Prop

def empty_set {T:Type} : Set T := fun _ => False
def member_of {T : Type} (x : T) (S : Set T) := S x
def subset {T : Type} (A : Set T) (B : Set T) := ∀ (x:T), A x → B x


macro_rules 
| `(∅) => `(empty_set)
| `($x ∈ $S) => `(member_of $x $S)
| `($A ⊆ $B) => `(subset $A $B)

def union {T:Type} (A:Set T) (B:Set T) : Set T 
:= fun x => (A x) ∨ (B x)

def intersection {T:Type} (A:Set T) (B:Set T) : Set T 
:= fun x => (A x) ∧ (B x)

def powerset {T:Type} (S:Set T) : Set ( Set T )
:= fun x => x ⊆ S
