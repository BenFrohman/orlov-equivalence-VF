# Verification certificate — orlov-equivalence-VF v1.1.0

Paper: [Orlov's Equivalence for a Sextic Fourfold as an Explicit Hypothesis: a Machine-Checked Lean 4 Interface](paper/Frohman_Orlov_Equivalence_VF_Conditional_2026.pdf)  
Author: Benjamin Stanley Frohman <frohmanbenjamin@gmail.com>

- `lake build`: succeeds (enforced by `.github/workflows/certify.yml` and `lean.yml`).
- `sorry` / `admit`: none (`scripts/check_no_sorry.py`).
- `native_decide`: none.
- User `axiom` declarations: none.
- Axioms used: only Lean's standard `propext`, `Classical.choice`, `Quot.sound` (or none) — output of `#print axioms` over all 6 audited declarations (`AxiomAudit*.lean`) below.

```
'OrlovVF.TypeEquiv.left_inv' does not depend on any axioms
'OrlovVF.TypeEquiv.right_inv' does not depend on any axioms
'OrlovVF.gorensteinParameter_eq_zero' does not depend on any axioms
'OrlovVF.orlov_nonempty_iff' does not depend on any axioms
'OrlovVF.orlov_toFun_injective' does not depend on any axioms
'OrlovVF.orlov_toFun_surjective' does not depend on any axioms
```
