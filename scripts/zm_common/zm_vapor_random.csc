// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\array_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\struct.csc;

#namespace zm_vapor_random;

// Namespace zm_vapor_random/zm_vapor_random
// Params 0, eflags: 0x5
// Checksum 0x59b6988a, Offset: 0x118
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_vapor_random", &preinit, undefined, undefined, undefined);
}

// Namespace zm_vapor_random/zm_vapor_random
// Params 0, eflags: 0x4
// Checksum 0x6065711d, Offset: 0x160
// Size: 0x6c
function private preinit() {
    clientfield::register("scriptmover", "random_vapor_altar_available", 1, 1, "int", &random_vapor_altar_available_fx, 0, 0);
    level._effect[#"random_vapor_altar_available"] = "zombie/fx_powerup_on_green_zmb";
}

// Namespace zm_vapor_random/zm_vapor_random
// Params 7, eflags: 0x0
// Checksum 0x67ab6d83, Offset: 0x1d8
// Size: 0xcc
function random_vapor_altar_available_fx(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        if (!isdefined(self.var_476bef54)) {
            self.var_476bef54 = util::playfxontag(fieldname, level._effect[#"random_vapor_altar_available"], self, "tag_origin");
        }
        return;
    }
    if (isdefined(self.var_476bef54)) {
        stopfx(fieldname, self.var_476bef54);
    }
}

