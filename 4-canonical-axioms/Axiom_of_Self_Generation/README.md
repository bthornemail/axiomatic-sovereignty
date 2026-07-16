---
entry_meta:
  concept_id: "axiom.self_generation"
  canonical_name: "Axiom of Self-Generation"
  layer: "4-canonical-axioms"
  status: "draft"
logic_layer:
  proof_file: ""
  core_invariant: "creation_requires_no_prior_permission"
structural_layer:
  type_file: ""
  primary_shape: "contribution"
---

# Axiom of Self-Generation

**Right:** Every contributor has the right to create something from nothing.

## Statement

```text
For any contributor C and any time T:
  C may create a new contribution at T
  provided the contribution passes all five gates.
```

## Formal Sketch

```text
for all C in Contributors, for all T in Time:
  may_create(C, T) iff passes_all_gates(create(C, T))
```

## Derivation

This axiom derives from:

- Origami Axiom 1: the first fold creates relation from separation
- The Computational Singularity: creation is the basis of convergence
- The Optional Identity Statement: creation does not require mandatory identity

## Boundary

Self-generation permits contribution without prior permission. It does not bypass validation, create control over the foundation, or make a contribution immune from consequence.
