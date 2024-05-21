// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\zombie_eye_glow.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\footsteps_shared.csc;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\math_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\array_shared.csc;
#using scripts\core_common\ai_shared.csc;

#namespace namespace_2a445563;

// Namespace namespace_2a445563/namespace_2a445563
// Params 0, eflags: 0x2 linked
// Checksum 0x966ead6c, Offset: 0x298
// Size: 0x19c
function init() {
    function_cae618b4("spawner_zombietron_werewolf");
    clientfield::register("actor", "wrwlf_silver_death_fx", 1, 1, "int", &function_c65ce64a, 0, 0);
    clientfield::register("actor", "wrwlf_weakpoint_fx", 1, 2, "counter", &function_3f3f0d8, 0, 0);
    clientfield::register("actor", "wrwlf_silver_hit_fx", 1, 1, "counter", &function_39053880, 0, 0);
    clientfield::register("actor", "wrwlf_leap_attack_rumble", 1, 1, "counter", &function_e980911c, 0, 0);
    ai::add_archetype_spawn_function(#"werewolf", &function_d45ef8ea);
    footsteps::registeraitypefootstepcb(#"werewolf", &function_f4b140ab);
}

// Namespace namespace_2a445563/namespace_2a445563
// Params 1, eflags: 0x2 linked
// Checksum 0xc0b8106c, Offset: 0x440
// Size: 0xbc
function function_d45ef8ea(localclientnum) {
    self.breath_fx = util::playfxontag(localclientnum, "zm_ai/fx8_werewolf_breath", self, "j_head");
    self.var_f87f8fa0 = "tag_eye";
    self zombie_eye_glow::function_3a020b0f(localclientnum, "rob_zm_eyes_orange", #"hash_524decea28717b7c");
    self callback::on_shutdown(&on_entity_shutdown);
    self playrenderoverridebundle("rob_zm_man_werewolf_nonboss_weakpoint");
}

// Namespace namespace_2a445563/namespace_2a445563
// Params 1, eflags: 0x2 linked
// Checksum 0x5e4f285c, Offset: 0x508
// Size: 0x74
function on_entity_shutdown(localclientnum) {
    if (isdefined(self)) {
        if (isdefined(self.breath_fx)) {
            stopfx(localclientnum, self.breath_fx);
        }
        self zombie_eye_glow::good_barricade_damaged(localclientnum);
    }
    self stoprenderoverridebundle("rob_zm_man_werewolf_nonboss_weakpoint");
}

// Namespace namespace_2a445563/namespace_2a445563
// Params 7, eflags: 0x2 linked
// Checksum 0xfc7a91d1, Offset: 0x588
// Size: 0x5c
function function_c65ce64a(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self thread function_815cc85c(fieldname);
    }
}

// Namespace namespace_2a445563/namespace_2a445563
// Params 1, eflags: 0x2 linked
// Checksum 0x7fcc5e10, Offset: 0x5f0
// Size: 0x64
function function_815cc85c(localclientnum) {
    self zombie_eye_glow::good_barricade_damaged(localclientnum);
    self stoprenderoverridebundle("rob_zm_man_werewolf_nonboss_weakpoint");
    self playrenderoverridebundle("rob_zm_werewolf_dust");
}

// Namespace namespace_2a445563/namespace_2a445563
// Params 7, eflags: 0x2 linked
// Checksum 0xf796a8c5, Offset: 0x660
// Size: 0xa4
function function_3f3f0d8(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        util::playfxontag(fieldname, "zm_ai/fx8_werewolf_dmg_weakspot", self, "tag_chest_ws");
        return;
    }
    if (bwastimejump == 2) {
        util::playfxontag(fieldname, "zm_ai/fx8_werewolf_dmg_weakspot", self, "tag_back_ws");
    }
}

// Namespace namespace_2a445563/namespace_2a445563
// Params 7, eflags: 0x6 linked
// Checksum 0xe49ed09c, Offset: 0x710
// Size: 0x6c
function private function_39053880(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        util::playfxontag(fieldname, "maps/zm_mansion/fx8_silver_hit_werewolf", self, "j_spine4");
    }
}

// Namespace namespace_2a445563/namespace_2a445563
// Params 5, eflags: 0x6 linked
// Checksum 0x6a86010a, Offset: 0x788
// Size: 0x194
function private function_f4b140ab(localclientnum, pos, *surface, *notetrack, *bone) {
    e_player = function_5c10bd79(notetrack);
    n_dist = distancesquared(bone, e_player.origin);
    var_107019dc = sqr(1000);
    n_scale = (var_107019dc - n_dist) / var_107019dc;
    n_scale *= 0.25;
    if (n_scale <= 0.01) {
        return;
    }
    earthquake(notetrack, n_scale, 0.1, bone, n_dist);
    if (n_scale <= 0.25 && n_scale > 0.2) {
        function_36e4ebd4(notetrack, "anim_med");
        return;
    }
    if (n_scale <= 0.2 && n_scale > 0.1) {
        function_36e4ebd4(notetrack, "damage_light");
        return;
    }
    function_36e4ebd4(notetrack, "damage_light");
}

// Namespace namespace_2a445563/namespace_2a445563
// Params 7, eflags: 0x6 linked
// Checksum 0xab8846c6, Offset: 0x928
// Size: 0x174
function private function_e980911c(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    e_player = function_5c10bd79(bwastimejump);
    n_dist = distancesquared(self.origin, e_player.origin);
    var_107019dc = sqr(500);
    n_scale = (var_107019dc - n_dist) / var_107019dc;
    n_scale = min(n_scale, 0.75);
    if (n_scale <= 0.01) {
        return;
    }
    earthquake(bwastimejump, n_scale, 0.5, self.origin, n_dist, 1);
    if (n_scale >= 0.5) {
        function_36e4ebd4(bwastimejump, "damage_heavy");
        return;
    }
    function_36e4ebd4(bwastimejump, "damage_light");
}

