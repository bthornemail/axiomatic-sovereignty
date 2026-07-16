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
