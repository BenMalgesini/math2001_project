import functions

theorem second_surj_if_comp_surj {S T U : Type} (f : S → T) (g : T → U)
: surjective ( g ∘ f ) → surjective g
:= by
  sorry
