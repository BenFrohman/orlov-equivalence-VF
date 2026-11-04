-- Axiom audit: prints the axioms of every theorem/lemma in the project.
-- CI fails unless each depends only on propext, Classical.choice, Quot.sound (or none).
import Orlov.Equivalence

#print axioms OrlovVF.TypeEquiv.left_inv
#print axioms OrlovVF.TypeEquiv.right_inv
#print axioms OrlovVF.gorensteinParameter_eq_zero
#print axioms OrlovVF.orlov_nonempty_iff
#print axioms OrlovVF.orlov_toFun_injective
#print axioms OrlovVF.orlov_toFun_surjective
