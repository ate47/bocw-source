// Atian COD Tools GSC CW decompiler test
#using scripts\cp_common\snd_utility.csc;
#using script_1cd690a97dfca36e;
#using scripts\cp_common\snd.csc;
#using script_dfd475a961626c7;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\vehicle_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\struct.csc;
#using scripts\core_common\fx_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_db2381c4;

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 0, eflags: 0x5
// Checksum 0x215000b9, Offset: 0x910
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"hash_4ddffaa090d81227", &_preload, &function_fa076c68, undefined, undefined);
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 0, eflags: 0x6 linked
// Checksum 0xb4de7bc2, Offset: 0x968
// Size: 0x34
function private _preload() {
    if (!isdefined(level._fx)) {
        level._fx = {};
    }
    function_bc948200();
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 0, eflags: 0x6 linked
// Checksum 0xcc6979fe, Offset: 0x9a8
// Size: 0x94
function private function_fa076c68() {
    vehicle::add_vehicletype_callback(#"hash_1598bee2e954e43a", &function_54f94439);
    vehicle::add_vehicletype_callback(#"hash_46249425f37afc74", &function_5f6bf482);
    vehicle::add_vehicletype_callback(#"hash_1d28a638b43b4117", &function_d7fc17ab);
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 0, eflags: 0x6 linked
// Checksum 0x843188a1, Offset: 0xa48
// Size: 0x43c
function private function_bc948200() {
    clientfield::register("scriptmover", "clf_billiardslight_client_register", 1, 1, "int", &function_efaa9fbd, 0, 0);
    clientfield::register("scriptmover", "clf_billiardslight_fx", 1, 1, "int", &function_786ac693, 0, 0);
    clientfield::register("scriptmover", "clf_cargoplane_client_register", 1, 1, "int", &function_a9581e24, 0, 0);
    clientfield::register("scriptmover", "clf_cargoplane_door_sparks", 1, 1, "int", &function_49365e3b, 0, 0);
    clientfield::register("scriptmover", "clf_cargoplane_landing_lights", 1, 1, "int", &function_5caef633, 0, 0);
    clientfield::register("scriptmover", "clf_cargoplane_nav_lights", 1, 1, "int", &function_c4178945, 0, 0);
    clientfield::register("vehicle", "clf_rccar_fxstate", 1, 8, "int", &function_b68c2eb9, 0, 0);
    clientfield::register("vehicle", "clf_bronco_roof_lights", 1, 1, "int", &function_979cbf76, 0, 0);
    clientfield::register("vehicle", "clf_bronco_cab_lights", 1, 1, "int", &function_f6936758, 0, 0);
    clientfield::register("vehicle", "clf_whizbyfx_bronco", 1, 1, "int", &function_92a58466, 0, 0);
    clientfield::register("toplayer", "clf_postfx_rccar", 1, 1, "int", &function_a4c9adb9, 0, 0);
    clientfield::register("toplayer", "clf_postfx_transition", 1, 1, "int", &function_f14b954c, 0, 0);
    clientfield::register("toplayer", "clf_postfx_rooftop_slide", 1, 1, "int", &function_636d3664, 0, 0);
    clientfield::register("toplayer", "clf_footstep_override", 1, 1, "int", &function_4a75f4b6, 0, 0);
    clientfield::register("actor", "clf_rob_snipercam_blood", 1, 2, "int", &function_d1374213, 0, 0);
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 7, eflags: 0x6 linked
// Checksum 0xe5ea3e89, Offset: 0xe90
// Size: 0xb4
function private function_4a75f4b6(localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump) {
    /#
        function_907070de("maps/cp_takedown/fx9_td_rc_damage_heavy", localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump);
    #/
    if (newval) {
        function_27d5cafd(#"hash_6596d53586d3ef06", #"hash_6596d53586d3ef06");
        return;
    }
    function_27d5cafd();
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 7, eflags: 0x6 linked
// Checksum 0x24192513, Offset: 0xf50
// Size: 0x6a
function private function_efaa9fbd(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(level._fx)) {
        level._fx = {};
    }
    level._fx.var_6e8a28b6 = self;
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 7, eflags: 0x6 linked
// Checksum 0x8a176557, Offset: 0xfc8
// Size: 0xc6
function private function_786ac693(localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump) {
    self endon(#"death");
    self util::waittill_dobj(localclientnum);
    /#
        function_907070de("rob_p9_cp_takedown_snipercam_blood_splatter", localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump);
    #/
    if (newval) {
        self function_7ab521db(localclientnum);
        return;
    }
    self notify(#"hash_50cc63ed1ff3cc9a");
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 1, eflags: 0x6 linked
// Checksum 0x1b487dde, Offset: 0x1098
// Size: 0x6c
function private function_7ab521db(localclientnum) {
    self notify(#"hash_6c3d9a30da5f352d");
    fxid = util::playfxontag(localclientnum, "maps/cp_takedown/fx9_hit2_billiards_light", self, "tag_light");
    self thread function_ef765af1(localclientnum, fxid);
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 2, eflags: 0x6 linked
// Checksum 0xee42ddf5, Offset: 0x1110
// Size: 0x64
function private function_ef765af1(localclientnum, fxid) {
    self waittill(#"death", #"hash_6c3d9a30da5f352d", #"hash_50cc63ed1ff3cc9a");
    stopfx(localclientnum, fxid);
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 7, eflags: 0x6 linked
// Checksum 0x2f684ee5, Offset: 0x1180
// Size: 0x6a
function private function_a9581e24(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(level._fx)) {
        level._fx = {};
    }
    level._fx.cargo_plane = self;
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 7, eflags: 0x6 linked
// Checksum 0xf6abaf97, Offset: 0x11f8
// Size: 0xc6
function private function_5caef633(localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump) {
    self endon(#"death");
    self util::waittill_dobj(localclientnum);
    /#
        function_907070de("<unknown string>", localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump);
    #/
    if (newval) {
        self function_9a0e9c31(localclientnum);
        return;
    }
    self notify(#"hash_10d9c330299e2a6d");
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 1, eflags: 0x6 linked
// Checksum 0xd6ed2cbb, Offset: 0x12c8
// Size: 0x64
function private function_9a0e9c31(localclientnum) {
    self notify(#"hash_16331609e21e3a86");
    var_3f79908d = playtagfxset(localclientnum, "fx9_cargo_plane_landing_lights", self);
    self thread function_b053bd08(localclientnum, var_3f79908d);
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 2, eflags: 0x6 linked
// Checksum 0x78289f78, Offset: 0x1338
// Size: 0xd0
function private function_b053bd08(localclientnum, var_3f79908d) {
    self waittill(#"death", #"hash_16331609e21e3a86", #"hash_10d9c330299e2a6d");
    foreach (fxid in var_3f79908d) {
        stopfx(localclientnum, fxid);
    }
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 7, eflags: 0x6 linked
// Checksum 0xce0ca51d, Offset: 0x1410
// Size: 0xc6
function private function_c4178945(localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump) {
    self endon(#"death");
    self util::waittill_dobj(localclientnum);
    /#
        function_907070de("<unknown string>", localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump);
    #/
    if (newval) {
        self function_54105299(localclientnum);
        return;
    }
    self notify(#"hash_5bd6457a6c206a17");
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 1, eflags: 0x6 linked
// Checksum 0x74dd5b87, Offset: 0x14e0
// Size: 0x64
function private function_54105299(localclientnum) {
    self notify(#"hash_8d07a9f3af1838");
    var_3f79908d = playtagfxset(localclientnum, "fx9_cargo_plane_nav_lights", self);
    self thread function_fa38e4db(localclientnum, var_3f79908d);
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 2, eflags: 0x6 linked
// Checksum 0xbbddd4f5, Offset: 0x1550
// Size: 0xd0
function private function_fa38e4db(localclientnum, var_3f79908d) {
    self waittill(#"death", #"hash_8d07a9f3af1838", #"hash_5bd6457a6c206a17");
    foreach (fxid in var_3f79908d) {
        stopfx(localclientnum, fxid);
    }
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 7, eflags: 0x6 linked
// Checksum 0x872357d5, Offset: 0x1628
// Size: 0xc6
function private function_49365e3b(localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump) {
    self endon(#"death");
    self util::waittill_dobj(localclientnum);
    /#
        function_907070de("<unknown string>", localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump);
    #/
    if (newval) {
        self function_ad43fc89(localclientnum);
        return;
    }
    self notify(#"hash_3d54cb0fcf6b56fa");
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 1, eflags: 0x6 linked
// Checksum 0xd7df8306, Offset: 0x16f8
// Size: 0x164
function private function_ad43fc89(localclientnum) {
    self notify(#"hash_23f28ccc6f5f0d8d");
    fxid1 = util::playfxontag(localclientnum, "maps/cp_takedown/fx9_takedown_pcrash_cargo_spark_loop_start", self, "tag_gate_flap_01");
    fxid2 = util::playfxontag(localclientnum, "maps/cp_takedown/fx9_takedown_pcrash_cargo_spark_loop_start", self, "tag_gate_flap_02");
    var_929f5b4d = util::playfxontag(localclientnum, "maps/cp_takedown/fx9_takedown_pcrash_cargo_spark_loop_start", self, "tag_gate_flap_03");
    var_a06276d3 = util::playfxontag(localclientnum, "maps/cp_takedown/fx9_takedown_pcrash_cargo_spark_loop_start", self, "tag_gate_flap_04");
    var_d76364c8 = util::playfxontag(localclientnum, "maps/cp_takedown/fx9_hit3_chase_prop_mist", self, "tag_engine_right_01_null");
    var_84e2bfd4 = util::playfxontag(localclientnum, "maps/cp_takedown/fx9_hit3_chase_prop_mist", self, "tag_engine_left_02_null");
    self thread function_9b722964(localclientnum, fxid1, fxid2, var_929f5b4d, var_a06276d3, var_d76364c8, var_84e2bfd4);
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 7, eflags: 0x6 linked
// Checksum 0x6d30c257, Offset: 0x1868
// Size: 0x104
function private function_9b722964(localclientnum, fxid1, fxid2, var_929f5b4d, var_a06276d3, var_d76364c8, var_84e2bfd4) {
    self waittill(#"death", #"hash_23f28ccc6f5f0d8d", #"hash_3d54cb0fcf6b56fa");
    stopfx(localclientnum, fxid1);
    stopfx(localclientnum, fxid2);
    stopfx(localclientnum, var_929f5b4d);
    stopfx(localclientnum, var_a06276d3);
    stopfx(localclientnum, var_d76364c8);
    stopfx(localclientnum, var_84e2bfd4);
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 1, eflags: 0x6 linked
// Checksum 0xa802589b, Offset: 0x1978
// Size: 0x94
function private function_d7fc17ab(localclientnum) {
    if (!isdefined(level._fx)) {
        level._fx = {};
    }
    self util::waittill_dobj(localclientnum);
    level._fx.var_a736d041 = self;
    var_3f79908d = playtagfxset(localclientnum, "fx9_cargo_plane_nav_lights", self);
    self thread function_5445f621(localclientnum, var_3f79908d);
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 2, eflags: 0x6 linked
// Checksum 0x246db475, Offset: 0x1a18
// Size: 0xb0
function private function_5445f621(localclientnum, var_3f79908d) {
    self waittill(#"death");
    foreach (fxid in var_3f79908d) {
        stopfx(localclientnum, fxid);
    }
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 1, eflags: 0x6 linked
// Checksum 0x980bf73a, Offset: 0x1ad0
// Size: 0x1b0
function private function_5f6bf482(localclientnum) {
    if (!isdefined(level._fx)) {
        level._fx = {};
    }
    self util::waittill_dobj(localclientnum);
    level._fx.rc_car = self;
    level._fx.rc_car.var_7351c5a = [];
    level._fx.rc_car.var_7351c5a[1] = &function_5c750f8f;
    level._fx.rc_car.var_7351c5a[2] = &function_a718a890;
    level._fx.rc_car.var_7351c5a[4] = &function_2550ab3e;
    level._fx.rc_car.var_7351c5a[8] = &function_3383f5e2;
    level._fx.rc_car.var_7351c5a[16] = &function_4cfdb901;
    level._fx.rc_car.var_7351c5a[32] = &function_4cfdb901;
    level._fx.rc_car.var_7351c5a[64] = &function_4cfdb901;
    level._fx.rc_car.var_7351c5a[128] = &function_51de3dc2;
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 7, eflags: 0x6 linked
// Checksum 0x6bb04fcc, Offset: 0x1c88
// Size: 0x164
function private function_b68c2eb9(localclientnum, oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    changed = fieldname ^ bwastimejump;
    if (!changed) {
        return;
    }
    println("<unknown string>");
    println("<unknown string>" + fieldname + "<unknown string>" + bwastimejump + "<unknown string>" + changed + "<unknown string>");
    println("<unknown string>");
    for (var_67e99fbd = 1; changed >= var_67e99fbd; var_67e99fbd <<= 1) {
        if (changed & var_67e99fbd) {
            self thread [[ level._fx.rc_car.var_7351c5a[var_67e99fbd] ]](binitialsnap, bwastimejump);
        }
    }
    println("<unknown string>");
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 3, eflags: 0x6 linked
// Checksum 0x20c29aba, Offset: 0x1df8
// Size: 0x8e
function private function_d4cb569b(localclientnum, fxid, var_743c16e0) {
    self waittill(#"death", #"fx_death", var_743c16e0);
    stopfx(localclientnum, fxid);
    if (isdefined(self.var_2aa68449)) {
        snd::stop(self.var_2aa68449);
        self.var_2aa68449 = undefined;
    }
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 2, eflags: 0x6 linked
// Checksum 0xdb9979c0, Offset: 0x1e90
// Size: 0x9c
function private function_5c750f8f(*localclientnum, state) {
    self notify("1b2da60ebd37930");
    self endon("1b2da60ebd37930");
    self endon(#"death", #"fx_death");
    if (state & 1) {
        println("<unknown string>");
        return;
    }
    println("<unknown string>");
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 2, eflags: 0x6 linked
// Checksum 0xe32f7268, Offset: 0x1f38
// Size: 0xfe
function private function_a718a890(localclientnum, state) {
    self notify("311048a0bc7152f6");
    self endon("311048a0bc7152f6");
    self endon(#"death", #"fx_death");
    if (state & 2) {
        println("<unknown string>");
        fxid = util::playfxontag(localclientnum, "maps/cp_takedown/fx9_td_rc_flashlight", self, "tag_fx_flashlight");
        self thread function_d4cb569b(localclientnum, fxid, "stop_flashlight_fx");
        return;
    }
    println("<unknown string>");
    self notify(#"stop_flashlight_fx");
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 2, eflags: 0x6 linked
// Checksum 0xcc759541, Offset: 0x2040
// Size: 0xd6
function private function_2550ab3e(localclientnum, state) {
    self notify("441a582706e2ec76");
    self endon("441a582706e2ec76");
    self endon(#"death", #"fx_death");
    if (state & 4) {
        println("<unknown string>");
        self thread function_7dc13ec9(localclientnum);
        return;
    }
    println("<unknown string>");
    self notify(#"hash_28344e38d8947eea");
    self notify(#"stop_blink_fx");
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 1, eflags: 0x6 linked
// Checksum 0x728d9cf8, Offset: 0x2120
// Size: 0x240
function private function_7dc13ec9(localclientnum) {
    self notify("4486f93a90fd6e7");
    self endon("4486f93a90fd6e7");
    self endon(#"death", #"fx_death", #"hash_28344e38d8947eea");
    if (isdefined(level._fx.cargo_plane)) {
        var_3b16b806 = sqr(400);
        var_87c1e213 = sqr(2500);
        while (true) {
            distsqr = distance2dsquared(self.origin, level._fx.cargo_plane.origin);
            self.fx_interval = (distsqr - var_3b16b806) / (var_87c1e213 - var_3b16b806);
            self.fx_interval = max(0.1, min(1, self.fx_interval));
            self notify(#"stop_blink_fx");
            var_b2b52cb5 = self.fx_interval * 0.5;
            util::server_wait(localclientnum, var_b2b52cb5);
            fxid = util::playfxontag(localclientnum, "maps/cp_takedown/fx9_td_rc_light_red", self, "tag_fx_light_rear");
            self thread function_d4cb569b(localclientnum, fxid, "stop_blink_fx");
            snd::play("wpn_tkd_rcxd_detonate_timer", [self, "tag_fx_light_rear"]);
            util::server_wait(localclientnum, var_b2b52cb5);
        }
    }
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 2, eflags: 0x6 linked
// Checksum 0xcbc8c88d, Offset: 0x2368
// Size: 0x13e
function private function_3383f5e2(localclientnum, state) {
    self notify("7df042faaef394e8");
    self endon("7df042faaef394e8");
    self endon(#"death", #"fx_death");
    if (state & 8) {
        println("<unknown string>");
        fxid = util::playfxontag(localclientnum, "maps/cp_takedown/fx9_td_rc_light_green", self, "tag_fx_light_rear");
        self thread function_d4cb569b(localclientnum, fxid, "stop_proximity_fx");
        self.var_2aa68449 = snd::play("wpn_tkd_rcxd_detonate_timer_ready", [self, "tag_fx_light_rear"]);
        return;
    }
    println("<unknown string>");
    self notify(#"stop_proximity_fx");
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 2, eflags: 0x6 linked
// Checksum 0xae8ca94b, Offset: 0x24b0
// Size: 0x296
function private function_4cfdb901(localclientnum, state) {
    self notify("6b1164a992a5029b");
    self endon("6b1164a992a5029b");
    self endon(#"death", #"fx_death");
    if (state & 16) {
        println("<unknown string>");
        snd::play("wpn_tkd_rcxd_impact_lt");
        fxid = util::playfxontag(localclientnum, "maps/cp_takedown/fx9_td_rc_damage_light", self, "tag_origin");
        self thread function_d4cb569b(localclientnum, fxid, "stop_damage_light_fx");
    } else {
        println("<unknown string>");
        self notify(#"stop_damage_light_fx");
    }
    if (state & 32) {
        println("<unknown string>");
        snd::play("wpn_tkd_rcxd_impact_md");
        fxid = util::playfxontag(localclientnum, "maps/cp_takedown/fx9_td_rc_damage_medium", self, "tag_origin");
        self thread function_d4cb569b(localclientnum, fxid, "stop_damage_medium_fx");
    } else {
        println("<unknown string>");
        self notify(#"stop_damage_medium_fx");
    }
    if (state & 64) {
        println("<unknown string>");
        snd::play("wpn_tkd_rcxd_impact_hv");
        fxid = util::playfxontag(localclientnum, "maps/cp_takedown/fx9_td_rc_damage_heavy", self, "tag_origin");
        self thread function_d4cb569b(localclientnum, fxid, "stop_damage_heavy_fx");
        return;
    }
    println("<unknown string>");
    self notify(#"stop_damage_heavy_fx");
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 2, eflags: 0x6 linked
// Checksum 0xc60548ef, Offset: 0x2750
// Size: 0xde
function private function_51de3dc2(localclientnum, state) {
    self notify("6db46cb8b5275540");
    self endon("6db46cb8b5275540");
    if (state & 128) {
        println("<unknown string>");
        fxid = util::playfxontag(localclientnum, "maps/cp_takedown/fx9_td_rc_exp_c4", self, "tag_origin");
        self thread function_d4cb569b(localclientnum, fxid, "stop_death_fx");
        return;
    }
    println("<unknown string>");
    self notify(#"stop_death_fx");
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 1, eflags: 0x6 linked
// Checksum 0x617d567b, Offset: 0x2838
// Size: 0x4e
function private function_54f94439(localclientnum) {
    if (!isdefined(level._fx)) {
        level._fx = {};
    }
    self util::waittill_dobj(localclientnum);
    level._fx.var_56d8a882 = self;
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 7, eflags: 0x6 linked
// Checksum 0x55cdbd25, Offset: 0x2890
// Size: 0xc6
function private function_979cbf76(localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump) {
    self endon(#"death");
    self util::waittill_dobj(localclientnum);
    /#
        function_907070de("<unknown string>", localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump);
    #/
    if (newval) {
        self function_bc597003(localclientnum);
        return;
    }
    self notify(#"hash_34ad886fbd5f4182");
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 1, eflags: 0x6 linked
// Checksum 0x8d48b437, Offset: 0x2960
// Size: 0x64
function private function_bc597003(localclientnum) {
    self notify(#"hash_6391f06161389fb");
    var_3f79908d = playtagfxset(localclientnum, "fx9_bronco_roof_lights", self);
    self thread function_b671b8d8(localclientnum, var_3f79908d);
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 2, eflags: 0x6 linked
// Checksum 0xb9eb5cea, Offset: 0x29d0
// Size: 0xd0
function private function_b671b8d8(localclientnum, var_3f79908d) {
    self waittill(#"death", #"hash_6391f06161389fb", #"hash_34ad886fbd5f4182");
    foreach (fxid in var_3f79908d) {
        stopfx(localclientnum, fxid);
    }
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 7, eflags: 0x6 linked
// Checksum 0x7b02129, Offset: 0x2aa8
// Size: 0xc6
function private function_f6936758(localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump) {
    self endon(#"death");
    self util::waittill_dobj(localclientnum);
    /#
        function_907070de("<unknown string>", localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump);
    #/
    if (newval) {
        self function_3ff9983b(localclientnum);
        return;
    }
    self notify(#"hash_22f3d135b4aea2a6");
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 1, eflags: 0x6 linked
// Checksum 0x830ade18, Offset: 0x2b78
// Size: 0x64
function private function_3ff9983b(localclientnum) {
    self notify(#"hash_26c936f0d412b1c9");
    var_3f79908d = playtagfxset(localclientnum, "fx9_bronco_cab_lights", self);
    self thread function_3d982979(localclientnum, var_3f79908d);
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 2, eflags: 0x6 linked
// Checksum 0x61204bd8, Offset: 0x2be8
// Size: 0xd0
function private function_3d982979(localclientnum, var_3f79908d) {
    self waittill(#"death", #"hash_26c936f0d412b1c9", #"hash_22f3d135b4aea2a6");
    foreach (fxid in var_3f79908d) {
        stopfx(localclientnum, fxid);
    }
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 7, eflags: 0x6 linked
// Checksum 0x2f807b41, Offset: 0x2cc0
// Size: 0xc4
function private function_a4c9adb9(localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump) {
    self endon(#"death");
    /#
        function_907070de("<unknown string>", localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump);
    #/
    self notify(#"hash_18d68ed133347a19");
    if (newval) {
        self thread function_40f427f7();
        return;
    }
    self thread function_fe60975();
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 0, eflags: 0x6 linked
// Checksum 0xf6d2c8bf, Offset: 0x2d90
// Size: 0x194
function private function_40f427f7() {
    self notify("33575834ba727e2");
    self endon("33575834ba727e2");
    self endon(#"death", #"hash_18d68ed133347a19");
    if (self postfx::function_556665f2("pstfx_vehicle_rcxd_fade_in") || self postfx::function_556665f2("pstfx_speedblur") || self postfx::function_556665f2("pstfx_rain_loop_tkdn_rccar")) {
        self postfx::stoppostfxbundle("pstfx_vehicle_rcxd_fade_in");
        self postfx::stoppostfxbundle("pstfx_speedblur");
        self postfx::stoppostfxbundle("pstfx_rain_loop_tkdn_rccar");
    }
    self postfx::playpostfxbundle("pstfx_vehicle_rcxd_fade_in");
    namespace_a052577e::function_b233d29e(0.5, 0);
    wait(1);
    self postfx::playpostfxbundle("pstfx_speedblur");
    self postfx::playpostfxbundle("pstfx_rain_loop_tkdn_rccar");
    self thread function_23f6671d();
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 0, eflags: 0x6 linked
// Checksum 0xc56118dc, Offset: 0x2f30
// Size: 0xbc
function private function_fe60975() {
    self notify("244e3efdeb0cf8b6");
    self endon("244e3efdeb0cf8b6");
    self endon(#"death", #"hash_18d68ed133347a19");
    self postfx::stoppostfxbundle("pstfx_speedblur");
    self postfx::stoppostfxbundle("pstfx_rain_loop_tkdn_rccar");
    self postfx::playpostfxbundle("pstfx_vehicle_rcxd_fade_out");
    namespace_a052577e::function_b233d29e(0.5, 0);
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 0, eflags: 0x6 linked
// Checksum 0x17e1f8da, Offset: 0x2ff8
// Size: 0x47e
function private function_23f6671d() {
    self notify("4e8916e051945f74");
    self endon("4e8916e051945f74");
    self endon(#"death", #"hash_18d68ed133347a19");
    if (!isdefined(level._fx.rc_car)) {
        return;
    }
    self postfx::function_c8b5f318("pstfx_speedblur", "Inner Mask", 0.15);
    self postfx::function_c8b5f318("pstfx_speedblur", "Outer Mask", 0.8);
    self postfx::function_c8b5f318("pstfx_speedblur", "Blur", 0);
    self postfx::function_c8b5f318("pstfx_rain_loop_tkdn_rccar", "Sprite Count Squash", 1);
    setdvar(#"hash_252e699c41531f1a", 2);
    setdvar(#"r_motionblurstrength", 0.2);
    while (true) {
        level._fx.rc_car.velocity = function_72c0c267(level._fx.rc_car getvelocity(), level._fx.rc_car.angles);
        scalar = level._fx.rc_car.velocity[0] / 1100;
        scalar = max(0, min(1, scalar));
        var_75128a58 = 1 - scalar;
        var_69954662 = level._fx.rc_car.velocity[1] / 20;
        var_69954662 = max(-1, min(1, var_69954662));
        var_69954662 *= 0.5;
        var_50bfab0d = level._fx.rc_car.origin + anglestoforward(level._fx.rc_car.angles) * 100 + (0, 0, 15);
        screenpos = self function_a6a764a9(var_50bfab0d, 1);
        if (isdefined(screenpos)) {
            self postfx::function_c8b5f318("pstfx_speedblur", "X Offset", screenpos[0]);
            self postfx::function_c8b5f318("pstfx_speedblur", "Y Offset", screenpos[1]);
            self postfx::function_c8b5f318("pstfx_rain_loop_tkdn_rccar", "Origin X", screenpos[0] + var_69954662);
            self postfx::function_c8b5f318("pstfx_rain_loop_tkdn_rccar", "Origin Y", screenpos[1]);
        }
        self postfx::function_c8b5f318("pstfx_speedblur", "Blur", 0.05 * sqr(scalar));
        self postfx::function_c8b5f318("pstfx_rain_loop_tkdn_rccar", "Sprite Count Squash", sqr(var_75128a58));
        waitframe(1);
    }
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 7, eflags: 0x6 linked
// Checksum 0x132b0977, Offset: 0x3480
// Size: 0xae
function private function_92a58466(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        fxid = util::playfxontag(fieldname, "maps/cp_takedown/fx9_takedown_rc_view_wisp", self, "tag_origin");
        self thread function_86203754(fieldname, fxid);
        return;
    }
    self notify(#"hash_18ccf59470efbae9");
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 2, eflags: 0x6 linked
// Checksum 0x9dbe2f4d, Offset: 0x3538
// Size: 0x54
function private function_86203754(localclientnum, fxid) {
    self waittill(#"death", #"hash_18ccf59470efbae9");
    stopfx(localclientnum, fxid);
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 7, eflags: 0x6 linked
// Checksum 0x3a179c18, Offset: 0x3598
// Size: 0x17c
function private function_f14b954c(localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump) {
    /#
        function_907070de("<unknown string>", localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump);
    #/
    self notify(#"hash_6df70d945404449d");
    if (newval) {
        if (self postfx::function_556665f2("pstfx_vehicle_rcxd_fade_in")) {
            self postfx::stoppostfxbundle("pstfx_vehicle_rcxd_fade_in");
        }
        self postfx::playpostfxbundle("pstfx_vehicle_rcxd_fade_in");
        namespace_a052577e::function_b233d29e(0.5, 0);
        return;
    }
    if (self postfx::function_556665f2("pstfx_vehicle_rcxd_fade_out")) {
        self postfx::stoppostfxbundle("pstfx_vehicle_rcxd_fade_out");
    }
    self postfx::playpostfxbundle("pstfx_vehicle_rcxd_fade_out");
    namespace_a052577e::function_b233d29e(0.5, 0);
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 7, eflags: 0x6 linked
// Checksum 0x24ad31ee, Offset: 0x3720
// Size: 0xcc
function private function_636d3664(localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump) {
    /#
        function_907070de("<unknown string>", localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump);
    #/
    if (self postfx::function_556665f2("pstfx_rooftop_slide")) {
        self postfx::stoppostfxbundle("pstfx_rooftop_slide");
    }
    if (newval) {
        self postfx::playpostfxbundle("pstfx_rooftop_slide");
    }
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 7, eflags: 0x6 linked
// Checksum 0xfef57a7e, Offset: 0x37f8
// Size: 0x112
function private function_d1374213(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    switch (bwastimejump) {
    case 0:
        self function_f6e99a8d("rob_p9_cp_takedown_snipercam_blood_henchman");
        break;
    case 1:
        self playrenderoverridebundle("rob_p9_cp_takedown_snipercam_blood_henchman");
        break;
    case 2:
        self function_f6e99a8d("rob_p9_cp_takedown_snipercam_blood_splatter");
        break;
    case 3:
        self playrenderoverridebundle("rob_p9_cp_takedown_snipercam_blood_splatter");
        break;
    }
}

/#

    // Namespace namespace_db2381c4/namespace_db2381c4
    // Params 8, eflags: 0x4
    // Checksum 0xdd4b530f, Offset: 0x3918
    // Size: 0xd4
    function private function_907070de(var_55ee7def, localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump) {
        println("<unknown string>" + var_55ee7def + "<unknown string>" + localclientnum + "<unknown string>" + oldval + "<unknown string>" + newval + "<unknown string>" + bnewent + "<unknown string>" + binitialsnap + "<unknown string>" + fieldname + "<unknown string>" + bwastimejump);
    }

#/
