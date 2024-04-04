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
    system::register(#"molotov_zm", &preinit, undefined, undefined, undefined);
}

// Namespace zm_weap_molotov/zm_weap_molotov
// Params 0, eflags: 0x6 linked
// Checksum 0x149220a2, Offset: 0x128
// Size: 0x4c
function private preinit() {
    clientfield::register("actor", "molotov_zm_fire_fx", 1, 1, "int", &molotov_zm_fire_fx, 0, 0);
}

// Namespace zm_weap_molotov/zm_weap_molotov
// Params 7, eflags: 0x2 linked
// Checksum 0xa8daf6fc, Offset: 0x180
// Size: 0x128
function molotov_zm_fire_fx(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    self util::waittill_dobj(fieldname);
    if (bwastimejump) {
        self.var_e9d782a8 = playtagfxset(fieldname, "weapon_hero_molotov_fire_3p", self);
        return;
    }
    if (isdefined(self.var_e9d782a8)) {
        foreach (fx_id in self.var_e9d782a8) {
            stopfx(fieldname, fx_id);
        }
    }
}

