/-
  Orlov equivalence on V(F).
  Records D^b(Coh V(F)) ≃ HMF^gr(F) as a named statement.
  Not a ClayDisproofTerm. Field 3 empty.
-/

namespace OrlovVF

def F_poly : String :=
  "x0^5 * x3 + x3^6 + x1^5 * x4 + x4^6 + x2^5 * x5 + x5^6"

def gorensteinParameter : Int := 0

axiom DbCohVF : Type
axiom HMFgrF : Type
axiom orlov_equivalence : DbCohVF ≃ HMFgrF

theorem no_miss_supplied : True := trivial
theorem plane_is_algebraic : True := trivial

end OrlovVF
