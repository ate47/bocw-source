// Atian COD Tools GSC CW decompiler test
#using script_2cb831533cab2794;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\zm_common\zm_weapons.gsc;
#using scripts\zm_common\zm_vo.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\fx_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\content_manager.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_cdc318b3;

// Namespace namespace_cdc318b3/namespace_cdc318b3
// Params 0, eflags: 0x5
// Checksum 0x77f7d6cd, Offset: 0x238
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_37fb21afea61a92a", &preinit, undefined, undefined, #"content_manager");
}

// Namespace namespace_cdc318b3/namespace_cdc318b3
// Params 0, eflags: 0x6 linked
// Checksum 0xcf2cd68a, Offset: 0x288
// Size: 0x1f4
function private preinit() {
    if (!is_true(getgametypesetting(#"hash_3a1bcecdeb68529a")) && !getdvarint(#"hash_5df55c4b5dbbc9c4", 0)) {
        return;
    }
    content_manager::register_script(#"hash_3e85505b26ebde95", &function_1cf80b5e);
    content_manager::register_script(#"hash_522307876efbeba4", &function_5e5224f3);
    callback::add_callback(#"hash_4ac56c023c88537f", &function_a5ef96da);
    s_altar = struct::get(#"hash_2e7b29d6d6d6b66f", "content_key");
    if (!isdefined(s_altar)) {
        return;
    }
    clientfield::register("toplayer", "" + #"hash_2373d19d48ebba87", 1, 1, "counter");
    clientfield::register("toplayer", "" + #"hash_3d5368e76a98fadb", 1, 1, "counter");
    callback::on_spawned(&function_483192e9);
    callback::on_disconnect(&function_1edea331);
}

// Namespace namespace_cdc318b3/namespace_cdc318b3
// Params 1, eflags: 0x2 linked
// Checksum 0x41e10246, Offset: 0x488
// Size: 0x25c
function function_a5ef96da(params) {
    a_locations = params.destination.locations;
    foreach (location in a_locations) {
        instance = location.instances[#"hash_3e85505b26ebde95"];
        if (isdefined(instance)) {
            content_manager::spawn_instance(instance);
            break;
        }
    }
    foreach (location in a_locations) {
        var_8f82cb55 = location.instances[#"hash_522307876efbeba4"];
        if (isdefined(var_8f82cb55)) {
            content_manager::spawn_instance(var_8f82cb55);
            break;
        }
    }
    if (isdefined(var_8f82cb55)) {
        var_12611deb = getentarray("fq_site", "targetname");
        foreach (mdl in var_12611deb) {
            mdl delete();
        }
        return;
    }
    level flag::set(#"hash_2621518d33e62ddb");
}

// Namespace namespace_cdc318b3/namespace_cdc318b3
// Params 1, eflags: 0x6 linked
// Checksum 0x45c2637, Offset: 0x6f0
// Size: 0x9a
function private function_1cf80b5e(instance) {
    s_interact = instance.contentgroups[#"mask"][0];
    trigger = content_manager::spawn_interact(s_interact, &function_376d2d76, #"hash_86b1b2e8c4d179a");
    trigger.var_eff718da = content_manager::spawn_script_model(s_interact, #"hash_2954df4c5aed1a55", 0, 0);
}

// Namespace namespace_cdc318b3/namespace_cdc318b3
// Params 1, eflags: 0x2 linked
// Checksum 0x5f9bf825, Offset: 0x798
// Size: 0xcc
function function_376d2d76(params) {
    if (!isdefined(level.var_3d1ef3ae)) {
        level.var_3d1ef3ae = "wz_zoo";
        if (isplayer(params.activator)) {
            level thread zm_vo::function_d6f8bbd9(#"hash_69eb5ffc83618a47", 0.5, array(params.activator));
        }
        if (isdefined(self.var_eff718da)) {
            self.var_eff718da thread function_98c21925();
        }
    }
    self deletedelay();
}

// Namespace namespace_cdc318b3/namespace_cdc318b3
// Params 0, eflags: 0x6 linked
// Checksum 0xdfcadf63, Offset: 0x870
// Size: 0xbe
function private function_98c21925() {
    self endon(#"death");
    var_a4d67f13 = int(0.4 * 1000);
    n_rotate_angle = 0.8;
    n_start_time = gettime();
    while (true) {
        self.angles += (n_rotate_angle, 0, 0);
        waitframe(1);
        if (gettime() > n_start_time + var_a4d67f13 / 2) {
            if (gettime() > n_start_time + var_a4d67f13) {
                return;
            }
            n_rotate_angle = -0.5;
        }
    }
}

// Namespace namespace_cdc318b3/namespace_cdc318b3
// Params 1, eflags: 0x2 linked
// Checksum 0xe5ff4091, Offset: 0x938
// Size: 0x74
function function_5e5224f3(instance) {
    level flag::wait_till(#"all_players_spawned");
    /#
        level function_b8a3efea();
    #/
    level.var_f1f2207c = instance;
    level flag::set(#"hash_39fafabacdc6b40f");
}

// Namespace namespace_cdc318b3/namespace_cdc318b3
// Params 0, eflags: 0x2 linked
// Checksum 0x693de6dc, Offset: 0x9b8
// Size: 0x2c
function function_1edea331() {
    if (isdefined(self.var_586fcf0e)) {
        self.var_586fcf0e delete();
    }
}

// Namespace namespace_cdc318b3/namespace_cdc318b3
// Params 0, eflags: 0x2 linked
// Checksum 0x4c7c222f, Offset: 0x9f0
// Size: 0x314
function function_483192e9() {
    level flag::wait_till_any(array(#"hash_39fafabacdc6b40f", #"hash_2621518d33e62ddb"));
    if (level flag::get(#"hash_2621518d33e62ddb")) {
        return;
    }
    player = self;
    if (isdefined(player.var_586fcf0e)) {
        player.var_586fcf0e delete();
    }
    if (isdefined(player)) {
        var_f7b289b6 = level.var_f1f2207c.contentgroups[#"hash_48b2537e8e62dfd6"][0];
        player.var_213dd9cc = player function_5f80f13f();
        var_2b13c8ad = player stats::get_stat(#"hash_2dd2a2b3580dd409", #"rarity_upgrade");
        if (player.var_213dd9cc > 5 && var_2b13c8ad < 3) {
            str_hint = #"hash_2f24d9de64a3968b";
            player.var_586fcf0e = content_manager::spawn_interact(var_f7b289b6, &function_b6b75a5c, str_hint, undefined, 64);
        } else if (player.var_213dd9cc > 3 && var_2b13c8ad < 2) {
            str_hint = #"hash_2e76ea7e946ba2c9";
            player.var_586fcf0e = content_manager::spawn_interact(var_f7b289b6, &function_b6b75a5c, str_hint, undefined, 64);
        } else if (player.var_213dd9cc > 1 && var_2b13c8ad < 1) {
            str_hint = #"hash_65e479e5aa41f008";
            player.var_586fcf0e = content_manager::spawn_interact(var_f7b289b6, &function_b6b75a5c, str_hint, undefined, 64);
        } else if (var_2b13c8ad >= 1) {
            str_hint = #"hash_3f0fe9393b2f5ba8";
            player.var_586fcf0e = content_manager::spawn_interact(var_f7b289b6, &function_a00c368c, str_hint, undefined, 64);
        }
        if (isdefined(player.var_586fcf0e)) {
            player.var_586fcf0e.str_hint = str_hint;
            player.var_586fcf0e setinvisibletoall();
            player.var_586fcf0e setvisibletoplayer(player);
        }
    }
}

// Namespace namespace_cdc318b3/namespace_cdc318b3
// Params 1, eflags: 0x2 linked
// Checksum 0xece4ec32, Offset: 0xd10
// Size: 0x164
function function_a00c368c(params) {
    player = params.activator;
    if (!isplayer(player) || self !== player.var_586fcf0e) {
        return;
    }
    self setinvisibletoplayer(player, 1);
    player stats::set_stat(#"hash_2dd2a2b3580dd409", #"rarity_upgrade", 0);
    /#
        iprintlnbold("<unknown string>");
    #/
    player.var_586fcf0e = undefined;
    player playsound(#"hash_2938f2f8d24851e5");
    player clientfield::increment_to_player("" + #"hash_3d5368e76a98fadb");
    self setinvisibletoall();
    wait(5);
    if (isdefined(player)) {
        player thread function_483192e9();
    }
    self deletedelay();
}

// Namespace namespace_cdc318b3/namespace_cdc318b3
// Params 1, eflags: 0x2 linked
// Checksum 0x6f5bd570, Offset: 0xe80
// Size: 0xaf4
function function_b6b75a5c(params) {
    player = params.activator;
    if (!isplayer(player) || self !== player.var_586fcf0e) {
        return;
    }
    if (player laststand::player_is_in_laststand() || !isalive(player)) {
        return;
    }
    if (is_true(player.is_reviving_any)) {
        return;
    }
    if (is_true(player.var_b895a3ff)) {
        return;
    }
    if (player function_104d7b4d()) {
        return;
    }
    if (!player isonground()) {
        return;
    }
    if (player isswitchingweapons()) {
        return;
    }
    if (player isinvehicle()) {
        return;
    }
    if (player isremotecontrolling() || player util::isusingremote()) {
        return;
    }
    player endon(#"death");
    currentweapon = player getcurrentweapon();
    if (isdefined(currentweapon) && currentweapon != level.weaponnone) {
        if (is_true(currentweapon.isdualwield)) {
            self sethintstring(#"hash_4fa63eab89b31f78");
            b_disabled = 1;
        }
        if (killstreaks::is_killstreak_weapon(currentweapon)) {
            self sethintstring(#"hash_4472fef41a24bd14");
            b_disabled = 1;
        }
        if (is_true(b_disabled)) {
            player.var_586fcf0e = undefined;
            do {
                wait(0.5);
            } while (player getcurrentweapon() === currentweapon);
            if (isdefined(self.str_hint)) {
                self sethintstring(self.str_hint);
            }
            player.var_586fcf0e = self;
            return;
        }
    }
    s_teleport = level.var_f1f2207c.contentgroups[#"hash_380337e1166e8506"][0];
    self setinvisibletoplayer(player, 1);
    if (player getstance() == "prone") {
        player setstance("stand");
    }
    player val::set(#"hash_77da66ec426beca9", #"ignoreme", 1);
    player val::set(#"hash_77da66ec426beca9", #"takedamage", 0);
    player freezecontrolsallowlook(1);
    player notsolid();
    player.var_586fcf0e = undefined;
    var_10afbee = #"hash_7993a7bbe1e394f9";
    if (player.var_213dd9cc > 5 && player stats::get_stat(#"hash_2dd2a2b3580dd409", #"rarity_upgrade") < 3) {
        var_dbf6fe1f = 3;
        var_10afbee = #"hash_346eedb428a22e79";
    } else if (player.var_213dd9cc > 3 && player stats::get_stat(#"hash_2dd2a2b3580dd409", #"rarity_upgrade") < 2) {
        var_dbf6fe1f = 2;
    } else if (player.var_213dd9cc > 1 && player stats::get_stat(#"hash_2dd2a2b3580dd409", #"rarity_upgrade") < 1) {
        var_dbf6fe1f = 1;
    }
    if (isdefined(var_dbf6fe1f)) {
        level thread zm_vo::function_d6f8bbd9(#"hash_54fd752a966b89ac", 0.5, array(player));
        playfxontag(#"hash_2563ac540861f176", player, "j_spine4");
        player playsound(#"hash_60c6324926a9a3ed");
        wait(0.2);
        foreach (other_player in getplayers()) {
            if (player !== other_player) {
                player hidefromplayer(other_player);
            }
        }
        player stats::set_stat(#"hash_2dd2a2b3580dd409", #"rarity_upgrade", var_dbf6fe1f);
        iprintlnbold("Pact is made. Player starting weapon rarity increased to level " + var_dbf6fe1f);
        player clientfield::increment_to_player("" + #"hash_2373d19d48ebba87");
        wait(2.5 + 1.3 * player.var_213dd9cc);
        var_6a25fa7 = player getlightingstate();
        player setlightingstate(2);
        currentweapon = player getcurrentweapon();
        if (is_true(currentweapon.isdualwield)) {
            player switchtoweapon();
        }
        wait(0.75);
        player playsound(#"hash_5a08feddb80a9164");
        v_origin = player.origin;
        player setorigin(s_teleport.origin);
        player setplayerangles(s_teleport.angles);
        player function_c6775cf9("boast_zm_final_quest_interact");
        player.var_aa980bc4 = util::spawn_model(#"hash_74ae399683f5d585", v_origin + (0, 0, 30));
        player.var_aa980bc4 ghost();
        wait(7);
        if (!isdefined(var_6a25fa7)) {
            var_6a25fa7 = 0;
        }
        player setlightingstate(var_6a25fa7);
        player freezecontrolsallowlook(0);
        player thread function_c5d02bee();
        if (isdefined(player.var_aa980bc4)) {
            player.var_aa980bc4 delete();
        }
        player setorigin(v_origin);
        playfxontag(#"hash_2563ac540861f176", player, "j_spine4");
        player playsound(#"hash_3f58b91175fd1c25");
        wait(0.2);
        if (var_dbf6fe1f == 3) {
            player zm_stats::increment_challenge_stat(#"hash_6b661e56021d4c49");
        }
        player function_a43a8406();
        player show();
    }
    player solid();
    player val::reset_all(#"hash_77da66ec426beca9");
    if (player flag::get(#"hash_42976b4822a959ac")) {
        if (!level.zm_hint_text zm_hint_text::is_open(player)) {
            level.zm_hint_text zm_hint_text::open(player);
        }
        level.zm_hint_text zm_hint_text::set_text(player, var_10afbee);
        level.zm_hint_text zm_hint_text::set_visible(player, 1);
        wait(5);
        if (level.zm_hint_text zm_hint_text::is_open(player)) {
            level.zm_hint_text zm_hint_text::close(player);
        }
    }
    self deletedelay();
}

// Namespace namespace_cdc318b3/namespace_cdc318b3
// Params 0, eflags: 0x6 linked
// Checksum 0x56f407a5, Offset: 0x1980
// Size: 0xc4
function private function_c5d02bee() {
    self endon(#"death");
    wait(5);
    var_f7b289b6 = level.var_f1f2207c.contentgroups[#"hash_48b2537e8e62dfd6"][0];
    self.var_586fcf0e = content_manager::spawn_interact(var_f7b289b6, &function_a00c368c, #"hash_3f0fe9393b2f5ba8");
    if (isdefined(self.var_586fcf0e)) {
        self.var_586fcf0e setinvisibletoall();
        self.var_586fcf0e setvisibletoplayer(self);
    }
}

// Namespace namespace_cdc318b3/namespace_cdc318b3
// Params 0, eflags: 0x2 linked
// Checksum 0x374005eb, Offset: 0x1a50
// Size: 0xc2
function function_f2eab818() {
    var_7f595ed0 = self stats::get_stat(#"hash_2dd2a2b3580dd409", #"rarity_upgrade");
    switch (var_7f595ed0) {
    case 1:
        return #"green";
    case 2:
        return #"blue";
    case 3:
        return #"purple";
    default:
        break;
    }
}

// Namespace namespace_cdc318b3/namespace_cdc318b3
// Params 0, eflags: 0x2 linked
// Checksum 0x8b062934, Offset: 0x1b20
// Size: 0x22c
function function_5f80f13f() {
    var_10e6d37f = 0;
    foreach (str_map in array(#"zm_silver", #"zm_gold", #"zm_platinum", #"zm_tungsten", #"wz_forest", #"wz_sanatorium")) {
        b_complete = self stats::get_stat(#"playerstatsbymap", str_map, #"stats", #"main_quest_completed", #"statvalue");
        if (b_complete) {
            var_10e6d37f++;
            continue;
        }
        if (str_map == #"wz_forest" && self zm_stats::get_global_stat(#"hash_172d82afa5eb40a8")) {
            var_10e6d37f++;
            continue;
        }
        if (str_map == #"wz_sanatorium" && self zm_stats::get_global_stat(#"hash_774b3a384fb5ad")) {
            var_10e6d37f++;
            continue;
        }
        if (str_map == #"zm_silver" && self zm_stats::get_global_stat(#"hash_45419091cdb5f154")) {
            var_10e6d37f++;
        }
    }
    return var_10e6d37f;
}

// Namespace namespace_cdc318b3/namespace_cdc318b3
// Params 0, eflags: 0x2 linked
// Checksum 0xda2599c3, Offset: 0x1d58
// Size: 0x270
function function_a43a8406() {
    self flag::clear(#"hash_42976b4822a959ac");
    foreach (str_map in array("zm_silver", "zm_gold", "zm_platinum", "zm_tungsten", "wz_forest", "wz_sanatorium")) {
        b_complete = self stats::get_stat(#"playerstatsbymap", hash(str_map), #"stats", #"main_quest_completed", #"statvalue");
        if (b_complete || str_map == #"wz_forest" && self zm_stats::get_global_stat(#"hash_172d82afa5eb40a8") || str_map == #"wz_sanatorium" && self zm_stats::get_global_stat(#"hash_774b3a384fb5ad") || str_map == #"zm_silver" && self zm_stats::get_global_stat(#"hash_45419091cdb5f154")) {
            if (!self stats::get_stat_global(#"hash_401074a1d763cfe7" + str_map)) {
                self flag::set(#"hash_42976b4822a959ac");
            }
            self zm_stats::increment_challenge_stat(#"hash_401074a1d763cfe7" + str_map);
        }
    }
}

/#

    // Namespace namespace_cdc318b3/namespace_cdc318b3
    // Params 0, eflags: 0x0
    // Checksum 0xd017689c, Offset: 0x1fd0
    // Size: 0x358
    function function_b8a3efea() {
        if (!getdvarint(#"hash_5df55c4b5dbbc9c4", 0)) {
            return;
        }
        foreach (player in getplayers()) {
            foreach (str_map in array("<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>")) {
                n_progress = getdvarint("<unknown string>" + str_map, 0);
                if (n_progress) {
                    if (str_map == "<unknown string>") {
                        player zm_stats::set_global_stat(#"hash_172d82afa5eb40a8", 1);
                        continue;
                    }
                    if (str_map == "<unknown string>") {
                        player zm_stats::set_global_stat(#"hash_774b3a384fb5ad", 1);
                        continue;
                    }
                    player stats::set_stat(#"playerstatsbymap", hash(str_map), #"stats", #"main_quest_completed", #"statvalue", 1);
                }
            }
            n_rarity = getdvarint(#"hash_4a79e82c895372b1", 0);
            if (n_rarity > 5) {
                player stats::set_stat(#"hash_2dd2a2b3580dd409", #"rarity_upgrade", 3);
                continue;
            }
            if (n_rarity > 3) {
                player stats::set_stat(#"hash_2dd2a2b3580dd409", #"rarity_upgrade", 2);
                continue;
            }
            if (n_rarity > 1) {
                player stats::set_stat(#"hash_2dd2a2b3580dd409", #"rarity_upgrade", 1);
            }
        }
    }

#/
