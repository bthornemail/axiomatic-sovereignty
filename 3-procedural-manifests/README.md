# Layer 3: Procedural Manifests

**Purpose:** State transition rules — how the system moves from one state to another.

**Format:** Any executable specification (TLA+ actions, π-calculus, plain English with formal pre/post conditions).

---

## What This Layer Defines

Procedural Manifests specify the algorithms and protocols that the common foundation uses. They define:

- **What must happen** (the state transition)
- **What must be true before** (the precondition)
- **What must be true after** (the postcondition)
- **What may not happen** (the invariants)

## Manifests

| Directory | Purpose | Status |
|-----------|---------|--------|
| `Initialize_Agent/` | How an agent joins the common foundation | Planned |
| `Reconcile_State/` | How state conflicts are resolved | Planned |

## Manifest Structure

Each manifest contains:

- **`tlaplus/`** — TLA+ action specification (formal)
- **`haskell/`** — Pure function specification (executable)
- **`plaintext/`** — Plain English with formal pre/post conditions (readable)
- **`README.md`** — What this manifest does and why

## The Manifest Invariant

```text
every transition has a precondition
every transition has a postcondition
every transition preserves the invariants
no transition is irreversible without receipt
```
