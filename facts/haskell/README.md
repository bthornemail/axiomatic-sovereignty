# Haskell Structural Type Inventory

This folder is an inventory of Haskell-shaped structural knowledge.

It is not a Haskell application, package, runtime, or command surface. It is a reference shelf for pure types and pure structural operations that other people can inspect, translate, fork, or ignore without being forced into one implementation path.

## Purpose

The purpose of this folder is to make the shape of knowledge available.

Haskell is used here because it is precise about types, constructors, and algebraic structure. Haskell does not own the model. A Rust struct, C layout, TypeScript type, Coq inductive, or bytecode schema may carry the same shape if it preserves the same structural commitments.

## Inventory Classes

### 1. Pure Shapes

Pure shapes define what exists.

They should contain data declarations, newtype declarations, constructors, and minimal first-principles primitives.

Examples:

- `Kernel.hs`
- `Core.hs`

Pure shapes should avoid:

- IO
- runtime state
- external package imports
- platform assumptions
- hidden dependency on parser, filesystem, network, or serialization behavior

### 2. Structural Operations

Structural operations define how a shape is inspected, compared, updated, packed, or unpacked without side effects.

They may contain pure functions such as accessors, setters, equality checks, encoders, and decoders when those functions clarify the shape itself.

Examples:

- `Relation.hs`
- `Scope.hs`

Structural operations should remain:

- deterministic
- total where possible
- explicit about inputs and outputs
- free of IO
- free of runtime ownership assumptions

### 3. Adapters And Working Notes

Adapters connect the structural inventory to a particular notation, document format, runtime surface, or downstream tool.

Examples may include:

- JSON helpers
- Markdown helpers
- parser helpers
- archived runtime experiments

Adapters can be useful, but they do not define the canonical structural shape. They explain one way to carry or inspect the shape.

## Classification Rules

Classification comes before promotion.

Before adding a file to this folder, classify it as one of:

- Pure Shape
- Structural Operation
- Adapter
- Archive

A proposal is not a proof. A proof is not an implementation. An implementation is not a type. A projection is not validation. This folder should preserve those boundaries.

## Translation Rules

A translation is faithful when it preserves:

- field count
- constructor meaning
- null form
- equality meaning
- nesting structure
- deterministic interpretation
- relation between wrappers and wrapped values

A translation may change:

- syntax
- naming convention
- module layout
- target language
- memory representation, when the structural meaning is preserved and documented

## Current Reading Order

```text
Kernel.hs    smallest primitives
Core.hs      canonical wrappers around Relation
Relation.hs  field access, update, and equality
Scope.hs     scoped structural encoding
Canvas.hs    composed structural surface
```

Everything else should be read after those files, then classified by whether it is a pure shape, a structural operation, an adapter, or archived working material.

## Folder Invariant

```text
types expose shape
shape precedes runtime
runtime does not define the type
translation preserves structure
classification precedes promotion
adapters do not become the foundation
```
