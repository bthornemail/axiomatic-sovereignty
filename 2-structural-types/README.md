# Layer 2: Structural Types

**Purpose:** Pure data geometries - the shapes that identity, relation, and evidence take.

**Format:** Any type system (Haskell, Idris, Rust, OCaml, C structs, bytecode schemas) as long as the shape is explicit, pure, and unimported.

---

## What This Layer Defines

Structural Types establish the data shapes that the common foundation uses. These types are:

- **Pure:** No side effects, no IO, no mutation
- **Unimported:** Built from first principles, not from external libraries
- **Structural:** The shape of the data is the identity of the data
- **Deterministic:** The same encoded shape means the same thing across runtimes

The types in this layer define:

- **Foundation types** (Kernel.hs): Null, Bit, Pair, Nibble, Byte, Word16, Word32
- **The Relation** (Kernel.hs): The 12-field identity record (8 x Word16 + 4 x Word32)
- **Core wrappers** (Core.hs): Atom, Path, Receipt, Envelope — all wrapping Relation
- **Field operations** (Relation.hs): Accessors, setters, structural equality
- **Scope encoding** (Scope.hs): FS/GS/RS/US scope as a Relation

## Type Systems

| Directory | System | Status |
|-----------|--------|--------|
| `haskell/` | Haskell | Active — 5 modules ported from omi-canvas |
| `rust/` | Rust | Space for translations |
| `c/` | C structs | Space for translations |
| `bytecode/` | WebAssembly | Space for schemas |
| `typescript/` | TypeScript | Space for translations |

## The Key Insight

In the OMI system, **identity is not a hash.** Identity is the Relation — an addressed place-value structure derived from the byte table. This is the fundamental type that any implementation must provide.

```
Relation = 8 x Word16 + 4 x Word32
         = 128 bits of address + 128 bits of payload
         = the shape of identity itself
```

## How to Translate Types Between Languages

### Translation Protocol

1. **Read the Haskell type.** Understand the shape and invariants.
2. **Identify the representation.** What is the memory layout?
3. **Find the equivalent in your language.** What primitives map?
4. **Translate the type.** Preserve the shape, adapt the syntax.
5. **Verify the translation.** Your type must inhabit the same space.

### What Must Be Preserved

- The field count and types (8 x Word16 + 4 x Word32)
- The structural equality semantics
- The null identity (all zeros)
- The relationship between Relation and its wrappers

### What May Change

- The specific syntax (data vs struct vs class)
- The naming conventions
- The module/file organization
- The implementation of equality

## Source Types

These types are adapted from:
- OMI Canvas foundation types
- OMI Canvas core wrappers
- OMI Canvas relation field operations
- OMI Canvas scope encoding

The source types are used in the Haskell OMI Canvas type engine. The types in this layer are faithful adaptations for the axiomatic-sovereignty constitution.
