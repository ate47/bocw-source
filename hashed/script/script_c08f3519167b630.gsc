// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_zonemgr.gsc;
#using scripts\zm_common\callbacks.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace namespace_c3c0ef6f;

// Namespace namespace_c3c0ef6f/namespace_c3c0ef6f
// Params 0, eflags: 0x2 linked
// Checksum 0xe17a62fa, Offset: 0x198
// Size: 0xbc
function init() {
    callback::on_spawned(&function_95b24959);
    callback::on_ai_killed(&function_df8c20ce);
    level.var_d8104f84 = 100;
    level.var_2a5adcff = 14;
    level.var_4b8d723f = getent("zone_kill_achievement", "script_noteworthy");
    callback::add_callback(#"hash_34d402e0ae123ca6", &function_a6f7e3da);
}

// Namespace namespace_c3c0ef6f/namespace_c3c0ef6f
// Params 0, eflags: 0x2 linked
// Checksum 0x63f8491b, Offset: 0x260
// Size: 0x34
function function_a6f7e3da() {
    if (self.var_1a69e47f.size >= 14) {
        zm_utility::function_659819fa(#"zm_silver_craft");
    }
}

// Namespace namespace_c3c0ef6f/namespace_c3c0ef6f
// Params 1, eflags: 0x2 linked
// Checksum 0xfeb95f17, Offset: 0x2a0
// Size: 0x28c
function function_df8c20ce(s_params) {
    e_player = s_params.eattacker;
    weapon = s_params.weapon;
    ai_type = self.aitype;
    if (isplayer(e_player)) {
        if (!isdefined(e_player.var_f96ce53f)) {
            e_player.var_f96ce53f = 0;
        }
        if (isdefined(weapon) && weapon.inventorytype != #"offhand" && !is_true(e_player.var_df6978da)) {
            if (!is_true(e_player.var_f96ce53f)) {
                if (ai_type === "spawner_zm_steiner_split_radiation_bomb" || ai_type === "spawner_zm_steiner_split_radiation_blast") {
                    switch (ai_type) {
                    case #"spawner_zm_steiner_split_radiation_bomb":
                        e_player.var_287dbab8 = "spawner_zm_steiner_split_radiation_blast";
                        break;
                    case #"spawner_zm_steiner_split_radiation_blast":
                        e_player.var_287dbab8 = "spawner_zm_steiner_split_radiation_bomb";
                        break;
                    }
                    e_player.var_f96ce53f = 1;
                    e_player thread function_735fa731();
                }
            } else if (e_player.var_287dbab8 === ai_type) {
                e_player.var_df6978da = 1;
                e_player zm_utility::function_659819fa(#"zm_silver_mega");
            }
        }
        if (!isdefined(e_player.kill_count)) {
            e_player.kill_count = 0;
        }
        if (!is_true(e_player.var_12445983)) {
            if (e_player.kill_count < level.var_d8104f84 && e_player istouching(level.var_4b8d723f)) {
                e_player.kill_count++;
            }
            if (e_player.kill_count >= level.var_d8104f84) {
                e_player.var_12445983 = 1;
                e_player zm_utility::function_659819fa(#"zm_silver_wing");
            }
        }
    }
}

// Namespace namespace_c3c0ef6f/namespace_c3c0ef6f
// Params 0, eflags: 0x2 linked
// Checksum 0x51d9e3da, Offset: 0x538
// Size: 0x9c
function function_95b24959() {
    self.var_df6978da = 0;
    self.var_12445983 = 0;
    self.var_d7073519 = 0;
    if (!isdefined(self.var_6616d107)) {
        self.var_6616d107 = 0;
    }
    self thread function_e361ce1b();
    self thread function_ceba8321();
    self thread function_9a4f865b();
    self thread function_f5b265ac();
}

// Namespace namespace_c3c0ef6f/namespace_c3c0ef6f
// Params 0, eflags: 0x2 linked
// Checksum 0x93daee31, Offset: 0x5e0
// Size: 0x64
function function_e361ce1b() {
    self endon(#"disconnect");
    level endon(#"end_game");
    level flag::wait_till("pap_quest_completed");
    self zm_utility::function_659819fa(#"zm_silver_pap");
}

// Namespace namespace_c3c0ef6f/namespace_c3c0ef6f
// Params 0, eflags: 0x2 linked
// Checksum 0xb0323e90, Offset: 0x650
// Size: 0x64
function function_9a4f865b() {
    self endon(#"disconnect");
    level endon(#"end_game");
    level waittill(#"main_quest_completed");
    self zm_utility::function_659819fa(#"zm_silver_pa");
}

// Namespace namespace_c3c0ef6f/namespace_c3c0ef6f
// Params 0, eflags: 0x2 linked
// Checksum 0x19a534db, Offset: 0x6c0
// Size: 0x84
function function_ceba8321() {
    self endon(#"disconnect");
    level endon(#"end_game");
    level flag::wait_till("ww_quest_completed");
    /#
        self iprintlnbold("<unknown string>");
    #/
    self zm_utility::function_659819fa(#"zm_silver_ww");
}

// Namespace namespace_c3c0ef6f/namespace_c3c0ef6f
// Params 0, eflags: 0x2 linked
// Checksum 0xdb9e2e98, Offset: 0x750
// Size: 0x62
function function_735fa731() {
    self notify("67ede2be5a74b6a3");
    self endon("67ede2be5a74b6a3");
    self endon(#"end_game", #"disconnect", #"death");
    waitframe(10);
    self.var_f96ce53f = 0;
}

// Namespace namespace_c3c0ef6f/namespace_c3c0ef6f
// Params 0, eflags: 0x2 linked
// Checksum 0x91a0595f, Offset: 0x7c0
// Size: 0xf2
function function_f5b265ac() {
    self endon(#"disconnect");
    level endon(#"end_game");
    var_c9d4ff68 = level.round_number;
    var_84d02e05 = var_c9d4ff68 + 15;
    wait(5);
    while (true) {
        var_a26574af = zm_zonemgr::get_player_zone();
        if (isdefined(var_a26574af)) {
            if (var_a26574af == "zone_proto_start" || var_a26574af == "zone_proto_start2") {
                if (level.round_number >= var_84d02e05) {
                    self zm_utility::function_659819fa(#"zm_silver_start");
                    break;
                }
            } else {
                break;
            }
        }
        wait(1);
    }
}

