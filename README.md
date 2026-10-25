<!-- ZENODO-PROVENANCE-HEADER -->
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.23629478.svg)](https://doi.org/10.5281/zenodo.23629478)
[![License: Apache-2.0](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![ORCID](https://img.shields.io/badge/ORCID-0009--0006--7068--3718-brightgreen.svg)](https://orcid.org/0009-0006-7068-3718)

> **Author:** Benjamin Stanley Frohman ([ORCID: 0009-0006-7068-3718](https://orcid.org/0009-0006-7068-3718))  
> **Origin Provenance:** `2026-09-28 03:22:45 CDT (Git Initial Commit)`  
> **Zenodo Archive & DOI:** [`10.5281/zenodo.23629478`](https://doi.org/10.5281/zenodo.23629478) ([Zenodo Record `23629478`](https://zenodo.org/records/23629478))  
> **Primary Manuscript PDF:** [`orlov_equivalence_VF.pdf`](./orlov_equivalence_VF.pdf)  
> **Copyright & License:** Copyright (c) 2026 Benjamin Stanley Frohman. Licensed under the Apache License, Version 2.0 ([`LICENSE`](./LICENSE), [`NOTICE`](./NOTICE)).
<!-- /ZENODO-PROVENANCE-HEADER -->

<!-- Copyright (c) 2026 Benjamin Stanley Frohman. Licensed under Apache-2.0. -->
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

## License

Copyright (c) 2026 Benjamin Stanley Frohman. Licensed under the Apache License, Version 2.0 (see [`LICENSE`](LICENSE) and [`NOTICE`](NOTICE)).
