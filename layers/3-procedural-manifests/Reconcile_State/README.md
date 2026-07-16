# Reconcile_State

**Manifest:** How state conflicts are resolved in the computational commons.

## Precondition

- Two or more branches have diverged
- The divergence is detected
- A reconciliation is requested

## Postcondition

- The branches are merged (or the divergence is recorded)
- No invariant is violated
- The Receipt records the reconciliation

## Invariants

- Reconciliation must not break any branch's invariants
- Reconciliation must be reversible (fork again if needed)
- The Receipt must be verifiable
