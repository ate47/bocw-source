// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\footsteps_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\ai_shared.csc;

#namespace namespace_2e61cc4b;

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 0, eflags: 0x2 linked
// Checksum 0x48d1c0f4, Offset: 0x2b8
// Size: 0x274
function init() {
    function_cae618b4("spawner_zombietron_elephant");
    ai::add_archetype_spawn_function(#"elephant", &function_4c731a08);
    clientfield::register("actor", "towers_boss_melee_effect", 1, 1, "counter", &function_4d07056d, 0, 0);
    clientfield::register("actor", "tower_boss_death_fx", 1, 1, "counter", &function_58e13aab, 0, 0);
    clientfield::register("scriptmover", "entrails_model_cf", 1, 1, "int", &function_e3038292, 0, 0);
    clientfield::register("scriptmover", "towers_boss_head_proj_fx_cf", 1, 1, "int", &function_5f5f6a25, 0, 0);
    clientfield::register("scriptmover", "towers_boss_head_proj_explosion_fx_cf", 1, 1, "int", &function_1308296f, 0, 0);
    clientfield::register("actor", "towers_boss_eye_fx_cf", 1, 2, "int", &function_624041b1, 0, 0);
    clientfield::register("actor", "boss_death_rob", 1, 2, "int", &function_e1fb79d0, 0, 0);
    footsteps::registeraitypefootstepcb(#"elephant", &function_fe0bb012);
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 1, eflags: 0x6 linked
// Checksum 0xa3d149d, Offset: 0x538
// Size: 0x2c
function private function_4c731a08(*localclientnum) {
    self playrenderoverridebundle("rob_zm_eyes_red");
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 7, eflags: 0x2 linked
// Checksum 0x8426e46c, Offset: 0x570
// Size: 0xe4
function function_624041b1(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self.eyefx = util::playfxontag(fieldname, "maps/zm_towers/fx8_boss_eye_glow", self, "tag_eye");
        return;
    }
    if (bwastimejump == 2) {
        self.eyefx = util::playfxontag(fieldname, "maps/zm_towers/fx8_boss_eye_glow_alt", self, "tag_eye");
        return;
    }
    if (isdefined(self.eyefx)) {
        stopfx(fieldname, self.eyefx);
    }
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 7, eflags: 0x2 linked
// Checksum 0xd30359a7, Offset: 0x660
// Size: 0xac
function function_e1fb79d0(*var_99c2529a, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self stoprenderoverridebundle("rob_zm_eyes_red");
        self playrenderoverridebundle(#"hash_782edffb9e72130");
        return;
    }
    self stoprenderoverridebundle(#"hash_782edffb9e72130");
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 7, eflags: 0x2 linked
// Checksum 0xaca1dd6a, Offset: 0x718
// Size: 0x84
function function_e3038292(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        if (!util::is_mature() || util::is_gib_restricted_build()) {
            self hide();
        }
    }
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 7, eflags: 0x2 linked
// Checksum 0x5b546c4b, Offset: 0x7a8
// Size: 0xa4
function function_5f5f6a25(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self.fx = util::playfxontag(fieldname, "maps/zm_towers/fx8_boss_attack_eye_trail", self, "tag_origin");
        return;
    }
    if (isdefined(self.fx)) {
        stopfx(fieldname, self.fx);
    }
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 7, eflags: 0x2 linked
// Checksum 0xf303b434, Offset: 0x858
// Size: 0xa4
function function_1308296f(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self.fx = util::playfxontag(fieldname, "maps/zm_towers/fx8_boss_attack_eye_trail_split", self, "tag_origin");
        return;
    }
    if (isdefined(self.fx)) {
        stopfx(fieldname, self.fx);
    }
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 7, eflags: 0x2 linked
// Checksum 0xce88a4cf, Offset: 0x908
// Size: 0x1b4
function function_4d07056d(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    e_player = function_5c10bd79(bwastimejump);
    if (!isdefined(e_player)) {
        return;
    }
    var_e08888ec = self gettagorigin("j_nose4");
    if (!isdefined(var_e08888ec)) {
        return;
    }
    n_dist = distancesquared(var_e08888ec, e_player.origin);
    var_b12c8a00 = sqr(1400);
    n_scale = (var_b12c8a00 - n_dist) / var_b12c8a00;
    if (n_scale > 0.01) {
        earthquake(bwastimejump, n_scale, 1, self.origin, n_dist);
        if (n_scale <= 0.25 && n_scale > 0.2) {
            function_36e4ebd4(bwastimejump, "tank_fire");
        } else {
            function_36e4ebd4(bwastimejump, "damage_heavy");
        }
        physicsexplosionsphere(bwastimejump, self.origin, 400, 100, 20);
    }
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 7, eflags: 0x2 linked
// Checksum 0x588e11b8, Offset: 0xac8
// Size: 0xd4
function function_58e13aab(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    e_player = function_5c10bd79(bwastimejump);
    earthquake(bwastimejump, 0.6, 1, self.origin, 4000);
    function_36e4ebd4(bwastimejump, "tank_fire");
    physicsexplosionsphere(bwastimejump, self.origin, 2000, 100, 4);
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 5, eflags: 0x2 linked
// Checksum 0xccfc5ba2, Offset: 0xba8
// Size: 0x144
function function_fe0bb012(localclientnum, pos, *surface, *notetrack, bone) {
    e_player = function_5c10bd79(surface);
    n_dist = distancesquared(notetrack, e_player.origin);
    var_b12c8a00 = sqr(1200);
    if (n_dist < var_b12c8a00) {
        earthquake(surface, 0.1, 0.5, self.origin, n_dist);
        function_36e4ebd4(surface, "damage_light");
        if (isdefined(bone)) {
            origin = self gettagorigin(bone);
            if (isdefined(origin)) {
                physicsexplosionsphere(surface, origin, 200, 20, 20);
            }
        }
    }
}

