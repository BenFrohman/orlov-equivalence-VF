# Orlov’s equivalence on V(F)

**Disclaimer.** This note specializes Orlov’s 2009 theorem to one sextic fourfold. It is not a term of `ClayDisproofTerm`. Field 3 stays empty.

## 1. Data

Let `S = ℂ[x0,…,x5]` and

```
F = x0^5 x3 + x3^6 + x1^5 x4 + x4^6 + x2^5 x5 + x5^6.
```

Write `X = V(F) ⊂ ℙ^5`, assumed smooth, and `R = S/(F)`. Then `n = 5`, `w = 6`, and the Gorenstein parameter is

```
a = n+1-w = 0.
```

So `K_X ≃ O_X`: `X` is Calabi–Yau. Bondal–Orlov reconstruction does not apply.

## 2. Four names of one category

- `D^b(Coh X)` — bounded derived category of coherent sheaves.
- `HMF^gr(F)` — homotopy category of graded matrix factorizations of `F`: pairs of graded free modules and maps `P1 —p1→ P0 —p0→ P1(6)` with `p0 p1 = F · id` and `p1 p0 = F · id`.
- `D^gr_Sg(R) = D^b(gr-R) / Perf(gr-R)` — graded singularity category of the affine cone.
- `underline{MCM}_gr(R)` — stable category of graded maximal Cohen–Macaulay modules.

Eisenbud: `coker(p1)` identifies `HMF^gr(F)` with `underline{MCM}_gr(R)` and with `D^gr_Sg(R)`.

Serre: `D^b(Coh X) ≃ D^b(qgr R)`.

## 3. Window functors

Orlov 2009, Theorem 2.5 / Remark 2.6 / Theorem 3.11. For each `i ∈ ℤ` there are functors

```
Ψ_i : D^b(X) → D^gr_Sg(R),
Φ_i : D^gr_Sg(R) → D^b(X).
```

On a sheaf `ℎ`,

```
Ψ_i(ℎ) = stab( τ_{≥i} Γ_*(ℎ(•)) ).
```

That is: take the graded section module, cut to degrees in the window, stabilize to a factorization of `F`. `Φ_i` sheafifies the corresponding graded MCM module.

When `a = 0` the leftover exceptional collections of line bundles (Fano side) and residue fields (general-type side) are empty. Therefore for every window

```
Φ_i ∘ Ψ_i ≃ id,    Ψ_i ∘ Φ_i ≃ id.
```

## 4. Theorem

**Theorem (Orlov, specialized).**

```
D^b(Coh V(F)) ≃ D^gr_Sg(S/(F)) ≃ HMF^gr(F).
```

*Proof sketch.* Combine Serre, Eisenbud, and the `a = 0` case of the window comparison. The two quotients of `gr-R` — by torsion (qgr) and by perfect complexes (singularity category) — match after cutting a full-weight window. ∎

Every `Ψ_i` still factorizes the **same** polynomial `F`. A window is not a Fourier–Mukai kernel on a product of two fourfolds.

## 5. Visible surfaces stay algebraic

Let `Π = V(x3,x4,x5)` and `Π_{-1} = V(x0+x3, x1+x4, x2+x5)`. Then `Ψ_i(O_Π)` exists and

```
ch(Ψ_i(O_Π)) = [Π] ∈ im(cl).
```

The same holds for `Π_{-1}` and for

```
β = h² - 6[Π] = cl(S - 5Π).
```

`β` is primitive (`β · h² = 0`) and algebraic. Primitive pairing is not a miss.

## 6. What the proof does not contain

Field 3 of a Hodge counterexample is a function

```
miss_γ : ∀ z ∈ CH²(X)_ℚ,  cl(z) = γ → False
```

for one named primitive class `γ ∈ P^4(X,ℚ) ∩ H^{2,2}`. This proof never mentions `CH²`. It identifies objects of one derived category with factorizations of `F`. It does not name a class outside `im(cl)`, does not write a second fourfold `Y`, and does not cap the image of the cycle class map.

The inhabited geometric term remains `⟨V(F), [Π], Π⟩` in `NL_alg`.

## References

1. D. Orlov, Derived categories of coherent sheaves and triangulated categories of singularities, Progr. Math. 270 (2009), 503–531. arXiv:math/0503632.
2. D. Eisenbud, Homological algebra on a complete intersection, with an application to group representations, Trans. Amer. Math. Soc. 260 (1980), 35–64.
3. I. Shipman, A geometric approach to Orlov’s theorem, Compositio Math. 148 (2012), 1365–1388. arXiv:1012.5282.
