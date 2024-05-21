// Atian COD Tools GSC CW decompiler test
#using script_723ebc06cb1968f2;
#using script_72f8a3c40978a2de;
#using script_79309cd5815ebbc2;
#using script_35fc7a0b68a84517;
#using script_6d8b721f24e2653d;
#using script_557089630e09eb03;
#using scripts\zm\powerup\zm_powerup_hero_weapon_power.csc;
#using scripts\zm\powerup\zm_powerup_small_ammo.csc;
#using scripts\zm\powerup\zm_powerup_full_ammo.csc;
#using scripts\zm\powerup\zm_powerup_insta_kill.csc;
#using scripts\zm\powerup\zm_powerup_free_perk.csc;
#using scripts\zm\powerup\zm_powerup_nuke.csc;
#using script_60793766a26de8df;
#using script_11cc3a9267cf7ac7;
#using script_44c87b4589ee1f93;
#using script_6243781aa5394e62;
#using script_62c40d9a3acec9b1;
#using scripts\zm_common\zm_fasttravel.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\oob.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace zonslaught;

// Namespace zonslaught/gametype_init
// Params 1, eflags: 0x20
// Checksum 0xe2c377c2, Offset: 0x370
// Size: 0x4ac
function event_handler[gametype_init] main(*eventstruct) {
    level._zombie_gamemodeprecache = &onprecachegametype;
    level._zombie_gamemodemain = &onstartgametype;
    println("<unknown string>");
    level.var_36a81b25 = 1;
    clientfield::register("scriptmover", "" + #"hash_56a6be021662c82e", 1, 2, "int", &function_bed6f88d, 0, 0);
    clientfield::register_clientuimodel("hudItems.onslaught.wave_number", #"hash_6f4b11a0bee9b73d", [#"onslaught", #"wave_number"], 1, 7, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("hudItems.onslaught.bosskill_count", #"hash_6f4b11a0bee9b73d", [#"onslaught", #"hash_2ec97775399a0680"], 1, 7, "int", undefined, 0, 0);
    clientfield::register("scriptmover", "orb_spawn", 1, 1, "int", &orb_spawn, 0, 0);
    clientfield::register("scriptmover", "bot_claim_fx", 1, 2, "int", &bot_claim_fx, 0, 0);
    clientfield::register("actor", "orb_soul_capture_fx", 1, 3, "int", &orb_soul_capture_fx, 0, 0);
    clientfield::register("actor", "zombie_aether_spawn_cf", 1, 1, "int", &function_ace38635, 0, 0);
    level.var_7bd7bdc8 = [1:#"hash_6a04f899ab555f22", 2:#"hash_2964f82e2c05c8b8", 3:#"hash_54da2f2da5752d99"];
    level.var_6e62d281 = #"hash_289962ed0e76921d";
    onslaught_hud::register();
    level.var_12da60e6 = 1;
    callback::on_spawned(&on_player_spawned);
    level.aat_in_use = 1;
    level.var_374c2805 = 1;
    level._effect[#"hash_30f998a8b281bea0"] = "wz/fx8_zm_box_marker_red";
    level._effect[#"hash_78e041fbc245e0d2"] = "wz/fx8_magicbox_marker_fl_red";
    level._effect[#"hash_d7a655f41aa4b03"] = "zombie/fx9_onslaught_spawn_lg";
    level._effect[#"soul_fx"] = "zombie/fx9_onslaught_orb_soul";
    level._effect[#"hash_308d15c5b36ba48a"] = "maps/zm_red/fx8_soul_charge_purple";
    level._effect[#"hash_11fd5c794ccab4e5"] = "zombie/fx9_onslaught_orb_trail";
    level._effect[#"hash_55ab97f3dc5e7ba2"] = "sr/fx9_safehouse_orb_activate";
    level.var_de8cc106 = #"hash_6d2c4c09332d861b";
    level.var_cb450873 = #"hash_4bfee97440e2b6f2";
    println("<unknown string>");
}

// Namespace zonslaught/zonslaught
// Params 1, eflags: 0x0
// Checksum 0xef8afd02, Offset: 0x828
// Size: 0x8c
function on_player_spawned(localclientnum) {
    self function_36b630a3(1);
    str_map_name = util::get_map_name();
    if (str_map_name === #"mp_tundra" || str_map_name === #"mp_dune") {
        function_f58e42ae(localclientnum, 1);
    }
}

// Namespace zonslaught/zonslaught
// Params 0, eflags: 0x0
// Checksum 0xd5183446, Offset: 0x8c0
// Size: 0x24
function onprecachegametype() {
    println("<unknown string>");
}

// Namespace zonslaught/zonslaught
// Params 0, eflags: 0x0
// Checksum 0x6bc0607d, Offset: 0x8f0
// Size: 0x24
function onstartgametype() {
    println("<unknown string>");
}

// Namespace zonslaught/zonslaught
// Params 7, eflags: 0x0
// Checksum 0x3f3932f6, Offset: 0x920
// Size: 0x74
function enemy_on_radar(*local_client_num, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self enableonradar();
        return;
    }
    self disableonradar();
}

// Namespace zonslaught/zonslaught
// Params 7, eflags: 0x0
// Checksum 0x8adef76, Offset: 0x9a0
// Size: 0x2f6
function function_bed6f88d(local_client_num, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self setcompassicon("icon_minimap_onslaught_boss");
        self enableonradar();
        self function_811196d1(0);
        return;
    }
    if (bwastimejump == 2) {
        if (is_true(level.var_612d6a21) || util::get_game_type() === #"hash_75aa82b3ae89f54e" || is_true(level.var_e35c191f) || util::get_game_type() === #"hash_125fc0c0065c7dea") {
            self.var_31a246b5 = util::playfxontag(fieldname, #"hash_60aef71494b594e5", self, "tag_origin");
            self playsound(fieldname, #"hash_5e9e10059b1e505c");
        } else {
            self.var_31a246b5 = playfx(fieldname, level._effect[#"hash_d7a655f41aa4b03"], self.origin - (0, 0, 68));
            self playsound(fieldname, #"hash_5e9e10059b1e505c", self.origin - (0, 0, 68));
        }
        return;
    }
    if (bwastimejump == 3) {
        if (isdefined(self.var_31a246b5)) {
            stopfx(fieldname, self.var_31a246b5);
            self.var_31a246b5 = undefined;
        }
        return;
    }
    self setcompassicon("icon_minimap_onslaught_boss");
    self disableonradar();
    self function_811196d1(1);
    if (isdefined(self.var_31a246b5)) {
        stopfx(fieldname, self.var_31a246b5);
        self.var_31a246b5 = undefined;
    }
}

// Namespace zonslaught/zonslaught
// Params 7, eflags: 0x0
// Checksum 0x21e23d95, Offset: 0xca0
// Size: 0x19c
function orb_spawn(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (isdefined(self)) {
        level.var_df7b46d1 = self;
        level.var_df7b46d1 thread function_40deac72(bwastimejump);
        if (!isdefined(level.var_df7b46d1.var_606d06a1)) {
            v_spawn_pos = level.var_df7b46d1.origin + (0, 0, 10);
            level.var_df7b46d1.var_606d06a1 = util::spawn_model(bwastimejump, "tag_origin", v_spawn_pos, level.var_df7b46d1.angles);
            level.var_df7b46d1.var_606d06a1.var_fc558e74 = isdefined(level.var_a0b1f787[#"hash_53079af25eecf35b"]) ? level.var_a0b1f787[#"hash_53079af25eecf35b"] : undefined;
            level.var_df7b46d1.var_606d06a1 linkto(level.var_df7b46d1, "tag_origin");
            level.var_df7b46d1.var_606d06a1 function_619a5c20();
        }
    }
}

// Namespace zonslaught/zonslaught
// Params 7, eflags: 0x0
// Checksum 0x9322824f, Offset: 0xe48
// Size: 0x21c
function bot_claim_fx(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self.fxid = function_239993de(fieldname, level._effect[#"hash_11fd5c794ccab4e5"], self, "tag_origin");
        if (!isdefined(self.var_94ebeb0a)) {
            self.var_94ebeb0a = self playloopsound(level.var_de8cc106);
        }
        self.var_58e905a8 = playfx(fieldname, level._effect[#"hash_55ab97f3dc5e7ba2"], self.origin);
        return;
    }
    if (bwastimejump == 2) {
        self.var_58e905a8 = playfx(fieldname, level._effect[#"hash_55ab97f3dc5e7ba2"], self.origin);
        return;
    }
    if (isdefined(self.fxid)) {
        killfx(fieldname, self.fxid);
    }
    if (isdefined(self.var_94ebeb0a)) {
        self stoploopsound(self.var_94ebeb0a);
        self.var_94ebeb0a = undefined;
    }
    if (isdefined(self.var_58e905a8)) {
        killfx(fieldname, self.var_58e905a8);
        self.var_58e905a8 = undefined;
    }
    playfx(fieldname, level._effect[#"hash_55ab97f3dc5e7ba2"], self.origin);
}

// Namespace zonslaught/zonslaught
// Params 3, eflags: 0x0
// Checksum 0xd2309a63, Offset: 0x1070
// Size: 0x130
function fake_physicslaunch(target_pos, power, var_4862f668) {
    start_pos = self.origin;
    gravity = getdvarint(#"bg_gravity", 0) * -1;
    gravity *= var_4862f668;
    dist = distance(start_pos, target_pos);
    time = dist / power;
    delta = target_pos - start_pos;
    drop = 0.5 * gravity * time * time;
    velocity = (delta[0] / time, delta[1] / time, (delta[2] - drop) / time);
    self movegravity(velocity, time);
    return time;
}

// Namespace zonslaught/zonslaught
// Params 7, eflags: 0x0
// Checksum 0x98a104fe, Offset: 0x11a8
// Size: 0x23c
function orb_soul_capture_fx(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump && isdefined(level.var_df7b46d1)) {
        e_fx = util::spawn_model(fieldname, "tag_origin", self.origin);
        e_fx playsound(fieldname, "zmb_onslaught_zsouls_start");
        e_fx.sfx_id = e_fx playloopsound(#"hash_58d856545ecf5e28");
        util::playfxontag(fieldname, level._effect[#"soul_fx"], e_fx, "tag_origin");
        wait(0.3);
        power = distance(e_fx.origin, level.var_df7b46d1.origin);
        n_time = e_fx fake_physicslaunch(level.var_df7b46d1.origin + (0, 0, 68), power, 0.85);
        wait(n_time);
        playsound(fieldname, "zmb_onslaught_zsouls_end", level.var_df7b46d1.origin);
        e_fx stoploopsound(e_fx.sfx_id);
        util::playfxontag(fieldname, level._effect[#"hash_308d15c5b36ba48a"], e_fx, "tag_origin");
        wait(0.3);
        e_fx delete();
    }
}

// Namespace zonslaught/zonslaught
// Params 7, eflags: 0x0
// Checksum 0x2a570e0a, Offset: 0x13f0
// Size: 0xf4
function function_ace38635(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    self endon(#"death");
    if (bwasdemojump) {
        spawn_fx = playfx(fieldname, "zombie/fx9_onslaught_spawn_sm", self.origin);
        playsound(fieldname, #"hash_1a0e3429a5f96df3", self.origin);
        wait(1.5);
        playsound(fieldname, #"hash_441ebe442c5946b2", self.origin);
        stopfx(fieldname, spawn_fx);
    }
}

// Namespace zonslaught/zonslaught
// Params 1, eflags: 0x0
// Checksum 0x3eeee07b, Offset: 0x14f0
// Size: 0x160
function function_40deac72(localclientnum) {
    level endon(#"end_game");
    e_player = function_5c10bd79(localclientnum);
    e_player endon(#"death");
    while (true) {
        n_dist = distancesquared(self.origin, e_player.origin);
        var_e71fa578 = 16384;
        if (var_e71fa578 > 0) {
            n_scale = n_dist / var_e71fa578;
        } else {
            continue;
        }
        waitframe(1);
        if (n_scale > 1 || n_scale <= 0) {
            continue;
        }
        var_1826041c = (1 - n_scale) * 0.05;
        if (var_1826041c > 0.01) {
            earthquake(localclientnum, var_1826041c, 0.1, self.origin, 128);
        }
        e_player playrumbleonentity(localclientnum, "onslaught_orb");
        wait(0.3);
    }
}

