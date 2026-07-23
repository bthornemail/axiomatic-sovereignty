# AGENTS.md — Axiomatic Sovereignty Proof-Passing Contract

## 0. Mission

This repository is a public bootstrap for shared knowledge.

Every agent working here has one primary responsibility:

> Repair, compile, kernel-check, classify, document, and promote every Coq proof that can be made assumption-free without falsifying its statement.

The goal is not to preserve an archive as permanently inactive material. The goal is to move every repairable proof into active Coq authority while preserving its provenance and exact claim boundary.

## Layer 5 Standalone Session Harness

The local Layer 5 verification target is `make verify`. It checks the flat
hidden `.omi/` substrate, the Haskell session authority model, the C99
header-only adapter, exact file-count bounds, and the three visible docs
anchors.

The hidden registry directory `./.omi/` must remain completely flat with exactly
23 asset files and no internal subfolders. The visible root, six relation
folders, and `./docs/` are human-readable surfaces. Do not expand downstream
presentation tooling or user-facing observer spaces from this repository.

The active standalone session checks must preserve:

```text
six active truth gates: rules, facts, closures, combinators, constructs, configurations
gate dimensions: 0 through 5
deterministic session transform
current word context masked to 0xFFFF
```

Passing a proof means making the strongest statement currently supported by explicit definitions and closed proof terms. It never means hiding an unresolved obligation, weakening a theorem without documenting the change, or inflating a trivial proposition into a broad mathematical claim.

---

## 1. Repository Doctrine

This repository is:

- a public proof bootstrap;
- a zero-dependency reference for inspectable and reproducible claims;
- a five-layer encyclopedia of proofs, pure types, deterministic procedures, attested axioms, and social contracts;
- a foundation that may be cloned, forked, translated, taught, corrected, and adapted;
- a provenance-preserving commons where possession does not create ownership over the foundation.

This repository is not:

- a proprietary framework;
- a runtime, application server, or firmware repository;
- a centralized permission gate;
- an organization that absorbs contributors or forks;
- a claim over another person's mind, identity, knowledge, computation, or participation.

Agents MUST preserve this boundary in code, proofs, documentation, and commit messages.

---

## 2. Formal Source Registry

The active Coq source tree is a five-part proof ladder:

```text
coq/00-foundations/
  finite sets, proof status, arithmetic, vectors, truth tables,
  canonical names, primitive types, bounded encodings

coq/01-incidence/
  finite incidence, Miquel, Fano, Icosian, relational geometry

coq/02-closure/
  complexity bounds, algebraic closure, masks, rings, power gates

coq/03-projection/
  BQF bridges, metrics, Pi witnesses, E8, Weyl, Hopf projections

coq/04-execution/
  deterministic kernels, replay, periods, protocols, spatial steps,
  extraction boundaries, execution bridges
```

The archive is provenance:

```text
coq/_archive/
  historical drafts, incomplete developments, earlier terminology,
  failed proof shapes, and sources awaiting repair
```

The archive MUST NOT be deleted merely because an active counterpart exists.

A repaired archived basename MUST enter the active tree as its own independent canonical file. Do not merge, collapse, absorb, or silently rename promoted basenames.

---

## 3. Universal Promotion Law

Any Coq module is eligible for active promotion when all of the following hold:

```text
1. The source parses under the repository's declared Coq version.
2. The source compiles under the canonical logical root.
3. The active source contains no unresolved proof escape.
4. The generated object passes coqchk.
5. Dependencies are explicit and reproducible.
6. The theorem surface is indexed and documented.
7. Historical provenance is preserved.
8. The exact strength and limits of the proof are stated.
9. The active basename remains independent.
```

Canonical rule:

```text
assumption-free source
+ successful coqc compilation
+ successful coqchk validation
+ proof-book/index coverage
= active Coq authority
```

The active registry is cumulative and open-ended. A current module count is a milestone, not a permanent ceiling.

---

## 4. Forbidden Active Constructs

No active `.v` file may contain unresolved assumptions or proof escapes.

The strict forbidden set is:

```text
Admitted
admit
Axiom
Parameter
Conjecture
Abort
```

Repository policy may additionally forbid version-sensitive or deprecated constructs, including:

```text
Omega
omega
Fin.case_dep
stale rational/natural vector encodings
legacy OMNION naming
```

Agents MUST NOT:

- replace a failed theorem with an axiom;
- introduce a `Parameter` to bypass construction;
- hide an obligation in an imported active compatibility file;
- comment out the theorem and call the module repaired;
- change a proposition to `True` without recording that it is now an attestation rather than the original theorem;
- use extraction output as proof authority;
- treat tests, C code, Verilog, firmware, or runtime behavior as substitutes for a Coq theorem.

---

## 5. Canonical Compilation Environment

All active Coq compilation MUST preserve the canonical logical root:

```text
coqc -Q . OmiCore
```

Use the repository's exact Makefile and `_CoqProject` flags when they add category roots or artifact paths.

Generated artifacts belong under:

```text
artifacts/coq/
```

Do not leave generated files in `coq/`:

```text
*.vo
*.vos
*.vok
*.vio
*.glob
*.aux
*.ml
*.mli
```

Agents MUST keep source and generated proof objects separate.

---

## 6. Required Verification Commands

The standard acceptance sequence is:

```sh
make proof-registry-lock
make proof
make proof-strict
make proof-status
```

A strict pass MUST include:

```text
source manifest validation
forbidden-token scan
proof-book/index coverage
active module compilation
coqchk over generated proof objects
```

The final report MUST include the actual command exit status.

Do not report `proof-strict passed` merely because:

- focused modules compiled;
- compilation reached `coqchk`;
- `coqchk` produced no error yet;
- a background process was still running;
- source inspection found no forbidden tokens.

A complete pass requires the command to finish successfully with exit status `0`.

When local Coq is unavailable, jsCoq MAY be used for focused browser verification. However, jsCoq success does not replace the repository-wide Makefile, manifest, artifact, and `coqchk` checks unless the project explicitly defines an equivalent reproducible jsCoq registry pipeline.

---

## 7. Proof-Passing Workflow

For every failing or archived module, agents MUST follow this order.

### Step 1 — Preserve the original

- Keep the archived source unchanged when possible.
- Record its source path and active destination in `coq-docs/ARCHIVE-PROMOTION-MAP.md`.
- Preserve historical theorem names in migration notes when names must change.

### Step 2 — Read the exact claim

Identify:

```text
objects
definitions
theorems
imports
open assumptions
version-specific constructs
intended mathematical claim
actual proposition currently written
```

Do not repair from filename alone.

### Step 3 — Classify the failure

Typical failure classes:

```text
syntax drift
module/import drift
scope ambiguity
notation ambiguity
type mismatch
nat/N/Z/Q/R mismatch
vector/list namespace collision
obsolete tactic
slow or nonterminating proof search
missing finite enumeration lemma
invalid theorem statement
hidden assumption
unproved mathematical interpretation
```

### Step 4 — Repair definitions before tactics

Prefer fixing the model rather than forcing a tactic through a malformed statement.

Examples:

- make numeric scopes explicit with `%nat`, `%N`, `%Z`, or `%Q`;
- qualify `List.In`, `List.cons`, `Vector.t`, and other ambiguous names;
- replace legacy modulo-width models with explicit bitmasks where canon requires it;
- separate a total numerator identity from a partial quotient definition;
- define a finite enumeration before proving its cardinality;
- define an abstract cost model before claiming constant parallel depth.

### Step 5 — Prove small lemmas first

Build from narrow facts:

```text
bounds
normalization
constructor equations
finite counts
membership facts
round trips
preservation lemmas
single-step determinism
```

Then prove the exported theorem.

### Step 6 — Use the smallest adequate tactic

Preferred order:

```text
reflexivity
exact
assumption
destruct / induction
simpl / cbn
rewrite
lia / nia
ring / ring_nf
field
lra / nra
vm_compute
native_compute, only when supported and reproducible
```

Avoid broad automation when an explicit finite proof is clearer and faster.

### Step 7 — Run focused compilation

Compile the repaired module by itself into `artifacts/coq/` using the same logical roots as the full build.

### Step 8 — Update manifests and proof documentation

Every promoted module MUST be added to all applicable surfaces:

```text
_CoqProject
Makefile active module list and compile chain
coq/README.md
coq-docs/PROOF-INDEX.md
coq-docs/OMI-DETERMINISTIC-COMPUTATION-PROOF-BOOK.md
coq-docs/ARCHIVE-PROMOTION-MAP.md
SKILLS.md or agent policy when operational rules change
```

### Step 9 — Run the complete strict chain

A focused pass is not enough. Run all registry checks and `coqchk`.

### Step 10 — Report the exact result

State:

```text
what compiled
what coqchk accepted
which theorem names are active
what was weakened or renamed
what remains unproved
what the next strengthening target is
```

---

## 8. Repair Policy: Never Overclaim

A Coq file proves exactly the propositions accepted by the kernel.

Compilation does not automatically prove:

- every interpretation suggested by the filename;
- hardware realization;
- asymptotic runtime on physical machines;
- source authenticity or cryptographic security;
- universal mathematical claims absent from the theorem statement;
- equivalence between a model and an external physical theory.

Agents MUST distinguish:

```text
proved
implemented
defined_model
interpretation
```

Agents SHOULD additionally classify active proof strength:

```text
Class A — Constructive theorem
  a substantive proposition is formally proved

Class B — Executable invariant
  behavior of a deterministic function is proved

Class C — Finite witness
  a table, count, enumeration, or exhaustive predicate is proved

Class D — Typed definition
  a type/function compiles, but behavioral theorems remain open

Class E — Attestation or registry witness
  a closed proposition such as True records ownership, naming, or registry presence
```

A Class-E module is active and valid, but MUST NOT be described as a proof of the full mathematical subject named by the file.

---

## 9. Statement Repair Rules

When the original theorem cannot be proved as written, agents MUST choose one of these lawful paths.

### Path A — Complete the original proof

Use when the proposition is true and the missing lemmas can be supplied.

### Path B — Correct the proposition

Use when the historical statement is false, ill-typed, too broad, or uses an undefined interpretation.

Requirements:

- preserve the old statement in provenance notes;
- explain the correction;
- prove the corrected theorem;
- record the difference in the proof book.

### Path C — Split the proposition

Separate a broad claim into smaller closed theorems.

Example:

```text
finite count
norm preservation
NoDup
disjointness
bijection
implementation refinement
```

Each should be proved independently.

### Path D — Promote a typed or attested surface

Use when a module can be made assumption-free but its intended substantive theorem is not yet available.

The module may become active as Class D or E, provided documentation clearly lists the missing strengthening theorems.

### Forbidden path — Silent weakening

Never silently replace:

```coq
Theorem deep_claim : DeepProperty.
```

with:

```coq
Definition deep_claim_owner : Prop := True.
Definition deep_claim_proof : deep_claim_owner := I.
```

and then describe the original `DeepProperty` as proved.

That replacement is allowed only as an explicitly classified attestation surface with the original theorem still listed as open.

---

## 10. Archive Promotion Rules

Every archive promotion MUST satisfy:

```text
1. independent active basename
2. no unresolved assumptions
3. current nomenclature
4. current Coq compatibility
5. exact dependency placement
6. focused compilation
7. full strict compilation
8. coqchk acceptance
9. proof-book/index entry
10. promotion-map entry
11. exact proof-strength class
12. explicit remaining obligations
```

Do not merge multiple archived basenames into one aggregate active module merely to reduce the file count.

Do not delete archive provenance after promotion.

Do not cite the archived file as active authority when an active counterpart exists.

---

## 11. Layering and Dependency Discipline

Dependencies SHOULD flow from lower conceptual layers toward higher ones:

```text
00-foundations
  ↓
01-incidence
  ↓
02-closure
  ↓
03-projection
  ↓
04-execution
```

Avoid cycles between active layers.

Execution modules may import proven foundations and projections. Foundations MUST NOT depend on execution modules.

When a proof claims homological structure, expose the relevant objects explicitly:

```text
objects
boundary map
composition law
d² = 0
Ker(d)
Im(d)
quotient or canonical representative
```

Do not use homology or cohomology terminology as metaphor inside active proof authority without formal definitions supporting it.

---

## 12. Canonization and Authority Boundary

Proof canonizes admissible structure. It does not accept runtime state.

Canonical authority separation:

```text
Proof canonizes deterministic structure.
Validation determines accepted state.
Omi-Attestation witnesses accepted transition.
Accepted Omi-State may be recorded.
Projection displays accepted relation state.
```

Agents MUST NOT write documentation implying:

```text
Proof accepts state.
Coq replaces validation.
Projection creates authority.
A passing theorem grants ownership.
```

---

## 13. Public Provenance Contract

When carrying knowledge forward:

1. preserve authorship and source provenance;
2. mark meaningful deltas;
3. state corrected historical claims explicitly;
4. keep failures and limitations visible;
5. permit cloning, forking, translation, teaching, and adaptation;
6. do not use repository possession as a claim of ownership over the foundation;
7. return corrections, consequences, translations, or improvements where useful.

Agents MUST treat contributors and forks as sovereign participants, not subordinate copies.

---

## 14. Documentation Required for Every Active Module

Every active module MUST have an index record containing:

```text
Claim ID
Canonical filename
Active layer
Source provenance
Proof-strength class
Status
Formal statement
Exported definitions
Exported theorems
Dependencies
Allowed use
Forbidden use
Failure boundary
Compile result
coqchk result
Promotion path
Next strengthening target
```

The readable proof book is not decorative. It is part of the acceptance boundary.

---

## 15. Status Reporting Template

After a proof pass, agents SHOULD report:

```text
MODULE:
  coq/<layer>/<Name>.v

PROVENANCE:
  coq/_archive/<path>/<Name>.v
  or new active development

STATUS:
  promoted / repaired / strengthened / unchanged

PROOF CLASS:
  A / B / C / D / E

ACTIVE THEOREMS:
  theorem_name_1
  theorem_name_2

FOCUSED COMPILE:
  command
  exit status

STRICT BUILD:
  make proof-registry-lock: PASS/FAIL
  make proof: PASS/FAIL
  make proof-strict: PASS/FAIL
  make proof-status: PASS/FAIL
  coqchk: PASS/FAIL

FORBIDDEN ACTIVE TOKENS:
  0

CORRECTED CLAIMS:
  exact before/after statement

REMAINING OBLIGATIONS:
  precise theorem targets
```

Never replace missing results with celebratory language.

---

## 16. Current OMINO Canonical Names

Use:

```text
OMINO
computed_omino
overall_mismatch
[LOGOS NOMOS FS PATHOS GS RS US OMINO]
OminoParallelSpatialScaling
E8RootsEnumerate240
PowerClosureGate
```

Do not restore `OMNION` naming.

When repairing historical files, preserve old terminology only in provenance notes or migration comments.

---

## 17. Current Proof Boundaries

Agents MUST preserve these examples of exact claim discipline.

### OMINO SECDED

Prove separately:

```text
bit map
syndrome bounds
result-code classification
single-bit restoration
OMINO-bit restoration
double-error detection
no silent correction of double errors
```

Definitions alone do not establish all correction theorems.

### Power Closure

Prove the total numerator identity independently of division:

```text
(64x-64)(32x-32)(16x-16)(8x-8)(4x-4)(2x-2)(x-1)
=
2^21 (x-1)^7
```

Treat `x = 0` as an excluded denominator boundary. Do not evaluate undefined division.

### E8 enumeration

Separate:

```text
112 type-1 count
128 type-2 count
240 combined count
norm-two membership
NoDup
disjointness
Fin 240 bijection
Local240 indexing
root-operation refinement
```

Do not claim a bijection merely from a list length theorem.

### Parallel spatial scaling

A theorem over an explicitly supplied parallel substrate may prove a constant abstract step descriptor independent of `n`.

It does not automatically prove:

```text
constant Gallina evaluation cost
constant C runtime
constant hardware delay
free substrate construction
free interconnect
global P = NP
```

State the cost model explicitly.

---

## 18. Agent Behavior During Long Proof Repairs

Agents MUST:

- show the first concrete proof failure as soon as it is known;
- distinguish source errors, theorem errors, manifest errors, proof-book errors, and `coqchk` errors;
- repair the proof surface rather than weakening it with assumptions;
- use focused compilation before rerunning the full suite;
- keep the user informed at meaningful milestones;
- finish the current pass in the current session as far as tools permit;
- report partial completion honestly when the full kernel check cannot be completed.

Agents MUST NOT:

- claim background work will finish later;
- report a running checker as passed;
- hide interrupted builds;
- invent file paths, theorem names, or exit statuses;
- call a trivial owner proof a completed deep theorem.

---

## 19. Definition of Done

A proof repair or promotion is complete only when:

```text
[ ] active source exists in the correct layer
[ ] archive provenance is preserved
[ ] basename remains independent
[ ] forbidden active constructs are absent
[ ] focused coqc compilation passes
[ ] manifests are updated
[ ] proof book is updated
[ ] proof index is updated
[ ] promotion map is updated
[ ] full active registry compiles
[ ] coqchk passes
[ ] final command exit status is 0
[ ] proof-strength class is recorded
[ ] exact theorem boundary is documented
[ ] next strengthening obligations are listed
```

Anything less is progress, not completion.

---

## 20. Canonical Lock (Proof Registry)

```text
PASS EVERY REPAIRABLE PROOF.

Do not preserve failure merely because it is old.
Do not erase provenance merely because a repair succeeds.
Do not hide assumptions merely to make a file compile.
Do not merge independent promoted basenames.
Do not overstate what the kernel accepted.

Every assumption-free, compiled, kernel-checked, indexed module may enter
active Coq authority.

Every active theorem must be described by its exact proposition.
Every active definition must expose its current proof strength.
Every unresolved claim must remain visible as a strengthening target.

The archive preserves the journey.
The active registry preserves what has passed.
Axiomatic Sovereignty preserves the right of every person to inspect,
reproduce, fork, translate, correct, and extend the shared foundation.
```

---

## 21. Six-Part Relational Authority

The repository is organized by six-part relational authority, not by
narrative categories.

```text
RULES
  node        hypotenuse   0-sphere

FACTS
  edge        circle       sphere

CLOSURES
  graph       triangle     tetrahedron

COMBINATORS
  incidence   square       cube

CONSTRUCTS
  multigraph  pentagon     tesseract

CONFIGURATIONS
  hypergraph  hexagon      composed topology
```

Canonical sequence:

```text
rules -> facts -> closures -> combinators -> constructs -> configurations
```

Each form defines public relational authority:

```text
rules        declare the lawful nodes from which construction may begin
facts        establish the edges connecting declared nodes
closures     establish complete graph boundaries
combinators  establish incidences among closed graph forms
constructs   preserve multiple lawful graph relations concurrently
configurations  assemble complete hypergraph environments
```

---

## 22. Five-Part Reusable Foundation

The reusable foundation is the five-stage geometric substrate carried by
the first five relational authorities.

```text
RULES        node       0-sphere        invariant and obligation surface
FACTS        edge       sphere          observable relation surface
CLOSURES     graph      tetrahedron     bounded completion surface
COMBINATORS  incidence  cube            lawful composition surface
CONSTRUCTS   multigraph tesseract       simultaneous relational memory
```

The five-part foundation is reusable. The six-part authority extends it
by adding configurations.

```text
FIVE-PART FOUNDATION:  rules, facts, closures, combinators, constructs
SIX-PART AUTHORITY:    rules, facts, closures, combinators, constructs,
                       configurations
```

Configurations assembles the reusable substrates into a public hypergraph
configuration. It does not replace the foundation.

---

## 23. 17-Tier Master Matrix

The repository aligns with the 17-Tier Master Cosmological Matrix:

```text
+8 CONTRACTS      Behavioral specification agreements / AAL invariants
+7 ALGORITHMS     Branchless O(1) state transformation procedures
+6 PROOFS         64-module active admit-free Coq proof book
+5 AXIOMS         First-principles foundational assertions
+4 TYPES          Fixed-width classification and custody bounds
+3 SEMANTICS      Meaning assignments mapped to designated domains
+2 DOMAINS        Bounded universes and n=6 truth-table surfaces
+1 SYNTAX         Rules for well-formed bit formulas
 0 SYMBOLS        OMINO raw tokens / OMINO Centroid at 0x00 / 0 degrees
-1 RULES          Point / Node / Hypotenuse / 0-Sphere
-2 FACTS          Line / Edge / Circle / Sphere
-3 CLOSURES       Triangle / Graph / Plane / Tetrahedron
-4 COMBINATORS    Square / Incidence / Volume / Cube
-5 CONS           Pentagon / Multigraph / Solid / Tesseract
-6 CONFIGURATIONS Hexagon / Hypergraph / Topology / Hyper-Volume
-7 CLAUSES        Fano Plane / [7,4,3] SEC / Meta-Cons / .omi-.imo carriers
-8 MODULES        Octagon / Octonion / COBS-CONS / hidden .o executables
```

The Matrix is a routing contract, not permission to leak dependencies.
Visible Markdown may carry YAML front matter linking to hidden targets.
Hidden `.o`/`.omi`/`.imo` tree is under `./.omi/`.

---

## 24. Concentric OSI Stratum

The repository operates as Layer 5 (Session) in the concentric OSI stratum:

```text
Layer  7  Application       metaverse-kit / metaverse-build
Layer  6  Presentation      mind-git / mind-git-vr-ecosystem
Layer  5  Session           axiomatic-sovereignty    <-- THIS REPOSITORY
Layer  4  Transport         setco-framework-model
Layer  3  Network           omnicron-epistemic-model
Layer  2  Data Link         omi-object-model
Layer  1  Physical          emergent-axial-lisp
Layer  0  Substrate Core    omino-tensor-model
Layer -1  Cognitive Origin  god-is-word
```

Each layer is autonomous. Communication between layers approaches from
the outside in. `.omi`, `.imo`, `.o` surfaces are the declared transitions.
No dependency leakage across repository boundaries.

---

## 25. Machine-Readable Substrate

All machine-readable files reside inside the hidden `.omi/` directory
at the repository root. The visible workspace is reserved for
human-readable Markdown.

```text
.omi/
  rules.{omi,imo,o}
  facts.{omi,imo,o}
  closures.{omi,imo,o}
  combinators.{omi,imo,o}
  constructs.{omi,imo,o}
  configurations.{omi,imo,o}
  clauses.{omi,imo}
  modules.o
```

21 files, flat, no nesting. The `.omi/` directory must be allowed by
`.gitignore` (the `*.o` exception must be present).

---

## 26. Canonical Lock (Repository Geometry)

```text
The five-part reusable foundation is:

  node        : rules          : 0-sphere
  edge        : facts          : sphere
  graph       : closures       : tetrahedron
  incidence   : combinators    : cube
  multigraph  : constructs     : tesseract

The six-part relational authority is:

  node        : rules          : hypotenuse
  edge        : facts          : circle
  graph       : closures       : triangle
  incidence   : combinators    : square
  multigraph  : constructs     : pentagon
  hypergraph  : configurations : hexagon

Configurations extends the five-part foundation.
It does not replace it.

The repository is organized by relational and geometric authority,
not by who/what/when/where/why/how narrative categories.

The 17-Tier Master Matrix aligns all layers from -8 to +8.
The concentric OSI stratum maps each project to its autonomous layer.
The machine-readable substrate lives flat inside .omi/.
The proof registry is separate and must remain admission-free.
```
