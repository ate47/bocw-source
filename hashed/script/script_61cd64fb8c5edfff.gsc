// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\array_shared.csc;
#using scripts\core_common\postfx_shared.csc;
#using scripts\weapons\weaponobjects.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\struct.csc;

#namespace electroball_grenade;

// Namespace electroball_grenade/electroball_grenade
// Params 0, eflags: 0x5
// Checksum 0x62ffb14b, Offset: 0x280
// Size: 0x34
function private autoexec __init__system__() {
    system::register("electroball_grenade", &preinit, undefined, undefined, undefined);
}

// Namespace electroball_grenade/electroball_grenade
// Params 0, eflags: 0x2 linked
// Checksum 0x1f6966e6, Offset: 0x2c0
// Size: 0x1dc
function preinit() {
    clientfield::register("toplayer", "electroball_tazered", 1, 1, "int", undefined, 0, 0);
    clientfield::register("allplayers", "electroball_shock", 1, 1, "int", &function_7ec61d7a, 0, 0);
    clientfield::register("missile", "electroball_stop_trail", 1, 1, "int", &function_7b605b7b, 0, 0);
    clientfield::register("missile", "electroball_play_landed_fx", 1, 1, "int", &electroball_play_landed_fx, 0, 0);
    level._effect[#"hash_782d8b3c7cf0155a"] = "zm_ai/fx9_mech_wpn_115_blob";
    level._effect[#"hash_20d1b299e564ead7"] = "zm_ai/fx9_mech_wpn_115_bul_trail";
    level._effect[#"hash_6eac1e89faaa9560"] = "zm_ai/fx9_mech_wpn_115_canister";
    level._effect[#"hash_3a6575aae8a7ccd4"] = "weapon/fx_prox_grenade_impact_player_spwner";
    level._effect[#"hash_58bd536e46d7c711"] = "weapon/fx_prox_grenade_exp";
    callback::add_weapon_type("electroball_grenade", &proximity_spawned);
}

// Namespace electroball_grenade/electroball_grenade
// Params 1, eflags: 0x2 linked
// Checksum 0x61f0bff2, Offset: 0x4a8
// Size: 0xc2
function proximity_spawned(localclientnum) {
    self util::waittill_dobj(localclientnum);
    if (self isgrenadedud()) {
        return;
    }
    self.var_78b154ef = util::playfxontag(localclientnum, level._effect[#"hash_20d1b299e564ead7"], self, "j_grenade_front");
    self.var_de70e6e2 = util::playfxontag(localclientnum, level._effect[#"hash_6eac1e89faaa9560"], self, "j_grenade_back");
}

// Namespace electroball_grenade/electroball_grenade
// Params 7, eflags: 0x2 linked
// Checksum 0x16761530, Offset: 0x578
// Size: 0x7e
function function_7ec61d7a(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    fx = util::playfxontag(bwastimejump, level._effect[#"hash_3a6575aae8a7ccd4"], self, "J_SpineUpper");
}

// Namespace electroball_grenade/electroball_grenade
// Params 7, eflags: 0x2 linked
// Checksum 0x49189282, Offset: 0x600
// Size: 0x134
function function_7b605b7b(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(level.var_542ac835)) {
        level.var_542ac835 = [];
    }
    array::add(level.var_542ac835, self);
    self callback::on_shutdown(&function_76787bb);
    if (isdefined(self.var_78b154ef)) {
        stopfx(bwastimejump, self.var_78b154ef);
    }
    if (isdefined(self.var_87f9f380)) {
        stopfx(bwastimejump, self.var_87f9f380);
    }
    if (isdefined(self.var_d026ca4e)) {
        stopfx(bwastimejump, self.var_d026ca4e);
    }
    if (isdefined(self.var_de70e6e2)) {
        stopfx(bwastimejump, self.var_de70e6e2);
    }
}

// Namespace electroball_grenade/electroball_grenade
// Params 1, eflags: 0x2 linked
// Checksum 0xa99a4431, Offset: 0x740
// Size: 0x2c
function function_76787bb(*params) {
    arrayremovevalue(level.var_542ac835, undefined);
}

// Namespace electroball_grenade/electroball_grenade
// Params 7, eflags: 0x2 linked
// Checksum 0xc8598c3e, Offset: 0x778
// Size: 0xbe
function electroball_play_landed_fx(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self.var_ac6e3a4d = util::playfxontag(bwastimejump, level._effect[#"hash_782d8b3c7cf0155a"], self, "tag_origin");
    dynent = createdynentandlaunch(bwastimejump, "p7_zm_ctl_115_grenade_broken", self.origin, self.angles, self.origin, (0, 0, 0));
}

