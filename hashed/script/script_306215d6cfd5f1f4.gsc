// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\territory.gsc;

#namespace namespace_99c84a33;

// Namespace namespace_99c84a33/namespace_99c84a33
// Params 3, eflags: 0x0
// Checksum 0x6d1ac5a5, Offset: 0x98
// Size: 0xa4
function function_99652b58(name, index, team = #"none") {
    cameras = territory::function_1f583d2e(name, "targetname");
    if (cameras.size) {
        addobjectivecamerapoint(name, index, team, cameras[0].origin, cameras[0].angles);
        return true;
    }
    return false;
}

// Namespace namespace_99c84a33/namespace_99c84a33
// Params 5, eflags: 0x0
// Checksum 0xbe2d14b7, Offset: 0x148
// Size: 0x64
function function_67b65e2a(name, index, team, origin, angles) {
    addobjectivecamerapoint(name, index, team, origin, angles);
    function_e795803(name, 1);
}

// Namespace namespace_99c84a33/namespace_99c84a33
// Params 1, eflags: 0x2 linked
// Checksum 0x9db640e8, Offset: 0x1b8
// Size: 0x34
function function_99c84a33(index) {
    self.spectatorclient = -1;
    self function_eccd0b1c(index);
}

