/* =========================================================================
 * sovereignty_session_check.c - C99 SESSION SYNTAX VERIFICATION HARNESS
 * ========================================================================= */
#include "sovereignty_session.h"

int main(void) {
    SovereigntyContext ctx = {0x1337133713371337ULL, 0x0000ULL};
    AuthorityGate gate = GATE_CONFIGURATIONS;

    uint64_t next_session = evaluate_session_authority(&ctx, 0xDEADBEEFDEADBEEFULL);

    return (gate == GATE_CONFIGURATIONS && next_session == ctx.active_session_axis) ? 0 : 1;
}
