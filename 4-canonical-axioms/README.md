# Layer 4: Canonical Axioms

**Purpose:** Individual rights — what every contributor is entitled to.

**Format:** Formal logic statements — encodable in any proof assistant or as machine-checkable first-order logic.

---

## What This Layer Defines

Canonical Axioms specify the rights that every contributor to the computational commons possesses. These are not policies. They are axioms — statements that are true by definition and cannot be violated.

## Axioms

| Directory | Right | Status |
|-----------|-------|--------|
| `Axiom_of_Self_Generation/` | The right to create from nothing | Planned |

## Axiom Structure

Each axiom contains:

- **`formal/`** — Formal logic statement (any proof system)
- **`plaintext/`** — Human-readable statement
- **`README.md`** — Proof references and derivation history

## The Axiom Invariant

```text
axioms are true by definition
axioms cannot be violated
axioms are independent (no axiom implies another)
axioms are consistent (no axiom contradicts another)
```
# Axiom of Self-Generation

**Right:** Every contributor has the right to create something from nothing.

## Statement

```text
For any contributor C and any time T:
  C may create a new contribution at T
  provided the contribution passes all five gates.
```

## Formal (Sketch)

```text
∀ C ∈ Contributors, ∀ T ∈ Time:
  may_create(C, T) ↔ passes_all_gates(create(C, T))
```

## Derivation

This axiom derives from:
- Origami Axiom 1 (fold two points): the first fold creates something from nothing
- The Computational Singularity (Axiom 7): creation is the basis of convergence
- The Optional Identity Statement (Axiom 2): creation does not require identity
