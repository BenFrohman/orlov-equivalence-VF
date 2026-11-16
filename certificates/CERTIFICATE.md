# Kernel certificate: orlov-equivalence-VF

This file records a reproducible machine check of the Lean 4 development in this repository. Lean does not issue a signed "official" certificate. What is recorded here is the exact commit and toolchain, the complete `lake build` log, a scan for `sorry`/`admit`/`native_decide`/`axiom`, the `#print axioms` result for every theorem the build produces, and a replay of every module through Lean's kernel with the toolchain's `leanchecker`. Each check can be rerun with the command at the end.

| Item | Value |
|---|---|
| Repository | https://github.com/BenFrohman/orlov-equivalence-VF |
| Certified commit | `dc82d352300111441dc79d3032266615fc90b248` (branch `chore/kernel-certificate`) |
| Lean sources | identical to `main` at `6762bcda44fae0247f63f29d586e926378e6e9b9`: no `.lean`, lakefile, manifest or toolchain file differs; the certified commit only adds CI and the scripts in `certificates/tools/` |
| lean-toolchain | `leanprover/lean4:v4.34.0` |
| Lean | Lean (version 4.34.0, x86_64-unknown-linux-gnu, commit 293d5d0c0c3f3dded4688b3ccd6a33939ac5102b, Release) |
| Mathlib | none (no Mathlib dependency) |
| Date (UTC) | 2026-11-16T19:23:33Z |
| CI run | https://github.com/BenFrohman/orlov-equivalence-VF/actions/runs/43938053726 |
| `lake build` | `Build completed successfully (3 jobs).` ([build.log](build.log)) |
| sorry / admit / native_decide / axiom scan | `RESULT: 0 hits` ([sorry-scan.txt](sorry-scan.txt)) |
| `#print axioms` | `AUDIT PASS: 12 theorems in 1 modules depend only on propext, Classical.choice, Quot.sound (or on no axioms)` ([axioms.txt](axioms.txt)) |
| Kernel replay (leanchecker) | `RESULT: 1 of 1 modules replayed through the kernel, 0 failures` ([leanchecker.txt](leanchecker.txt)) |

## What each check means

- **Build.** `lake build` of the default targets with the pinned toolchain. Mathlib comes from `lake exe cache get` (it is never rebuilt from source). The build elaborates every proof and sends each declaration to Lean's kernel.
- **Scan.** `certificates/tools/sorry_scan.py` strips comments and strings from every tracked `.lean` file and reports any `sorry`, `admit`, `native_decide` or `axiom` declaration. Result: RESULT: 0 hits.
- **Axioms.** `certificates/tools/gen_audit.py` imports all 1 built modules ([modules.txt](modules.txt)) and calls `Lean.collectAxioms`, the function behind `#print axioms`, on every theorem declared in them (12 theorems, auto-generated internal names excluded). `check_audit.py` fails unless each depends only on `propext`, `Classical.choice` and `Quot.sound`, or on no axioms. Raw output: [axioms.raw.txt](axioms.raw.txt); generated Lean file: [KernelCertificateAudit.lean.txt](KernelCertificateAudit.lean.txt).
- **Kernel replay.** checker: leanchecker source shipped with v4.34.0 (src/lean/LeanChecker.lean), prefix match -> exact match, run with lean --run. For each module, the checker loads the module's imports from their `.olean` files and replays every declaration of that module through the kernel. The stock checker treats its argument as a module-name prefix and replays all matching modules in parallel, which runs out of memory on a root module, so it is run once per module with exact matching (the one-line patch is printed in [leanchecker.txt](leanchecker.txt)). The checker's own documentation describes it as a tool to detect environment hacking, not an independent external verifier; imported Mathlib and core declarations are trusted from their `.olean` files.

## Scope

The axiom result says the listed theorems are proved from Lean's standard axioms. It does not by itself say what the theorems mean; read the statements in the sources. Conditional theorems remain conditional on their hypotheses.

Full `#print axioms` output (verbatim from `axioms.txt`):

```
'OrlovVF.OrlovHypothesis.mk.inj' does not depend on any axioms
'OrlovVF.OrlovHypothesis.mk.injEq' depends on axioms: [propext]
'OrlovVF.OrlovHypothesis.mk.sizeOf_spec' does not depend on any axioms
'OrlovVF.TypeEquiv.left_inv' does not depend on any axioms
'OrlovVF.TypeEquiv.mk.inj' does not depend on any axioms
'OrlovVF.TypeEquiv.mk.injEq' depends on axioms: [propext]
'OrlovVF.TypeEquiv.mk.sizeOf_spec' does not depend on any axioms
'OrlovVF.TypeEquiv.right_inv' does not depend on any axioms
'OrlovVF.gorensteinParameter_eq_zero' does not depend on any axioms
'OrlovVF.orlov_nonempty_iff' does not depend on any axioms
'OrlovVF.orlov_toFun_injective' does not depend on any axioms
'OrlovVF.orlov_toFun_surjective' does not depend on any axioms
```

## Rebuild

```
git clone https://github.com/BenFrohman/orlov-equivalence-VF.git && cd orlov-equivalence-VF && git checkout dc82d352300111441dc79d3032266615fc90b248 && lake build && python3 certificates/tools/sorry_scan.py && python3 certificates/tools/gen_audit.py /tmp/KernelCertificateAudit.lean /tmp/modules.txt && lake env lean /tmp/KernelCertificateAudit.lean > /tmp/axioms.raw.txt && python3 certificates/tools/check_audit.py /tmp/axioms.raw.txt | tail -n 1
```
