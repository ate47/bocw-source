// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace namespace_8dac58da;

// Namespace namespace_8dac58da/namespace_8dac58da
// Params 0, eflags: 0x2 linked
// Checksum 0xc742e586, Offset: 0xb8
// Size: 0x15c
function init() {
    clientfield::register("world", "" + #"hash_5a41b1632428880c", 1, 1, "int");
    clientfield::register("world", "" + #"hash_22f0944e4bd4dea9", 1, 1, "int");
    clientfield::register("world", "" + #"hash_c9774e0d25f882a", 1, 1, "int");
    clientfield::register("world", "" + #"hash_21e00c65edc6594c", 1, 1, "int");
    clientfield::register("world", "" + #"hash_249ac6ef9989bee4", 1, 1, "int");
    level thread function_d20f5e48();
}

// Namespace namespace_8dac58da/namespace_8dac58da
// Params 1, eflags: 0x2 linked
// Checksum 0x1c021f48, Offset: 0x220
// Size: 0x84
function function_a7e6c47e(state) {
    if (state) {
        level clientfield::set("" + #"hash_21e00c65edc6594c", 1);
        return;
    }
    level clientfield::set("" + #"hash_21e00c65edc6594c", 0);
}

// Namespace namespace_8dac58da/namespace_8dac58da
// Params 1, eflags: 0x2 linked
// Checksum 0xa7ab5b27, Offset: 0x2b0
// Size: 0x1ea
function function_1a3aacac(state) {
    level endon(#"end_game");
    switch (state) {
    case 1:
        level clientfield::set("" + #"hash_5a41b1632428880c", 1);
        break;
    case 2:
        level clientfield::set("" + #"hash_22f0944e4bd4dea9", 1);
        break;
    case 3:
        level clientfield::set("" + #"hash_c9774e0d25f882a", 1);
        break;
    case 4:
        level clientfield::set("" + #"hash_5a41b1632428880c", 0);
        break;
    case 5:
        level clientfield::set("" + #"hash_22f0944e4bd4dea9", 0);
        break;
    case 6:
        level clientfield::set("" + #"hash_c9774e0d25f882a", 0);
        break;
    }
}

// Namespace namespace_8dac58da/namespace_8dac58da
// Params 0, eflags: 0x2 linked
// Checksum 0xcee6652a, Offset: 0x4a8
// Size: 0xc8
function function_d20f5e48() {
    level endon(#"end_game");
    while (true) {
        level flag::wait_till("power_on");
        level clientfield::set("" + #"hash_249ac6ef9989bee4", 1);
        level flag::wait_till_clear("power_on");
        level clientfield::set("" + #"hash_249ac6ef9989bee4", 0);
    }
}

