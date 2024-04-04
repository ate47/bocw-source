// Atian COD Tools GSC CW decompiler test
#namespace footsteps;

// Namespace footsteps/footsteps_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xce121013, Offset: 0x80
// Size: 0x94
function missing_ai_footstep_callback() {
    /#
        type = self.archetype;
        aitype = self._aitype;
        if (!isdefined(type)) {
            type = "<unknown string>";
        }
        if (!isdefined(self._aitype)) {
            aitype = "<unknown string>";
        }
        println("<unknown string>" + type + "<unknown string>" + aitype + "<unknown string>");
    #/
}

// Namespace footsteps/footsteps_shared
// Params 2, eflags: 0x0
// Checksum 0x55c9a069, Offset: 0x120
// Size: 0x84
function registeraitypefootstepcb(archetype, callback) {
    if (!isdefined(level._footstepcbfuncs)) {
        level._footstepcbfuncs = [];
    }
    assert(!isdefined(level._footstepcbfuncs[archetype]), "<unknown string>" + archetype + "<unknown string>");
    level._footstepcbfuncs[archetype] = callback;
}

// Namespace footsteps/footsteps_shared
// Params 5, eflags: 0x2 linked
// Checksum 0x7db783cf, Offset: 0x1b0
// Size: 0xda
function playaifootstep(client_num, pos, surface, notetrack, bone) {
    if (!isdefined(self.archetype)) {
        println("<unknown string>");
        footstepdoeverything();
        return;
    }
    if (!isdefined(level._footstepcbfuncs) || !isdefined(level._footstepcbfuncs[self.archetype])) {
        self missing_ai_footstep_callback();
        footstepdoeverything();
        return;
    }
    [[ level._footstepcbfuncs[self.archetype] ]](client_num, pos, surface, notetrack, bone);
}

