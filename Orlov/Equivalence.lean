/-
Copyright (c) 2026 Benjamin Stanley Frohman. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Benjamin Stanley Frohman
-/
/-
  Orlov equivalence on V(F).
  Records D^b(Coh V(F)) ≃ HMF^gr(F) as a named *hypothesis*, not a proof.
  The former axioms `DbCohVF`, `HMFgrF`, `orlov_equivalence` are now fields of
  the structure `OrlovHypothesis`; every result below is conditional on it.
-/

namespace OrlovVF

def F_poly : String :=
  "x0^5 * x3 + x3^6 + x1^5 * x4 + x4^6 + x2^5 * x5 + x5^6"

def gorensteinParameter : Int := 0

/-- A type equivalence (core Lean has no `Equiv`, so we record one here). -/
structure TypeEquiv (α β : Type) where
  toFun : α → β
  invFun : β → α
  left_inv : ∀ a, invFun (toFun a) = a
  right_inv : ∀ b, toFun (invFun b) = b

/-- Orlov's theorem for `V(F)` (Gorenstein parameter 0), as a hypothesis:
two placeholder types for `D^b(Coh V(F))` and `HMF^gr(F)` and an equivalence
between them. Not constructed in this repository. -/
structure OrlovHypothesis where
  DbCohVF : Type
  HMFgrF : Type
  orlov_equivalence : TypeEquiv DbCohVF HMFgrF

theorem gorensteinParameter_eq_zero : gorensteinParameter = 0 := rfl

/-- Conditional: under the Orlov hypothesis, the forward map is injective. -/
theorem orlov_toFun_injective (H : OrlovHypothesis) {a b : H.DbCohVF}
    (h : H.orlov_equivalence.toFun a = H.orlov_equivalence.toFun b) : a = b := by
  have := congrArg H.orlov_equivalence.invFun h
  rwa [H.orlov_equivalence.left_inv, H.orlov_equivalence.left_inv] at this

/-- Conditional: under the Orlov hypothesis, the forward map is surjective. -/
theorem orlov_toFun_surjective (H : OrlovHypothesis) (b : H.HMFgrF) :
    ∃ a, H.orlov_equivalence.toFun a = b :=
  ⟨H.orlov_equivalence.invFun b, H.orlov_equivalence.right_inv b⟩

/-- Conditional: under the Orlov hypothesis, one side is inhabited iff the other is. -/
theorem orlov_nonempty_iff (H : OrlovHypothesis) :
    Nonempty H.DbCohVF ↔ Nonempty H.HMFgrF :=
  ⟨fun ⟨a⟩ => ⟨H.orlov_equivalence.toFun a⟩, fun ⟨b⟩ => ⟨H.orlov_equivalence.invFun b⟩⟩

end OrlovVF
