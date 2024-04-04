// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\vehicle_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace player_heavy_helicopter;

// Namespace player_heavy_helicopter/player_heavy_helicopter
// Params 0, eflags: 0x5
// Checksum 0x455710df, Offset: 0x110
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"player_heavy_helicopter", &preinit, undefined, undefined, #"player_vehicle");
}

// Namespace player_heavy_helicopter/player_heavy_helicopter
// Params 1, eflags: 0x6 linked
// Checksum 0x7d2e1a7b, Offset: 0x160
// Size: 0xc4
function private preinit(*localclientnum) {
    vehicle::add_vehicletype_callback("helicopter_heavy", &function_8220feb0);
    clientfield::register("toplayer", "hind_gunner_postfx_active", 1, 1, "int", &function_44ad5e3e, 0, 1);
    clientfield::register("vehicle", "hind_compass_icon", 1, 2, "int", &hind_compass_icon, 0, 1);
}

// Namespace player_heavy_helicopter/player_heavy_helicopter
// Params 1, eflags: 0x6 linked
// Checksum 0x14970cd2, Offset: 0x230
// Size: 0x1a
function private function_8220feb0(*localclientnum) {
    self.var_7d3d0f72 = 2;
}

// Namespace player_heavy_helicopter/player_heavy_helicopter
// Params 7, eflags: 0x2 linked
// Checksum 0x8d6ad2ba, Offset: 0x258
// Size: 0xcc
function function_44ad5e3e(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        if (!self postfx::function_556665f2(#"hash_4a4dfccbf3585bcc")) {
            self postfx::playpostfxbundle(#"hash_4a4dfccbf3585bcc");
        }
        return;
    }
    if (self postfx::function_556665f2(#"hash_4a4dfccbf3585bcc")) {
        self postfx::stoppostfxbundle(#"hash_4a4dfccbf3585bcc");
    }
}

// Namespace player_heavy_helicopter/player_heavy_helicopter
// Params 7, eflags: 0x2 linked
// Checksum 0xc9933e5a, Offset: 0x330
// Size: 0x112
function hind_compass_icon(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(self.scriptvehicletype) || self.scriptvehicletype != "helicopter_heavy") {
        return;
    }
    switch (bwastimejump) {
    case 0:
        self setcompassicon(#"hash_238039183607226d");
        break;
    case 1:
        self setcompassicon(#"hash_a6a2a558ed7bec6");
        break;
    case 2:
        self setcompassicon("");
        break;
    }
}

