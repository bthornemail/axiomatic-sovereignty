/* =========================================================================
 * sovereignty_session.h - BARE-METAL C99 SESSION INTERFACE
 * ========================================================================= */
#ifndef SOVEREIGNTY_SESSION_H
#define SOVEREIGNTY_SESSION_H

#include <stdint.h>

#define SOVEREIGNTY_WORD_MASK_16    0xFFFFU
#define SOVEREIGNTY_GRID_SCALE_4320 4320ULL
#define SOVEREIGNTY_METATRON_RAIL   0x1D1D1D1D1D1D1D1DULL

typedef enum {
    GATE_RULES = 0,
    GATE_FACTS = 1,
    GATE_CLOSURES = 2,
    GATE_COMBINATORS = 3,
    GATE_CONSTRUCTS = 4,
    GATE_CONFIGURATIONS = 5
} AuthorityGate;

typedef struct {
    uint64_t active_session_axis;
    uint64_t current_word_context;
} SovereigntyContext;

static inline uint64_t sovereignty_rol64(uint64_t val, unsigned int shift) {
    return (val << shift) | (val >> (64U - shift));
}

static inline uint64_t sovereignty_ror64(uint64_t val, unsigned int shift) {
    return (val >> shift) | (val << (64U - shift));
}

static inline uint64_t evaluate_session_authority(SovereigntyContext *ctx, uint64_t inbound_token) {
    uint64_t base_4320 = inbound_token % SOVEREIGNTY_GRID_SCALE_4320;
    uint64_t surface_4320_2 = base_4320 * SOVEREIGNTY_GRID_SCALE_4320;
    uint64_t horizon_4320_4 = surface_4320_2 * SOVEREIGNTY_GRID_SCALE_4320 * SOVEREIGNTY_GRID_SCALE_4320;

    uint64_t left_torque = sovereignty_rol64(inbound_token, 1U);
    uint64_t right_torque = sovereignty_ror64(ctx->active_session_axis, 2U);
    uint64_t blended = left_torque ^ right_torque ^ horizon_4320_4;

    uint64_t next_coordinate = blended ^ SOVEREIGNTY_METATRON_RAIL;

    ctx->active_session_axis = next_coordinate;
    ctx->current_word_context = next_coordinate & SOVEREIGNTY_WORD_MASK_16;

    return next_coordinate;
}

#endif /* SOVEREIGNTY_SESSION_H */
