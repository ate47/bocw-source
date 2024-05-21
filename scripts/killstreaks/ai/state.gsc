// Atian COD Tools GSC CW decompiler test
#namespace ai_state;

// Namespace ai_state/state
// Params 8, eflags: 0x0
// Checksum 0x76f1ac4, Offset: 0x80
// Size: 0xd4
function function_e9b061a8(state, start, update_goal, end, update_enemy, var_edc20efd, var_ff716a93, update_debug) {
    level.extra_screen_electricity_.functions[state] = {#start:start, #update_goal:update_goal, #end:end, #update_enemy:update_enemy, #var_edc20efd:var_edc20efd, #var_ff716a93:var_ff716a93, #update_debug:update_debug};
}

// Namespace ai_state/state
// Params 0, eflags: 0x0
// Checksum 0xe5e66db0, Offset: 0x160
// Size: 0x78
function callback_start() {
    if (isdefined(self.ai.state) && isdefined(level.extra_screen_electricity_.functions[self.ai.state].start)) {
        self thread [[ level.extra_screen_electricity_.functions[self.ai.state].start ]]();
    }
}

// Namespace ai_state/state
// Params 0, eflags: 0x0
// Checksum 0x41a0f48, Offset: 0x1e0
// Size: 0x78
function callback_end() {
    if (isdefined(self.ai.state) && isdefined(level.extra_screen_electricity_.functions[self.ai.state].end)) {
        self thread [[ level.extra_screen_electricity_.functions[self.ai.state].end ]]();
    }
}

// Namespace ai_state/state
// Params 0, eflags: 0x0
// Checksum 0x6c3c9596, Offset: 0x260
// Size: 0x78
function function_e8e7cf45() {
    if (isdefined(self.ai.state) && isdefined(level.extra_screen_electricity_.functions[self.ai.state].update_goal)) {
        self [[ level.extra_screen_electricity_.functions[self.ai.state].update_goal ]]();
    }
}

// Namespace ai_state/state
// Params 0, eflags: 0x0
// Checksum 0xa76a61cb, Offset: 0x2e0
// Size: 0x78
function function_e0e1a7fc() {
    if (isdefined(self.ai.state) && isdefined(level.extra_screen_electricity_.functions[self.ai.state].update_enemy)) {
        self [[ level.extra_screen_electricity_.functions[self.ai.state].update_enemy ]]();
    }
}

// Namespace ai_state/state
// Params 0, eflags: 0x0
// Checksum 0x60aed796, Offset: 0x360
// Size: 0x7a
function function_4af1ff64() {
    if (isdefined(self.ai.state) && isdefined(level.extra_screen_electricity_.functions[self.ai.state].var_edc20efd)) {
        return self [[ level.extra_screen_electricity_.functions[self.ai.state].var_edc20efd ]]();
    }
    return 0;
}

// Namespace ai_state/state
// Params 0, eflags: 0x0
// Checksum 0xef747d63, Offset: 0x3e8
// Size: 0x7a
function function_a78474f2() {
    if (isdefined(self.ai.state) && isdefined(level.extra_screen_electricity_.functions[self.ai.state].var_ff716a93)) {
        return self [[ level.extra_screen_electricity_.functions[self.ai.state].var_ff716a93 ]]();
    }
    return undefined;
}

// Namespace ai_state/state
// Params 1, eflags: 0x0
// Checksum 0x8cf585cb, Offset: 0x470
// Size: 0xe4
function set_state(state) {
    if (!isdefined(self.ai)) {
        self.ai = {#state:undefined};
    }
    if (!isdefined(self.ai.state) || self.ai.state != state) {
        if (isdefined(self.ai.state)) {
            callback_end();
        }
        self.ai.state = state;
        callback_start();
        self notify(#"state_changed", state);
        /#
            self thread function_3a57bb58();
        #/
    }
}

// Namespace ai_state/state
// Params 1, eflags: 0x0
// Checksum 0x82338207, Offset: 0x560
// Size: 0x20
function is_state(state) {
    return self.ai.state === state;
}

/#

    // Namespace ai_state/state
    // Params 0, eflags: 0x0
    // Checksum 0xbeef84fa, Offset: 0x588
    // Size: 0x64
    function function_c1d2ede8() {
        if (isdefined(level.extra_screen_electricity_.functions[self.ai.state].update_debug)) {
            self [[ level.extra_screen_electricity_.functions[self.ai.state].update_debug ]]();
        }
    }

    // Namespace ai_state/state
    // Params 0, eflags: 0x0
    // Checksum 0x1ed16193, Offset: 0x5f8
    // Size: 0x5e
    function function_3a57bb58() {
        self notify("<unknown string>");
        self endon("<unknown string>");
        self endon(#"death");
        while (true) {
            self function_c1d2ede8();
            waitframe(1);
        }
    }

#/
