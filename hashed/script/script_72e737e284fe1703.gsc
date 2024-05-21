// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\systems\fx_character.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\footsteps_shared.csc;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\array_shared.csc;
#using scripts\core_common\ai_shared.csc;
#using scripts\core_common\struct.csc;

#namespace namespace_514c8ebc;

// Namespace namespace_514c8ebc/namespace_514c8ebc
// Params 0, eflags: 0x2 linked
// Checksum 0x2b9a7173, Offset: 0x340
// Size: 0x2e4
function init() {
    function_cae618b4("spawner_zombietron_gegenees");
    level._effect[#"fx8_gegenees_shield_blast"] = "zm_ai/fx8_gegenees_shield_blast";
    level._effect[#"fx8_gegenees_shield_guard"] = "zm_ai/fx8_gegenees_shield_guard";
    level._effect[#"fx8_gegenees_spear_tip_flame"] = "zm_ai/fx8_gegenees_spear_tip_flame";
    level._effect[#"fx8_gegenees_spear_tip_tell"] = "zm_ai/fx8_gegenees_spear_tip_tell";
    level._effect[#"fx8_stoker_dest_weak_point_exp_generic"] = "zm_ai/fx8_stoker_dest_weak_point_exp_generic";
    footsteps::registeraitypefootstepcb(#"gegenees", &function_d00809d8);
    clientfield::register("actor", "gegenees_shield_blast_effect", 16000, 1, "counter", &function_8745f9df, 0, 0);
    clientfield::register("actor", "gegenees_shield_guard_effect", 16000, 1, "int", &function_ae96bf9a, 0, 0);
    clientfield::register("actor", "gegenees_spear_tip_effect", 16000, 1, "int", &function_33dedae1, 0, 0);
    clientfield::register("actor", "gegenees_spear_tip_tell_effect", 16000, 1, "int", &function_421757ab, 0, 0);
    clientfield::register("toplayer", "gegenees_damage_cf", 16000, 1, "counter", &function_2ee4a6b6, 0, 0);
    clientfield::register("scriptmover", "gegenees_spear_miss_cf", 16000, 1, "counter", &function_ce49549a, 0, 0);
    clientfield::register("actor", "gegenees_helmet_explosion_cf", 16000, 1, "int", &function_d54aae3e, 0, 0);
}

// Namespace namespace_514c8ebc/namespace_514c8ebc
// Params 5, eflags: 0x6 linked
// Checksum 0x22466019, Offset: 0x630
// Size: 0x254
function private function_d00809d8(localclientnum, pos, *surface, notetrack, *bone) {
    e_player = function_5c10bd79(surface);
    n_dist = distancesquared(notetrack, e_player.origin);
    is_large = 0;
    if (bone == "footstep_left_large" || bone == "footstep_right_large") {
        is_large = 1;
    }
    var_a34b4731 = 1000000;
    if (is_large) {
        var_a34b4731 = 4000000;
    }
    if (var_a34b4731 > 0) {
        n_scale = (var_a34b4731 - n_dist) / var_a34b4731;
    } else {
        return;
    }
    if (n_scale > 1 || n_scale < 0) {
        return;
    }
    n_scale *= 0.25;
    if (n_scale <= 0.01) {
        return;
    }
    earthquake(surface, n_scale, 0.1, notetrack, n_dist);
    if (n_scale <= 0.25 && n_scale > 0.2) {
        if (is_large) {
            function_36e4ebd4(surface, "damage_heavy");
        } else {
            function_36e4ebd4(surface, "anim_med");
        }
        return;
    }
    if (n_scale <= 0.2 && n_scale > 0.1) {
        if (is_large) {
            function_36e4ebd4(surface, "anim_med");
        } else {
            function_36e4ebd4(surface, "damage_light");
        }
        return;
    }
    function_36e4ebd4(surface, "damage_light");
}

// Namespace namespace_514c8ebc/namespace_514c8ebc
// Params 7, eflags: 0x6 linked
// Checksum 0x2101c95d, Offset: 0x890
// Size: 0xa4
function private function_8745f9df(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self.var_cafcaa0a = util::playfxontag(bwastimejump, level._effect[#"fx8_gegenees_shield_blast"], self, "tag_shield_fx");
    self playsound(bwastimejump, #"hash_1f62dff95ae6f9c6");
}

// Namespace namespace_514c8ebc/namespace_514c8ebc
// Params 7, eflags: 0x6 linked
// Checksum 0xd90d18a4, Offset: 0x940
// Size: 0xbe
function private function_ae96bf9a(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self.var_7c984f = util::playfxontag(fieldname, level._effect[#"fx8_gegenees_shield_guard"], self, "tag_shield_fx");
        return;
    }
    if (isdefined(self.var_7c984f)) {
        stopfx(fieldname, self.var_7c984f);
        self.var_7c984f = undefined;
    }
}

// Namespace namespace_514c8ebc/namespace_514c8ebc
// Params 7, eflags: 0x6 linked
// Checksum 0x54d35778, Offset: 0xa08
// Size: 0xbe
function private function_33dedae1(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self.var_645626ad = util::playfxontag(fieldname, level._effect[#"fx8_gegenees_spear_tip_flame"], self, "tag_spear_tip_fx");
        return;
    }
    if (isdefined(self.var_645626ad)) {
        killfx(fieldname, self.var_645626ad);
        self.var_645626ad = undefined;
    }
}

// Namespace namespace_514c8ebc/namespace_514c8ebc
// Params 7, eflags: 0x6 linked
// Checksum 0x7da0018, Offset: 0xad0
// Size: 0xbe
function private function_421757ab(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self.var_55203ff4 = util::playfxontag(fieldname, level._effect[#"fx8_gegenees_spear_tip_tell"], self, "tag_spear_tip_fx");
        return;
    }
    if (isdefined(self.var_55203ff4)) {
        stopfx(fieldname, self.var_55203ff4);
        self.var_55203ff4 = undefined;
    }
}

// Namespace namespace_514c8ebc/namespace_514c8ebc
// Params 7, eflags: 0x6 linked
// Checksum 0x27f22388, Offset: 0xb98
// Size: 0xcc
function private function_2ee4a6b6(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isalive(self) || self !== function_5c10bd79(bwastimejump)) {
        return;
    }
    earthquake(bwastimejump, 0.5, 0.1, self.origin, 40);
    function_36e4ebd4(bwastimejump, "damage_heavy");
}

// Namespace namespace_514c8ebc/namespace_514c8ebc
// Params 7, eflags: 0x6 linked
// Checksum 0x1739f304, Offset: 0xc70
// Size: 0x1d4
function private function_ce49549a(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    e_player = function_5c10bd79(bwastimejump);
    n_dist = distancesquared(self.origin, e_player.origin);
    var_a34b4731 = 1000000;
    if (var_a34b4731 > 0) {
        n_scale = (var_a34b4731 - n_dist) / var_a34b4731;
    } else {
        return;
    }
    if (n_scale > 1 || n_scale < 0) {
        return;
    }
    n_scale *= 0.25;
    if (n_scale <= 0.01) {
        return;
    }
    earthquake(bwastimejump, n_scale, 0.1, self.origin, n_dist);
    if (n_scale <= 0.25 && n_scale > 0.2) {
        function_36e4ebd4(bwastimejump, "anim_med");
        return;
    }
    if (n_scale <= 0.2 && n_scale > 0.1) {
        function_36e4ebd4(bwastimejump, "damage_light");
        return;
    }
    function_36e4ebd4(bwastimejump, "damage_light");
}

// Namespace namespace_514c8ebc/namespace_514c8ebc
// Params 7, eflags: 0x6 linked
// Checksum 0x316a7421, Offset: 0xe50
// Size: 0x82
function private function_d54aae3e(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self.fx_helmet = util::playfxontag(fieldname, level._effect[#"fx8_stoker_dest_weak_point_exp_generic"], self, "j_head");
    }
}

