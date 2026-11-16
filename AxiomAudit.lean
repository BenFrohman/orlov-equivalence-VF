/-
Copyright (c) 2026 Benjamin Stanley Frohman. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Benjamin Stanley Frohman
-/

-- Axiom audit: prints the axioms of every theorem/lemma in the project.
-- CI fails unless each depends only on propext, Classical.choice, Quot.sound (or none).
import Orlov.Equivalence

/-!
# AxiomAudit

Machine-checked Lean 4 module.
-/

#print axioms OrlovVF.TypeEquiv.left_inv
#print axioms OrlovVF.TypeEquiv.right_inv
#print axioms OrlovVF.gorensteinParameter_eq_zero
#print axioms OrlovVF.orlov_nonempty_iff
#print axioms OrlovVF.orlov_toFun_injective
#print axioms OrlovVF.orlov_toFun_surjective
