# Layer 3: Procedural Sequences

**Purpose:** Deterministic state transition rules - how the system moves from one state to another.

**Format:** Any executable specification (TLA+ actions, π-calculus, plain English with formal pre/post conditions).

---

## What This Layer Defines

The Procedural Sequences layer specifies deterministic algorithms and protocols as composable sets that the common foundation uses. It defines:

- **What must happen** (the state transition)
- **What must be true before** (the precondition)
- **What must be true after** (the postcondition)
- **What may not happen** (the invariants)
- **What inputs are accepted** (the deterministic surface)
- **What output must be produced** (the reproducible result)

## Sequence Sets

| Directory | Purpose | Status |
|-----------|---------|--------|
| `Initialize_Agent/` | How an agent joins the common foundation | Planned roadmap |
| `Reconcile_State/` | How state conflicts are resolved | Planned roadmap |

## Sequence Structure

Each sequence contains:

- **`tlaplus/`** — TLA+ action specification (formal)
- **`haskell/`** — Pure function specification (executable)
- **`plaintext/`** — Plain English with formal pre/post conditions (readable)
- **`README.md`** — What this sequence does and why

## The Sequence Invariant

```text
every transition has a precondition
every transition has a postcondition
every transition preserves the invariants
same input yields same output
hidden runtime state is not part of the procedure
no transition is irreversible without receipt
```
