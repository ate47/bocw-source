// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace namespace_b574e135;

// Namespace namespace_b574e135/namespace_b574e135
// Params 0, eflags: 0x2 linked
// Checksum 0x82dc5bb8, Offset: 0xb0
// Size: 0x184
function init() {
    clientfield::register("world", "" + #"hash_11f590eba265ab9e", 24000, 4, "int");
    clientfield::register("world", "" + #"hash_3227b9d6476c5f3b", 24000, 1, "int");
    clientfield::register("world", "" + #"hash_5d84af8c16684d61", 24000, 1, "int");
    clientfield::register("world", "" + #"hash_17dd998c0d1ddef9", 24000, 2, "int");
    clientfield::register("world", "" + #"hash_6e50c5223648d97", 24000, 1, "int");
    clientfield::register("world", "" + #"hash_2c8008207dc4c591", 24000, 1, "int");
}

// Namespace namespace_b574e135/namespace_b574e135
// Params 1, eflags: 0x2 linked
// Checksum 0xc822ef77, Offset: 0x240
// Size: 0x54
function function_f5d0eb85(state) {
    level endon(#"end_game");
    level clientfield::set("" + #"hash_11f590eba265ab9e", state);
}

// Namespace namespace_b574e135/namespace_b574e135
// Params 1, eflags: 0x2 linked
// Checksum 0xcf8f1b46, Offset: 0x2a0
// Size: 0x54
function function_d508d5d8(state) {
    level endon(#"end_game");
    level clientfield::set("" + #"hash_3227b9d6476c5f3b", state);
}

// Namespace namespace_b574e135/namespace_b574e135
// Params 1, eflags: 0x2 linked
// Checksum 0x187c0251, Offset: 0x300
// Size: 0x54
function function_4b599595(state) {
    level endon(#"end_game");
    level clientfield::set("" + #"hash_5d84af8c16684d61", state);
}

// Namespace namespace_b574e135/namespace_b574e135
// Params 1, eflags: 0x2 linked
// Checksum 0x703874ee, Offset: 0x360
// Size: 0x54
function function_471f4c0f(state) {
    level endon(#"end_game");
    level clientfield::set("" + #"hash_17dd998c0d1ddef9", state);
}

// Namespace namespace_b574e135/namespace_b574e135
// Params 1, eflags: 0x2 linked
// Checksum 0xe874792b, Offset: 0x3c0
// Size: 0x54
function function_278866ab(state) {
    level endon(#"end_game");
    level clientfield::set("" + #"hash_6e50c5223648d97", state);
}

// Namespace namespace_b574e135/namespace_b574e135
// Params 1, eflags: 0x2 linked
// Checksum 0x372c1881, Offset: 0x420
// Size: 0x54
function function_8d857888(state) {
    level endon(#"end_game");
    level clientfield::set("" + #"hash_2c8008207dc4c591", state);
}

