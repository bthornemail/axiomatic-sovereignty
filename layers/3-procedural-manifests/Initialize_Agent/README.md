# Initialize_Agent

**Manifest:** How an agent joins the computational commons.

## Precondition

- The agent has not been previously rejected
- The agent has a valid identity (or chooses anonymity)
- The commons has capacity for new agents

## Postcondition

- The agent has a Receipt
- The agent is registered in the branch registry
- The agent's identity is recorded (or marked anonymous)

## Invariants

- No agent may initialize without passing all five gates
- No agent may initialize twice with the same identity
- The Receipt must be verifiable
