// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace zm_weap_molotov;

// Namespace zm_weap_molotov/zm_weap_molotov
// Params 0, eflags: 0x5
// Checksum 0x7bd1de8a, Offset: 0xe0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"molotov_zm", &function_70a657d8, undefined, undefined, undefined);
}

// Namespace zm_weap_molotov/zm_weap_molotov
// Params 0, eflags: 0x4
// Checksum 0x149220a2, Offset: 0x128
// Size: 0x4c
function private function_70a657d8() {
    clientfield::register("actor", "molotov_zm_fire_fx", 1, 1, "int", &function_b081999c, 0, 0);
}

// Namespace zm_weap_molotov/zm_weap_molotov
// Params 7, eflags: 0x0
// Checksum 0xa8daf6fc, Offset: 0x180
// Size: 0x128
function function_b081999c(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    self util::waittill_dobj(fieldname);
    if (bwastimejump) {
        self.var_e9d782a8 = playtagfxset(fieldname, "weapon_hero_molotov_fire_3p", self);
    } else if (isdefined(self.var_e9d782a8)) {
        foreach (fx_id in self.var_e9d782a8) {
            stopfx(fieldname, fx_id);
        }
    }
}

