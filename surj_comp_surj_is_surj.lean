import functions

theorem surj_comp_surj_is_surj {S T U : Type} (f : S → T) (g : T → U)
: surjective f ∧ surjective g → surjective ( g ∘ f )
:= by
  sorry
