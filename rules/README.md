# Layer 1: Logic Proofs

**Purpose:** Absolute mathematical invariants that no implementation may violate.

**Format:** Any formal proof system (Coq, Lean, Agda, Isabelle, TLA+) — or plain mathematical notation with a proof sketch.

---

## What This Layer Defines

Logic Proofs establish the mathematical bedrock of the common foundation. These are truths that hold regardless of implementation language, architecture, or convention.

The proofs in this layer define:

- **Identity properties** (Identity.v): XOR self-cancellation, null ring closure, the identity chain
- **Algebraic foundations** (GoldenFieldDefinesArithmetic.v): The golden field Q(sqrt(5)), its arithmetic, and the golden ratio
- **Vector operations** (RationalVectorsDefineOperations.v): Exact rational vectors with dot product, norm, and scaling
- **Finite combinatorics** (FiniteBasicsEnumeratesSets.v): Cardinality, subsets, and decidable equality
- **Incidence structures** (FiniteIncidenceBalancesFlags.v): The Fano plane, tetrahedral incidence, Schläfli symbols
- **Miquel incidence** (MiquelIncidenceBalancesFlags.v): The 8-point, 6-block Miquel configuration
- **Closure properties** (NullRingCloses.v): XOR closure, the null ring, closed path telescoping

## Proof Systems

| Directory | System | Status |
|-----------|--------|--------|
| `coq/` | Coq | Active — 7 proofs ported from omi-axioms |
| `lean/` | Lean 4 | Space for translations |
| `agda/` | Agda | Space for translations |
| `isabelle/` | Isabelle/HOL | Space for translations |
| `tlaplus/` | TLA+ | Space for specifications |

## How to Translate Proofs Between Systems

Each proof system has different strengths:

- **Coq:** Strongest ecosystem, dependent types, rich tactic language
- **Lean 4:** Modern, fast, good Unicode support, growing community
- **Agda:** Pure dependent types, very expressive, smaller community
- **Isabelle/HOL:** Classical logic, strong automation, good for analysis
- **TLA+:** Action specifications, model checking, good for concurrent systems

### Translation Protocol

1. **Read the invariant.** The English statement of what must be true.
2. **Read the Coq proof.** The machine-checked proof of the invariant.
3. **Identify the core argument.** What is the proof actually doing?
4. **Find the equivalent in your system.** What primitives map to what?
5. **Translate the proof.** Not word-by-word, but argument-by-argument.
6. **Verify the translation.** Your system must accept the proof.

### What Must Be Preserved

- The statement of the invariant (what is being proved)
- The logical structure of the argument
- The conclusion (the theorem statement)

### What May Change

- The specific tactics used
- The intermediate lemmas
- The encoding of data types

## Source Proofs

These proofs are adapted from:
- The OMI proof source rail
- The archived OMI identity-chain proof set

The source proofs are machine-checked and fully verified. The proofs in this layer are faithful adaptations for the axiomatic-sovereignty constitution.
