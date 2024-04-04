// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_bgb.gsc;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace zm_bgb_newtonian_negation;

// Namespace zm_bgb_newtonian_negation/zm_bgb_newtonian_negation
// Params 0, eflags: 0x5
// Checksum 0xa09edf1c, Offset: 0xd0
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"zm_bgb_newtonian_negation", &preinit, undefined, undefined, #"bgb");
}

// Namespace zm_bgb_newtonian_negation/zm_bgb_newtonian_negation
// Params 0, eflags: 0x6 linked
// Checksum 0x535ba23c, Offset: 0x120
// Size: 0xcc
function private preinit() {
    if (!is_true(level.bgb_in_use) && !is_true(level.var_5470be1c)) {
        return;
    }
    clientfield::register("world", "newtonian_negation", 1, 1, "int");
    bgb::register(#"zm_bgb_newtonian_negation", "time", 1500, &enable, &disable, &validation);
}

// Namespace zm_bgb_newtonian_negation/zm_bgb_newtonian_negation
// Params 0, eflags: 0x2 linked
// Checksum 0x81c6a613, Offset: 0x1f8
// Size: 0x26
function validation() {
    if (is_true(level.var_6bbb45f9)) {
        return false;
    }
    return true;
}

// Namespace zm_bgb_newtonian_negation/zm_bgb_newtonian_negation
// Params 0, eflags: 0x2 linked
// Checksum 0x600af617, Offset: 0x228
// Size: 0x34
function enable() {
    function_8622e664(1);
    self thread function_4712db36();
}

// Namespace zm_bgb_newtonian_negation/zm_bgb_newtonian_negation
// Params 0, eflags: 0x2 linked
// Checksum 0x6ba61d27, Offset: 0x268
// Size: 0x3c
function function_4712db36() {
    self endon(#"hash_429f79a1bdb91087");
    self waittill(#"disconnect");
    thread disable();
}

// Namespace zm_bgb_newtonian_negation/zm_bgb_newtonian_negation
// Params 0, eflags: 0x2 linked
// Checksum 0xc847eb9c, Offset: 0x2b0
// Size: 0xd4
function disable() {
    if (isdefined(self)) {
        self notify(#"hash_429f79a1bdb91087");
    }
    foreach (player in level.players) {
        if (player !== self && player bgb::is_enabled(#"zm_bgb_newtonian_negation")) {
            return;
        }
    }
    function_8622e664(0);
}

// Namespace zm_bgb_newtonian_negation/zm_bgb_newtonian_negation
// Params 1, eflags: 0x2 linked
// Checksum 0xfa59f9ab, Offset: 0x390
// Size: 0x2c
function function_8622e664(var_b4666218) {
    level clientfield::set("newtonian_negation", var_b4666218);
}

