# The Foundational Charter

**Narrative face:** Where

**Axiom 6 - The Ecosystem Fold**

*Given two points p1 and p2 and two lines l1 and l2, there is a fold that places p1 onto l1 and p2 onto l2.*

---

## 1. Where The Foundation Is Used

This charter names where the pieces of the repository become usable.

The root files carry the narrative. The subfolders should carry artifacts people can actually use: proofs, pure types, deterministic procedures, attested axioms, and real social contracts. Placeholder entries do not belong in the layers unless they are clearly marked as development notes outside the public artifact path.

## 2. Why This Exists

People are using knowledge as leverage by withholding it.

Knowledge empowers, but knowledge itself is not power. The leverage comes from making other people dependent on hidden methods, proprietary runtimes, inaccessible tooling, closed models, or lessons they must each rediscover alone.

Axiomatic Sovereignty is meant to give people computable tools they can use to keep up with institutions and corporations that already compound knowledge internally. The response is not to build another closed platform. The response is to preserve shared, inspectable, runtime-agnostic artifacts that help people make better decisions.

## 3. Algorithmic Determinism

The usable foundation promotes algorithmic determinism through pure functions, pure types, and explicit procedures.

That means:

- Inputs and outputs should be visible.
- State transitions should be stated directly.
- Types should describe the shape of data without hidden dependencies.
- Procedures should be reproducible across runtimes.
- Claims should be verifiable without trusting a platform.

The goal is not to force one implementation. The goal is to make the foundation clear enough that different implementations can be compared, translated, and corrected.

Many languages can read the same structural truth, but no language owns it. A proof assistant, type system, markup format, runtime, or fork may reveal part of the foundation without becoming the foundation itself.

## 4. The Pentagonal Base

The five folders remain the usable base:

```text
LOGIC_PROOFS/          formal invariants and proofs
STRUCTURAL_TYPES/      pure data shapes and encodings
PROCEDURAL_SEQUENCES/  deterministic transformations
CANONICAL_AXIOMS/      attested sovereign bounds
SOCIAL_CONTRACTS/      real agreements people choose to uphold
```

Each layer should contain working material, not empty symbolism.

## 5. Construction Records

A construction is a named set of layer references that can be cloned, translated, implemented, audited, or forked.

Each construction should state:

- Name
- Purpose
- Layer references
- Required invariants
- Runtime interpretations, if any
- Known forks or translations
- Consequences or corrections returned from use

Use relative paths. Do not reference local machine paths.

## 6. Construction Template

```markdown
## Construction: [Name]

**Purpose:** [What this assembly helps someone do]

**Layer References:**
- Logic Proofs: [relative paths]
- Structural Types: [relative paths]
- Procedural Sequences: [relative paths]
- Canonical Axioms: [relative paths]
- Social Contracts: [relative paths]

**Deterministic Surface:** [Inputs, outputs, and reproducible transition points]

**Runtime Interpretation:** [Optional examples, not requirements]

**Return Notes:** [What use of this construction taught the foundation]
```

## 7. Branch Records

Branches are adaptations that respond to specific needs, contexts, or visions.

Registration is visibility, not approval. A branch can exist without being listed here, and a listed branch does not become subordinate to this reference branch.

### Branch Entry Template

```text
## Branch: [Name]

- Origin: [parent fork or foundation]
- Purpose: [why this branch exists]
- Language: [primary implementation language, if any]
- Status: [active, dormant, deprecated]
- Link: [repository URL]
- Delta: [what changed from the parent]
```

## 8. Fork Responsibility

To fork the foundation:

1. Fork the repository or create a new branch.
2. State your reason for forking in your branch, or in this document if you want the fork listed here.
3. Link your fork to the parent foundation where useful.
4. Preserve provenance.
5. Mark meaningful deltas.

If a fork modifies the foundation, the modification creates a responsibility boundary for the delta introduced. It does not create control over the original foundation.

## 9. Charter Invariant

```text
the root files carry narrative
the layer folders carry usable artifacts
empty placeholders do not belong in the artifact path
pure functions make behavior inspectable
pure types make data shape inspectable
deterministic procedures make decisions reproducible
many languages can read the same structural truth
no language owns the structural truth it reads
forks may modify assemblies
modified assemblies create responsibility for their deltas
```

---

*This document is the ecosystem fold of Axiomatic Sovereignty. It names where the foundation becomes usable.*
