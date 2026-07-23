---
omino-centroid: "0x00"
omino-azimuth: "0°"
geometric-stratum: "+7: ALGORITHMS"
session-transform: "evaluateSessionAuthority"
substrate-targets:
  declarations: "../.omi/combinators.omi"
  definitions: "../.omi/SovereigntyModelCheck.hs"
  binary: "../.omi/sovereignty_session_check.c"
---
# Session Transform - Deterministic Authority Step

The local session transform derives the next authority coordinate from a
fixed-width context and inbound token. The result updates the active session
axis and masks the current word context to the lower 16 bits.

The C99 adapter mirrors the same operation as a header-only syntax target.
