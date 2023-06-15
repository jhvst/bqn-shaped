
Nat ← { Nat 0: 0; 1 + Nat 𝕩-1 }
Fin ← ↕ Nat
VectO ← { (≠Fin 𝕨) ↑ 𝕩 ⊣ ⌾ ⊢ Fin 𝕨 }
Vect ← { 0 Vect 𝕩: 𝕨↑𝕩 ; 𝕨↑𝕩 ∾ (𝕨-1) Vect 𝕩 }
Vect2 ← {
 ! 𝕨=≠𝕩
  𝕨↑𝕩
}

(Nat 3) ⊏ ↕7

RankO ← ⊢ ⊑ ⟜  (Fin 4)
Rank ← ⊢ ◶ (Fin 4)
Rank 3

Pre ← ↕∘≠≡⍋
Pre ⟨'a','b'⟩
Pre ⟨0,1⟩

MkRank ← Rank { (Nat 𝕨 > Nat 𝕩) ◶ ⟨Nat 𝕨 > 1, 2⟩ ⊏ (Fin 3) }
2 MkRank 2
3 MkRank 1

Dim ← (Nat 3) Vect (⊢ ∾ ⟜ (×´)) ○ ((Nat 2) Vect ⊢)
DimLax ← (Nat 3) Vect (⊢ ∾ ⟜ (×´))
Dim ⟨3,3,4⟩
DimLax ⟨3,3,4⟩

SomeScalar ← (Dim ⟨1, 1, 1⟩)˙
SomeVect ← { Dim ⟨1,⊑𝕩,⊑𝕩⟩ }
SomeMat ← Dim ((Nat 2) Vect ⊢)

(Nat 3) Vect 3

SomeScalar
SomeVect ⟨4⟩
SomeMat ⟨2,2⟩

Reduce ← {
  SomeMat: SomeVect 1↑𝕩 ;
  SomeVect: SomeScalar ;
  SomeScalar: SomeScalar ;
  ! "unimplemented"
}

Reduce SomeMat ⟨2, 2⟩
Reduce SomeVect ⟨4⟩
Reduce SomeScalar

SomeVect 4 + Reduce 6

