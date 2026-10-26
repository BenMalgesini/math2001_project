import functions

theorem first_inj_if_comp_inj {S T U : Type} (f : S → T) (g : T → U)
: injective (g ∘ f) → injective f
:= by
  sorry
