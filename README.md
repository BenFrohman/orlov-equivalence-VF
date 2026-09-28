# Orlov equivalence on the locked sextic fourfold

**This repository records Orlov's theorem for one host. It is not a Hodge counterexample and not a Clay Millennium disproof.**

Host:

```
F = x0^5 x3 + x3^6 + x1^5 x4 + x4^6 + x2^5 x5 + x5^6
X = V(F) ⊂ ℙ^5
```

Gorenstein parameter `a = n+1-w = 6-6 = 0`. Orlov 2009, Theorems 2.5(iii), 2.13(iii), 3.11(iii):

```
D^b(Coh X) ≃ D^gr_Sg(S/(F)) ≃ HMF^gr(F)
```

That is a change of presentation of one triangulated category attached to one polynomial. It does not produce a second fourfold `Y`, does not cap `im(cl)`, and does not inhabit field 3.

## Files

- `NOTE.md` — the official note
- `orlov_equivalence_VF.tex` — the same note in LaTeX
- `STATUS.md` — ledger: what is proved, what is empty

## Status of the Hodge constructor

```
miss_γ : ∀ z ∈ CH²(X)_ℚ,  cl(z) = γ → False
```

This function is **empty**. Named classes are algebraic:

```
cl(Π) = [Π],   cl(Π_{-1}) = [Π_{-1}],   cl(S-5Π) = β = h²-6[Π]
```

The inhabited geometric term is `⟨V(F), [Π], Π⟩` in `NL_alg`.

## Citation

D. Orlov, *Derived categories of coherent sheaves and triangulated categories of singularities*, in Algebra, Arithmetic, and Geometry: In Honor of Yu. I. Manin, Progr. Math. 270, Birkhäuser, 2009, pp. 503–531. [arXiv:math/0503632](https://arxiv.org/abs/math/0503632)

Author of this specialization note: Benjamin Stanley Frohman.
