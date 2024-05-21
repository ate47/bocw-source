// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using script_1fa63e6c62e170a3;
#using scripts\cp_common\util.gsc;
#using scripts\core_common\load_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace districts;

// Namespace districts/districts
// Params 0, eflags: 0x5
// Checksum 0x29b09891, Offset: 0xf8
// Size: 0x34
function private autoexec __init__system__() {
    system::register("cp_districts_system", &preinit, undefined, undefined, undefined);
}

// Namespace districts/districts
// Params 0, eflags: 0x6 linked
// Checksum 0x2ff4a8b, Offset: 0x138
// Size: 0x44
function private preinit() {
    clientfield::register("world", "district_bitfield", 1, 20, "int");
    namespace_aff1f617::function_41e5864f();
}

// Namespace districts/districts
// Params 2, eflags: 0x2 linked
// Checksum 0xf3080150, Offset: 0x188
// Size: 0x154
function function_a7d79fcb(names, exclusive = 0) {
    if (!isdefined(names)) {
        names = [];
    } else if (!isarray(names)) {
        names = array(names);
    }
    var_8f63b4bd = level.var_59cd6d34.var_cd7d2e9f;
    if (exclusive) {
        var_8f63b4bd = 0;
    }
    foreach (name in names) {
        bit = function_da432d39(name);
        if (bit >= 0) {
            var_8f63b4bd |= 1 << bit;
        }
    }
    level function_1e34097d(var_8f63b4bd);
}

// Namespace districts/districts
// Params 2, eflags: 0x0
// Checksum 0xed81ba20, Offset: 0x2e8
// Size: 0x16c
function function_930f8c81(names, exclusive = 0) {
    if (!isdefined(names)) {
        names = [];
    } else if (!isarray(names)) {
        names = array(names);
    }
    var_8f63b4bd = level.var_59cd6d34.var_cd7d2e9f;
    if (exclusive) {
        var_8f63b4bd = 1048575;
    }
    foreach (name in names) {
        bit = function_da432d39(name);
        if (bit >= 0) {
            mask = ~(1 << bit);
            var_8f63b4bd &= mask;
        }
    }
    level function_1e34097d(var_8f63b4bd);
}

// Namespace districts/districts
// Params 1, eflags: 0x6 linked
// Checksum 0xca8ec559, Offset: 0x460
// Size: 0x42
function private function_da432d39(name) {
    index = level.var_59cd6d34.var_2844be06[name];
    if (isdefined(index)) {
        return index;
    }
    return -1;
}

// Namespace districts/districts
// Params 1, eflags: 0x6 linked
// Checksum 0x8cdcbefe, Offset: 0x4b0
// Size: 0x74
function private function_1e34097d(var_8f63b4bd) {
    assert(var_8f63b4bd < 1048576);
    level.var_59cd6d34.var_cd7d2e9f = var_8f63b4bd;
    level clientfield::set("district_bitfield", level.var_59cd6d34.var_cd7d2e9f);
}

