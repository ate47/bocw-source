// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_audio.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\music_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_4ce4e65e;

// Namespace namespace_4ce4e65e/namespace_4ce4e65e
// Params 0, eflags: 0x2 linked
// Checksum 0xc83a804c, Offset: 0x140
// Size: 0x34
function init() {
    level.var_a353323e = &function_cb5a4b1a;
    level.var_ae2fe3bd = &function_613a7ccc;
}

// Namespace namespace_4ce4e65e/namespace_4ce4e65e
// Params 0, eflags: 0x2 linked
// Checksum 0x888bdd23, Offset: 0x180
// Size: 0x1c
function function_cb5a4b1a() {
    music::setmusicstate("common_exfil");
}

// Namespace namespace_4ce4e65e/namespace_4ce4e65e
// Params 1, eflags: 0x2 linked
// Checksum 0xb4256453, Offset: 0x1a8
// Size: 0x5c
function function_613a7ccc(b_success = 0) {
    if (b_success) {
        music::setmusicstate("common_exfil_success");
        return;
    }
    music::setmusicstate("common_exfil_fail");
}

// Namespace namespace_4ce4e65e/namespace_4ce4e65e
// Params 0, eflags: 0x2 linked
// Checksum 0x5a3072f9, Offset: 0x210
// Size: 0x1c
function function_4f292ffc() {
    wait(1);
    function_dd9efc4();
}

// Namespace namespace_4ce4e65e/namespace_4ce4e65e
// Params 0, eflags: 0x2 linked
// Checksum 0xb1812267, Offset: 0x238
// Size: 0x14
function function_453254ee() {
    function_c383014f();
}

// Namespace namespace_4ce4e65e/namespace_4ce4e65e
// Params 0, eflags: 0x2 linked
// Checksum 0xa586f467, Offset: 0x258
// Size: 0xd2
function function_dd9efc4() {
    if (!isdefined(level.var_8c5cb77b)) {
        level.var_8c5cb77b = ["assault_round_00", "assault_round_01", "assault_round_02"];
        level.var_8c5cb77b = array::randomize(level.var_8c5cb77b);
    }
    level.var_b8089dfc = array::pop_front(level.var_8c5cb77b);
    level thread zm_audio::function_b36aeaf6(level.var_b8089dfc);
    if (level.var_8c5cb77b.size == 0) {
        level.var_8c5cb77b = undefined;
    }
}

// Namespace namespace_4ce4e65e/namespace_4ce4e65e
// Params 0, eflags: 0x2 linked
// Checksum 0x2d97709c, Offset: 0x338
// Size: 0x34
function function_c383014f() {
    if (isdefined(level.var_b8089dfc)) {
        level thread zm_audio::function_2354b945(level.var_b8089dfc);
    }
}

