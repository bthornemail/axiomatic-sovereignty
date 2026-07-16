# The Protocol of Admission

**Axiom 3 — The Rigor Fold**

*Given two lines l₁ and l₂, there is a unique fold that places l₁ onto l₂.*

---

## 1. What Gets In

The admission protocol determines what enters the common foundation. It is the rigor filter for claims, artifacts, translations, and corrections.

The gates judge contributions, not people. A rejected contribution does not reduce the sovereignty of the contributor, and an accepted contribution does not give the contributor control over the foundation.

A contribution enters the reference foundation through five gates:

```text
Submit -> Logic Gate -> Type Gate -> Procedure Gate -> Canonical Gate -> Social Gate -> Receipt
```

## 2. The Five Gates

### Gate 1: Logic

Is the claim logically consistent? Can it be derived from the axioms?

This gate is the domain of formal verification: proof assistants (Coq, Lean, Agda), formal methods, logical analysis.

A contribution that fails the logic gate is:
- Internally contradictory
- Inconsistent with the axioms
- Not derivable from accepted foundations

### Gate 2: Type

Is the claim well-typed? Does it preserve the shape it claims to preserve?

This gate is the domain of pure types, structural validation, and explicit encodings.

A contribution that fails the type gate is:
- Malformed
- Type-incorrect
- Not structurally sound

### Gate 3: Procedure

Is the claim computable? Does it terminate? Does the same input produce the same output?

This gate is the domain of algorithmic determinism: pure functions, explicit inputs, explicit outputs, reproducible transitions, and runtime-independent checks.

A contribution that fails the procedure gate is:
- Non-terminating
- Non-reproducible
- Producing ambiguous or incorrect output

### Gate 4: Canonical

Does the claim conform to the constitution? Does it violate any invariant?

This gate is the domain of the seven root documents themselves: the origami axioms, the five-layer stack, and the no-final-claim doctrine.

A contribution that fails the canonical gate:
- Violates a constitutional invariant
- Infringes on the sovereignty of another contributor
- Centralizes control

### Gate 5: Social

Does the claim serve the common foundation? Is it consistent with the social contract?

This gate is the domain of human judgment: community review, fork decisions, reputation assessment.

A contribution that fails the social gate:
- Does not serve the common foundation
- Is inconsistent with community values
- Is rejected by the community

## 3. The Receipt

Every accepted contribution receives a receipt. The receipt is:
- Cryptographically verifiable
- Attributed to the contributor (or their pseudonym)
- Timestamped
- Linked to the specific version of the constitution it was validated against

The receipt is not a certificate of permanent correctness, institutional approval, or ownership. It is a record that a contribution passed the public gates at a specific point in the propagation history.

## 4. The Validation Pipeline

The validation pipeline is:
- Independent (each gate can be checked separately)
- Verifiable (each gate's result can be confirmed)
- Reversible (a rejected contribution can be resubmitted)
- Transparent (the criteria for each gate are public)

## 5. The Language-Agnostic Encoding

While the constitution is language-agnostic, implementations must be expressible in specific languages. The encoding protocol requires:

- **Source Encoding:** Text-based format
- **Version Pinning:** Exact language and dependency versions
- **Reproducibility:** Identical inputs produce identical outputs
- **Auditability:** Inspectable by non-experts
- **Deterministic Surface:** Clear inputs, outputs, and transition boundaries

## 6. The Admission Invariant

```text
all five gates must agree
no single gate is sufficient
rejection includes the failing gate
resubmission is always permitted
the criteria are always public
accepted contributions do not create ownership over the foundation
usable artifacts are preferred over placeholders
pure functions and types are the default expression of deterministic claims
```

---

*This document is the rigor fold (Axiom 3) of the Axiomatic Sovereignty computational constitution. It aligns what enters with what already exists.*
