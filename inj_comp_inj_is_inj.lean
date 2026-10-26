import functions

theorem inj_comp_inj_is_inj {S T U : Type} (f : S → T) (g : T → U)
: injective f ∧ injective g → injective ( g ∘ f )
:= by
  sorry
