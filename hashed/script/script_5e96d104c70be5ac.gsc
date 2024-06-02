// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using script_437ce686d29bb81b;
#using scripts\weapons\weapons.gsc;
#using scripts\core_common\util_shared.gsc;
#using script_7a8059ca02b7b09e;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\rank_shared.gsc;
#using scripts\core_common\player\player_role.gsc;
#using scripts\core_common\player\player_loadout.gsc;
#using script_1caf36ff04a85ff6;
#using scripts\core_common\item_inventory.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_8d0ae0b4;

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 0, eflags: 0x5
// Checksum 0x42cd2a2e, Offset: 0x140
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_3c80acaf1d791b8c", &preinit, undefined, undefined, #"hash_53528dbbf6cd15c4");
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 0, eflags: 0x6 linked
// Checksum 0xa51d2ffa, Offset: 0x190
// Size: 0x42c
function private preinit() {
    level.var_46821767 = getdvarint(#"hash_661461deeee00da6", 0);
    telemetry::function_98df8818(#"hash_44873692d238cf3b", &function_3f08a12b);
    telemetry::function_98df8818(#"hash_4481df211c9d18aa", &function_3b4b8944);
    telemetry::function_98df8818(#"hash_27cccc0731de1722", &function_1f5722ec);
    callback::on_item_drop(&on_item_drop);
    callback::on_item_pickup(&on_item_pickup);
    callback::on_spawned(&on_player_spawned);
    callback::add_callback(#"hash_17028f0b9883e5be", &function_e38db3d4);
    callback::add_callback(#"objective_ended", &function_f13d2749);
    callback::add_callback(#"hash_276921163232533", &function_8a38be09);
    callback::add_callback(#"hash_29edd9425510b40d", &function_e89b1c3f);
    telemetry::add_callback(#"on_game_playing", &function_72c32279);
    telemetry::add_callback(#"hash_3ca80e35288a78d0", &function_d519e318);
    telemetry::add_callback(#"on_player_connect", &on_player_connect);
    telemetry::add_callback(#"on_player_disconnect", &on_player_disconnect);
    telemetry::add_callback(#"on_round_end", &on_round_end);
    telemetry::add_callback(#"hash_5118a91e667446ee", &on_round_end);
    callback::on_ai_spawned(&on_ai_spawned);
    callback::add_callback(#"on_ai_damage", &on_ai_damage);
    callback::add_callback(#"on_player_damage", &on_player_damage);
    callback::on_ai_killed(&on_ai_killed);
    telemetry::function_98df8818(#"hash_b88b6d2e0028e13", &function_abbc84ad);
    telemetry::function_98df8818(#"hash_42d03088c9b0534b", &function_882720b2);
    telemetry::add_callback(#"hash_1f5aa545c7334d3a", &function_9cac835e);
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 0, eflags: 0x2 linked
// Checksum 0xed83bb18, Offset: 0x5c8
// Size: 0x3c2
function function_72c32279() {
    players = getplayers();
    foreach (player in players) {
        player on_player_connect();
    }
    if (namespace_cf6efd05::function_85b812c9()) {
        return;
    }
    /#
        println("<unknown string>" + getutc());
        println("<unknown string>" + util::get_map_name());
        println("<unknown string>" + level.gametype);
        println("<unknown string>" + sessionmodeisprivateonlinegame());
        println("<unknown string>" + sessionmodeissystemlink());
        println("<unknown string>" + isdedicated());
        println("<unknown string>");
    #/
    utc = getutc();
    if (isdefined(game.telemetry)) {
        game.telemetry.var_dc73ada2 = utc;
    }
    matchstart = {};
    matchstart.var_dc73ada2 = utc;
    matchstart.map = hash(util::get_map_name());
    matchstart.game_type = hash(level.gametype);
    matchstart.var_c8019fa4 = sessionmodeisprivateonlinegame();
    matchstart.var_137fea24 = sessionmodeissystemlink();
    matchstart.is_dedicated = isdedicated();
    matchstart.playlist_id = currentplaylistid();
    matchstart.playlist_name = hash(function_970f37d1());
    matchstart.var_65dcfd4a = getdvarint(#"hash_4c63a0806012e032", 0);
    matchstart.var_a14949d8 = getdvarstring(#"hash_164a9a28628343ef", "");
    function_92d1707f(#"hash_2976350adaf61c93", matchstart);
    if (isdefined(game.telemetry)) {
        game.telemetry.var_29d0de09 = function_f8d53445();
    }
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 0, eflags: 0x2 linked
// Checksum 0x5ecfd3fd, Offset: 0x998
// Size: 0x57c
function function_d519e318() {
    util::function_64ebd94d();
    if (isdefined(game.telemetry)) {
        game.telemetry.var_36b58be2 = 1;
    }
    players = getplayers();
    foreach (player in players) {
        player function_143fa1b9();
    }
    /#
        println("<unknown string>" + function_f8d53445());
        println("<unknown string>" + gettime());
        println("<unknown string>" + util::get_map_name());
        println("<unknown string>" + level.gametype);
        println("<unknown string>" + getutc());
    #/
    utc = getutc();
    matchend = {};
    matchend.var_dc73ada2 = 0;
    matchend.var_44be7e07 = utc;
    matchend.map = hash(util::get_map_name());
    matchend.game_type = hash(level.gametype);
    matchend.var_c8019fa4 = sessionmodeisprivateonlinegame();
    matchend.var_137fea24 = sessionmodeissystemlink();
    matchend.is_dedicated = isdedicated();
    matchend.player_count = 0;
    matchend.life_count = 0;
    matchend.playlist_id = currentplaylistid();
    matchend.playlist_name = hash(function_970f37d1());
    matchend.var_65dcfd4a = getdvarint(#"hash_4c63a0806012e032", 0);
    matchend.var_a14949d8 = getdvarstring(#"hash_164a9a28628343ef", "");
    matchend.var_117bb8b3 = level flag::get(#"hash_4e5756202af6ae94");
    matchend.round_number = isdefined(level.round_number) ? level.round_number : 0;
    matchend.star_level = isdefined(level.var_b48509f9) ? level.var_b48509f9 : 0;
    if (isdefined(game.telemetry.var_dc73ada2)) {
        time_seconds = utc - game.telemetry.var_dc73ada2;
        println("<unknown string>" + time_seconds);
        matchend.var_dc73ada2 = game.telemetry.var_dc73ada2;
    }
    match_duration = function_f8d53445() / 1000;
    println("<unknown string>" + match_duration);
    if (isdefined(game.telemetry.player_count)) {
        println("<unknown string>" + game.telemetry.player_count);
        matchend.player_count = game.telemetry.player_count;
    }
    if (isdefined(game.telemetry.life_count)) {
        println("<unknown string>" + game.telemetry.life_count);
        matchend.life_count = game.telemetry.life_count;
    }
    function_92d1707f(#"hash_572d4a196995ede6", matchend);
    println("<unknown string>");
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 1, eflags: 0x6 linked
// Checksum 0x35f3ae59, Offset: 0xf20
// Size: 0x18c
function private on_round_end(data) {
    var_a5722144 = {};
    var_a5722144.var_29d0de09 = isdefined(game.telemetry.var_29d0de09) ? game.telemetry.var_29d0de09 : 0;
    var_a5722144.var_b0ab3472 = function_f8d53445();
    var_a5722144.var_b4da50f0 = var_a5722144.var_b0ab3472 - var_a5722144.var_29d0de09;
    var_a5722144.round_number = zm_utility::get_round_number();
    players = getplayers();
    foreach (player in players) {
        player function_2d28a3b3(data);
    }
    if (isdefined(game.telemetry)) {
        game.telemetry.var_29d0de09 = var_a5722144.var_b0ab3472;
    }
    function_92d1707f(#"hash_1ddb7882a47b6a1f", var_a5722144);
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 1, eflags: 0x6 linked
// Checksum 0x9b941cb0, Offset: 0x10b8
// Size: 0x13f2
function private function_2d28a3b3(*data) {
    if (!isdefined(self)) {
        return;
    }
    if (!isdefined(self.pers[#"telemetry"])) {
        self.pers[#"telemetry"] = {};
    }
    if (!isdefined(self.pers[#"telemetry"].var_ff8bd64a)) {
        self.pers[#"telemetry"].var_ff8bd64a = {};
    }
    playerdata = {};
    if (isdefined(self.pers)) {
        playerdata.score = isdefined(self.pers[#"score"]) ? self.pers[#"score"] : 0;
        playerdata.kills = isdefined(self.pers[#"kills"]) ? self.pers[#"kills"] : 0;
        playerdata.deaths = isdefined(self.pers[#"deaths"]) ? self.pers[#"deaths"] : 0;
    }
    playerdata.var_d0266750 = int(max((isdefined(self.pers[#"score"]) ? self.pers[#"score"] : 0) - (isdefined(self.pers[#"telemetry"].var_ff8bd64a.score) ? self.pers[#"telemetry"].var_ff8bd64a.score : 0), 0));
    playerdata.var_832beab2 = int(max((isdefined(self.pers[#"kills"]) ? self.pers[#"kills"] : 0) - (isdefined(self.pers[#"telemetry"].var_ff8bd64a.kills) ? self.pers[#"telemetry"].var_ff8bd64a.kills : 0), 0));
    var_60851c1 = int(self rank::function_5b197def(0) - (isdefined(self.pers[#"telemetry"].var_a1938c60) ? self.pers[#"telemetry"].var_a1938c60 : 0));
    var_af273c68 = int(self rank::function_5b197def(1) - (isdefined(self.pers[#"telemetry"].var_970f034c) ? self.pers[#"telemetry"].var_970f034c : 0));
    var_665cf4ce = int(self rank::function_5b197def(5) - (isdefined(self.pers[#"telemetry"].var_12173831) ? self.pers[#"telemetry"].var_12173831 : 0));
    var_b8b0d676 = int(self rank::function_5b197def(2) - (isdefined(self.pers[#"telemetry"].var_43ab3c14) ? self.pers[#"telemetry"].var_43ab3c14 : 0));
    var_7fe08e84 = int(self rank::function_5b197def(4) - (isdefined(self.pers[#"telemetry"].var_9b0e83ac) ? self.pers[#"telemetry"].var_9b0e83ac : 0));
    var_3874f1f2 = int(self rank::getrankxp() - (isdefined(self.pers[#"telemetry"].xp_at_start) ? self.pers[#"telemetry"].xp_at_start : 0));
    if (zm_utility::is_survival()) {
        playerdata.var_819cb855 = var_60851c1;
        playerdata.var_bf725dc2 = var_af273c68;
        playerdata.var_dcf31c62 = var_665cf4ce;
        playerdata.var_776b5e62 = var_b8b0d676;
        playerdata.var_f86edb1e = var_7fe08e84;
        playerdata.var_50941cea = var_3874f1f2;
    } else {
        playerdata.var_819cb855 = int(max(0, var_60851c1 - (isdefined(self.pers[#"telemetry"].var_ff8bd64a.var_60851c1) ? self.pers[#"telemetry"].var_ff8bd64a.var_60851c1 : 0)));
        playerdata.var_bf725dc2 = int(max(0, var_af273c68 - (isdefined(self.pers[#"telemetry"].var_ff8bd64a.var_af273c68) ? self.pers[#"telemetry"].var_ff8bd64a.var_af273c68 : 0)));
        playerdata.var_dcf31c62 = int(max(0, var_665cf4ce - (isdefined(self.pers[#"telemetry"].var_ff8bd64a.var_665cf4ce) ? self.pers[#"telemetry"].var_ff8bd64a.var_665cf4ce : 0)));
        playerdata.var_776b5e62 = int(max(0, var_b8b0d676 - (isdefined(self.pers[#"telemetry"].var_ff8bd64a.var_b8b0d676) ? self.pers[#"telemetry"].var_ff8bd64a.var_b8b0d676 : 0)));
        playerdata.var_f86edb1e = int(max(0, var_7fe08e84 - (isdefined(self.pers[#"telemetry"].var_ff8bd64a.var_7fe08e84) ? self.pers[#"telemetry"].var_ff8bd64a.var_7fe08e84 : 0)));
        playerdata.var_50941cea = int(max(0, var_3874f1f2 - (isdefined(self.pers[#"telemetry"].var_ff8bd64a.var_3874f1f2) ? self.pers[#"telemetry"].var_ff8bd64a.var_3874f1f2 : 0)));
    }
    playerdata.round_number = zm_utility::get_round_number();
    playerdata.var_29d0de09 = isdefined(game.telemetry.var_29d0de09) ? game.telemetry.var_29d0de09 : 0;
    playerdata.var_b0ab3472 = function_f8d53445();
    playerdata.var_b4da50f0 = playerdata.var_b0ab3472 - playerdata.var_29d0de09;
    var_4e4f65c9 = undefined;
    if (isdefined(self.inventory.items[17 + 1])) {
        var_4e4f65c9 = self.inventory.items[17 + 1];
    }
    primary_weapon = undefined;
    if (isdefined(self.weapon_array_primary[0])) {
        primary_weapon = self.weapon_array_primary[0];
    }
    playerdata.var_4f84f11f = isdefined(primary_weapon.statname) ? primary_weapon.statname : #"";
    playerdata.var_1fc74cc3 = hash(isdefined(var_4e4f65c9.itementry.rarity) ? var_4e4f65c9.itementry.rarity : #"");
    playerdata.var_7acc0bf9 = [];
    if (isdefined(primary_weapon.attachments) && primary_weapon.attachments.size > 0) {
        attachments = [];
        foreach (attachment in primary_weapon.attachments) {
            if (!isdefined(attachments)) {
                attachments = [];
            } else if (!isarray(attachments)) {
                attachments = array(attachments);
            }
            attachments[attachments.size] = hash(attachment);
        }
        playerdata.var_7acc0bf9 = attachments;
    }
    playerdata.var_649035df = isdefined(var_4e4f65c9.paplv) ? var_4e4f65c9.paplv : 0;
    playerdata.var_2eee3e82 = isdefined(var_4e4f65c9.aat) ? var_4e4f65c9.aat : "";
    var_ec323ef9 = undefined;
    if (isdefined(self.inventory.items[17 + 1 + 8 + 1])) {
        var_ec323ef9 = self.inventory.items[17 + 1 + 8 + 1];
    }
    secondary_weapon = undefined;
    if (isdefined(self.weapon_array_primary[1])) {
        secondary_weapon = self.weapon_array_primary[1];
    }
    playerdata.var_e6cbc2be = isdefined(secondary_weapon.statname) ? secondary_weapon.statname : #"";
    playerdata.var_882c8428 = hash(isdefined(var_ec323ef9.itementry.rarity) ? var_ec323ef9.itementry.rarity : #"");
    playerdata.var_a76d2c9b = [];
    if (isdefined(secondary_weapon.attachments) && secondary_weapon.attachments.size > 0) {
        attachments = [];
        foreach (attachment in secondary_weapon.attachments) {
            if (!isdefined(attachments)) {
                attachments = [];
            } else if (!isarray(attachments)) {
                attachments = array(attachments);
            }
            attachments[attachments.size] = hash(attachment);
        }
        playerdata.var_a76d2c9b = attachments;
    }
    playerdata.var_df0e6d74 = isdefined(var_ec323ef9.paplv) ? var_ec323ef9.paplv : 0;
    playerdata.var_fed00167 = isdefined(var_ec323ef9.aat) ? var_ec323ef9.aat : "";
    var_b8061637 = undefined;
    if (isdefined(self.inventory.items[17 + 1 + 8 + 1 + 8 + 1])) {
        var_b8061637 = self.inventory.items[17 + 1 + 8 + 1 + 8 + 1];
    }
    var_5b871ec1 = undefined;
    if (isdefined(self.weapon_array_primary[2])) {
        var_5b871ec1 = self.weapon_array_primary[2];
    }
    playerdata.var_a1806a93 = isdefined(var_5b871ec1.statname) ? var_5b871ec1.statname : #"";
    playerdata.var_de02c9bb = hash(isdefined(var_b8061637.itementry.rarity) ? var_b8061637.itementry.rarity : #"");
    playerdata.var_561e72d = [];
    if (isdefined(var_5b871ec1.attachments) && var_5b871ec1.attachments.size > 0) {
        attachments = [];
        foreach (attachment in var_5b871ec1.attachments) {
            if (!isdefined(attachments)) {
                attachments = [];
            } else if (!isarray(attachments)) {
                attachments = array(attachments);
            }
            attachments[attachments.size] = hash(attachment);
        }
        playerdata.var_561e72d = attachments;
    }
    playerdata.var_c9898a6c = isdefined(var_b8061637.paplv) ? var_b8061637.paplv : 0;
    playerdata.var_63bb7027 = isdefined(var_b8061637.aat) ? var_b8061637.aat : "";
    playerdata.star_level = isdefined(level.var_b48509f9) ? level.var_b48509f9 : 0;
    playerdata.var_f0115c3e = int(isdefined(self.var_f2922211) ? self.var_f2922211 : 0);
    var_4c75e3b8 = zm_utility::is_survival() ? self.var_3b4f6b37 : zm_utility::function_c200446c() ? self.var_1096b5c0 : self.var_8d41c907;
    playerdata.var_c74d76f3 = int(isdefined(var_4c75e3b8) ? var_4c75e3b8 : 0);
    function_4bd3e96c();
    if (!isdefined(self)) {
        return;
    }
    self.pers[#"hash_69b63c99be1fb428"] = [];
    self function_678f57c8(#"hash_6e340d9d9e255e95", playerdata);
    self.pers[#"telemetry"].var_ff8bd64a.score = playerdata.score;
    self.pers[#"telemetry"].var_ff8bd64a.kills = playerdata.kills;
    self.pers[#"telemetry"].var_ff8bd64a.var_60851c1 = var_60851c1;
    self.pers[#"telemetry"].var_ff8bd64a.var_af273c68 = var_af273c68;
    self.pers[#"telemetry"].var_ff8bd64a.var_665cf4ce = var_665cf4ce;
    self.pers[#"telemetry"].var_ff8bd64a.var_b8b0d676 = var_b8b0d676;
    self.pers[#"telemetry"].var_ff8bd64a.var_7fe08e84 = var_7fe08e84;
    self.pers[#"telemetry"].var_ff8bd64a.var_3874f1f2 = var_3874f1f2;
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 0, eflags: 0x6 linked
// Checksum 0x810005eb, Offset: 0x24b8
// Size: 0x366
function private function_4bd3e96c() {
    weapons::update_last_held_weapon_timings(gettime(), self.currentweapon);
    if (isdefined(self.pers[#"hash_69b63c99be1fb428"])) {
        weapon_names = getarraykeys(self.pers[#"hash_69b63c99be1fb428"]);
        for (weapon_index = 0; weapon_index < weapon_names.size; weapon_index += 1) {
            weapon_name = weapon_names[weapon_index];
            var_dc08e79b = self.pers[#"hash_69b63c99be1fb428"][weapon_name];
            var_fa5921b6 = var_dc08e79b[#"xpearned"];
            if (isdefined(var_fa5921b6) && var_fa5921b6 > 0) {
                var_cad81941 = {#weapon_name:weapon_name, #time_used_s:isdefined(var_dc08e79b[#"timeused"]) ? var_dc08e79b[#"timeused"] : 0, #kills:isdefined(var_dc08e79b[#"kills"]) ? var_dc08e79b[#"kills"] : 0, #shots:isdefined(var_dc08e79b[#"shots"]) ? var_dc08e79b[#"shots"] : 0, #hits:isdefined(var_dc08e79b[#"hits"]) ? var_dc08e79b[#"hits"] : 0, #var_fa5921b6:isdefined(var_dc08e79b[#"xpearned"]) ? var_dc08e79b[#"xpearned"] : 0, #game_type:hash(isdefined(level.gametype) ? level.gametype : #""), #round_number:zm_utility::get_round_number(), #star_level:zm_utility::function_e3025ca5(), #flourish_count:isdefined(var_dc08e79b[#"flourish_count"]) ? var_dc08e79b[#"flourish_count"] : 0};
                self function_678f57c8(#"hash_2da62e026250c65e", var_cad81941);
            }
        }
    }
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 1, eflags: 0x2 linked
// Checksum 0x62bec32e, Offset: 0x2828
// Size: 0x544
function on_player_connect(*data) {
    if (!is_true(self.pers[#"telemetry"].connected)) {
        /#
            println("<unknown string>" + gettime());
            println("<unknown string>" + getutc());
            println("<unknown string>" + self.name);
        #/
        self.pers[#"weaponstats"] = [];
        if (!isdefined(self.pers[#"telemetry"])) {
            self.pers[#"telemetry"] = {};
        }
        if (!isdefined(self.pers[#"telemetry"].utc_connect_time_s)) {
            self.pers[#"telemetry"].utc_connect_time_s = getutc();
        }
        self.pers[#"telemetry"].connected = 1;
        self.pers[#"telemetry"].xp_at_start = self rank::getrankxp();
        self.pers[#"telemetry"].var_a1938c60 = self rank::function_5b197def(0);
        self.pers[#"telemetry"].var_970f034c = self rank::function_5b197def(1);
        self.pers[#"telemetry"].var_43ab3c14 = self rank::function_5b197def(2);
        self.pers[#"telemetry"].var_9c4d3f78 = self rank::function_5b197def(3);
        self.pers[#"telemetry"].var_12173831 = self rank::function_5b197def(5);
        self.pers[#"telemetry"].var_9f177532 = self rank::getrank();
        if (namespace_cf6efd05::function_85b812c9()) {
            if (!isdefined(self.pers[#"telemetry"])) {
                self.pers[#"telemetry"] = {};
            }
            self.pers[#"telemetry"].connected = 1;
            return;
        }
        if (isdefined(game.telemetry.player_count)) {
            self.pers[#"telemetry"].var_6ba64843 = game.telemetry.player_count;
            game.telemetry.player_count++;
            println("<unknown string>" + game.telemetry.player_count);
        } else {
            println("<unknown string>");
            return;
        }
        println("<unknown string>");
        playerdata = {};
        playerdata.utc_connect_time_s = self.pers[#"telemetry"].utc_connect_time_s;
        playerdata.var_6ba64843 = isdefined(self.pers[#"telemetry"].var_6ba64843) ? self.pers[#"telemetry"].var_6ba64843 : 0;
        playerdata.var_524ab934 = self function_d40f1a0e();
        playerdata.var_504e19f4 = self function_21f71ac8();
        playerdata.var_68441d6f = self function_325dc923();
        self function_678f57c8(#"hash_577b6d450d80cbd5", playerdata);
    }
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 1, eflags: 0x2 linked
// Checksum 0xfe29f96, Offset: 0x2d78
// Size: 0x2e
function function_b9cd2b6c(xp) {
    game.telemetry.var_dd636281 = isdefined(xp) ? xp : 0;
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 0, eflags: 0x2 linked
// Checksum 0x6ea04b4b, Offset: 0x2db0
// Size: 0x904
function function_143fa1b9() {
    if (!is_true(self.pers[#"telemetry"].connected)) {
        return;
    }
    self.pers[#"telemetry"].connected = 0;
    playerdata = {};
    /#
        println("<unknown string>" + self.name);
        println("<unknown string>" + gettime());
    #/
    playerdata.utc_connect_time_s = 0;
    playerdata.utc_disconnect_time_s = 0;
    playerdata.var_37b8e421 = 0;
    utc = getutc();
    if (isdefined(self.pers[#"telemetry"].utc_connect_time_s)) {
        playerdata.utc_connect_time_s = self.pers[#"telemetry"].utc_connect_time_s;
        playerdata.utc_disconnect_time_s = utc;
        playerdata.var_37b8e421 = utc - playerdata.utc_connect_time_s;
    }
    playerdata.var_6ba64843 = isdefined(self.pers[#"telemetry"].var_6ba64843) ? self.pers[#"telemetry"].var_6ba64843 : 0;
    if (isdefined(self.pers)) {
        playerdata.score = isdefined(self.pers[#"score"]) ? self.pers[#"score"] : 0;
        playerdata.kills = isdefined(self.pers[#"kills"]) ? self.pers[#"kills"] : 0;
        playerdata.deaths = isdefined(self.pers[#"deaths"]) ? self.pers[#"deaths"] : 0;
        playerdata.headshots = isdefined(self.pers[#"headshots"]) ? self.pers[#"headshots"] : 0;
        playerdata.suicides = isdefined(self.pers[#"suicides"]) ? self.pers[#"suicides"] : 0;
    }
    playerdata.xp_at_start = isdefined(self.pers[#"telemetry"].xp_at_start) ? self.pers[#"telemetry"].xp_at_start : 0;
    playerdata.xp_at_end = self rank::getrankxp();
    playerdata.var_a1938c60 = isdefined(self.pers[#"telemetry"].var_a1938c60) ? self.pers[#"telemetry"].var_a1938c60 : 0;
    playerdata.var_7ddf8420 = self rank::function_5b197def(0);
    playerdata.var_970f034c = isdefined(self.pers[#"telemetry"].var_970f034c) ? self.pers[#"telemetry"].var_970f034c : 0;
    playerdata.var_b7d93a80 = self rank::function_5b197def(1);
    playerdata.var_43ab3c14 = isdefined(self.pers[#"telemetry"].var_43ab3c14) ? self.pers[#"telemetry"].var_43ab3c14 : 0;
    playerdata.var_460c9ce = self rank::function_5b197def(2);
    playerdata.var_9c4d3f78 = isdefined(self.pers[#"telemetry"].var_9c4d3f78) ? self.pers[#"telemetry"].var_9c4d3f78 : 0;
    playerdata.var_5f67b464 = self rank::function_5b197def(3);
    playerdata.var_12173831 = isdefined(self.pers[#"telemetry"].var_12173831) ? self.pers[#"telemetry"].var_12173831 : 0;
    playerdata.var_c4d676ee = self rank::function_5b197def(5);
    playerdata.var_9f177532 = isdefined(self.pers[#"telemetry"].var_9f177532) ? self.pers[#"telemetry"].var_9f177532 : 0;
    playerdata.var_735f5996 = self rank::getrank();
    if (!is_true(level.disablestattracking)) {
        playerdata.var_9ffd4086 = self zm_stats::function_529e1302(#"kills");
        playerdata.var_56c22769 = self zm_stats::function_529e1302(#"deaths");
        playerdata.var_4ab9220a = self zm_stats::function_529e1302(#"score");
    }
    sessionmode = currentsessionmode();
    if (sessionmode !== 4) {
        role = self player_role::get();
        var_a791abd1 = function_b14806c6(role, sessionmode);
    }
    playerdata.operator = isdefined(var_a791abd1) ? var_a791abd1 : 0;
    playerdata.var_887376f4 = self getcharacterlootid();
    playerdata.var_161a9fc9 = 0;
    if (!is_true(game.telemetry.var_36b58be2)) {
        playerdata.var_161a9fc9 = 1;
    }
    playerdata.round_number = zm_utility::get_round_number();
    playerdata.star_level = zm_utility::function_e3025ca5();
    playerdata.var_c3b47473 = isdefined(game.telemetry.var_dd636281) ? game.telemetry.var_dd636281 : 0;
    if (is_true(level.host_ended_game)) {
        playerdata.var_a3ba1678 = #"hash_95f500e64a2ae03";
    } else if (is_true(self.var_b9ff264c)) {
        playerdata.var_a3ba1678 = #"win";
    } else {
        playerdata.var_a3ba1678 = #"loss";
    }
    self function_678f57c8(#"hash_60754262dd09efac", playerdata);
    self function_e5d9f30(playerdata.score, playerdata.kills, playerdata.deaths, playerdata.headshots, playerdata.suicides, playerdata.xp_at_start, playerdata.xp_at_end, playerdata.var_9f177532, playerdata.var_735f5996, zm_utility::get_round_number(), playerdata.var_37b8e421);
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 1, eflags: 0x2 linked
// Checksum 0x3f97f6ac, Offset: 0x36c0
// Size: 0x24
function on_player_disconnect(*data) {
    self function_143fa1b9();
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 0, eflags: 0x2 linked
// Checksum 0x59d2112c, Offset: 0x36f0
// Size: 0x1a4
function on_player_spawned() {
    if (!isdefined(self.pers[#"telemetry"])) {
        self.pers[#"telemetry"] = {};
    }
    self.pers[#"telemetry"].life = {};
    self.pers[#"telemetry"].life.var_62c7b24e = function_f8d53445();
    self.pers[#"telemetry"].life.spawn_origin = self.origin;
    if (isdefined(game.telemetry.life_count)) {
        self.pers[#"telemetry"].life.life_index = game.telemetry.life_count;
        game.telemetry.life_count++;
        /#
            println("<unknown string>" + self.name);
            println("<unknown string>" + game.telemetry.life_count);
        #/
    }
    println("<unknown string>");
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 1, eflags: 0x6 linked
// Checksum 0xfde597, Offset: 0x38a0
// Size: 0xd4
function private function_3f08a12b(data) {
    assert(isdefined(data.weapon), "<unknown string>");
    var_abb39438 = {};
    var_abb39438.wallbuy_weapon = data.weapon.statname;
    var_abb39438.weapon_rarity = hash(data.rarity);
    var_abb39438.round_number = zm_utility::get_round_number();
    var_abb39438.star_level = zm_utility::function_e3025ca5();
    data.purchaser function_678f57c8(#"hash_6fc06e3919c02137", var_abb39438);
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 1, eflags: 0x6 linked
// Checksum 0xa76c66a3, Offset: 0x3980
// Size: 0x23c
function private on_item_pickup(params) {
    item = params.item;
    weapon = namespace_a0d533d1::function_2b83d3ff(item);
    if (isdefined(item) && isdefined(weapon)) {
        weapon.var_dc9b0289 = gettime();
        if (is_true(params.var_7b753bce)) {
            itemdata = {};
            itemdata.weapon = weapon.statname;
            itemdata.weapon_rarity = hash(item.itementry.rarity);
            if (weapon.attachments.size > 0) {
                attachments = [];
                foreach (attachment in weapon.attachments) {
                    if (!isdefined(attachments)) {
                        attachments = [];
                    } else if (!isarray(attachments)) {
                        attachments = array(attachments);
                    }
                    attachments[attachments.size] = hash(attachment);
                }
                itemdata.weapon_attachments = attachments;
            }
            itemdata.var_ae6a042c = item.paplv;
            itemdata.var_78a16b58 = item.aat;
            itemdata.round_number = zm_utility::get_round_number();
            itemdata.star_level = zm_utility::function_e3025ca5();
            params.player function_678f57c8(#"hash_1191dc74fe41b6a", itemdata);
        }
    }
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 1, eflags: 0x6 linked
// Checksum 0xfb50d15f, Offset: 0x3bc8
// Size: 0x234
function private on_item_drop(params) {
    item = params.item;
    weapon = namespace_a0d533d1::function_2b83d3ff(item);
    if (isdefined(item) && isdefined(weapon)) {
        itemdata = {};
        itemdata.weapon = weapon.statname;
        itemdata.weapon_rarity = hash(item.itementry.rarity);
        if (weapon.attachments.size > 0) {
            attachments = [];
            foreach (attachment in weapon.attachments) {
                if (!isdefined(attachments)) {
                    attachments = [];
                } else if (!isarray(attachments)) {
                    attachments = array(attachments);
                }
                attachments[attachments.size] = hash(attachment);
            }
            itemdata.weapon_attachments = attachments;
        }
        itemdata.var_ae6a042c = item.paplv;
        itemdata.var_78a16b58 = item.aat;
        itemdata.round_number = zm_utility::get_round_number();
        itemdata.star_level = zm_utility::function_e3025ca5();
        if (isdefined(weapon.var_dc9b0289)) {
            itemdata.duration_ms = gettime() - weapon.var_dc9b0289;
        }
        self function_678f57c8(#"hash_225909f0b104b123", itemdata);
    }
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 1, eflags: 0x6 linked
// Checksum 0x777334b9, Offset: 0x3e08
// Size: 0xa4
function private function_1f5722ec(data) {
    if (!isplayer(data.player)) {
        return;
    }
    if (is_true(game.telemetry.var_3bee079a[data.player getentitynumber()])) {
        data.round = (isdefined(level.round_number) ? level.round_number : 0) + 1;
        function_2d2b9f81(data);
    }
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 1, eflags: 0x6 linked
// Checksum 0xc27d1d1b, Offset: 0x3eb8
// Size: 0xf4
function private function_3b4b8944(data) {
    if (!isplayer(data.player)) {
        return;
    }
    if (!isdefined(game.telemetry.var_3bee079a)) {
        game.telemetry.var_3bee079a = [];
    }
    if (!isdefined(game.telemetry.var_3bee079a[data.player getentitynumber()])) {
        game.telemetry.var_3bee079a[data.player getentitynumber()] = 1;
    }
    data.round = isdefined(level.round_number) ? level.round_number : 0;
    function_2d2b9f81(data);
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 1, eflags: 0x6 linked
// Checksum 0xe0d134d5, Offset: 0x3fb8
// Size: 0xe4
function private function_2d2b9f81(data) {
    loadoutdata = {};
    primaryweapon = data.player getloadoutweapon(data.player.class_num, "primary");
    loadoutdata.weapon = primaryweapon.statname;
    var_c9ec28d9 = data.player function_b958b70d(data.player.class_num, "specialgrenade");
    loadoutdata.field_upgrade = var_c9ec28d9;
    loadoutdata.round_number = data.round;
    data.player function_678f57c8(#"hash_193890e3bb1b528f", loadoutdata);
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 1, eflags: 0x2 linked
// Checksum 0xc8ce3fe3, Offset: 0x40a8
// Size: 0x320
function function_abbc84ad(data) {
    if (level.var_46821767 === 1) {
        return;
    }
    key = data.weapon.statname;
    if (!isdefined(data.player.pers[#"weaponstats"])) {
        data.player.pers[#"weaponstats"] = [];
    }
    if (!isdefined(data.player.pers[#"weaponstats"][key])) {
        data.player.pers[#"weaponstats"][key] = [];
    }
    if (!isdefined(data.player.pers[#"weaponstats"][key][data.statname])) {
        data.player.pers[#"weaponstats"][key][data.statname] = 0;
    }
    data.player.pers[#"weaponstats"][key][data.statname] = data.player.pers[#"weaponstats"][key][data.statname] + data.value;
    if (!isdefined(data.player.pers[#"hash_69b63c99be1fb428"])) {
        data.player.pers[#"hash_69b63c99be1fb428"] = [];
    }
    if (!isdefined(data.player.pers[#"hash_69b63c99be1fb428"][key])) {
        data.player.pers[#"hash_69b63c99be1fb428"][key] = [];
    }
    if (!isdefined(data.player.pers[#"hash_69b63c99be1fb428"][key][data.statname])) {
        data.player.pers[#"hash_69b63c99be1fb428"][key][data.statname] = 0;
    }
    data.player.pers[#"hash_69b63c99be1fb428"][key][data.statname] = data.player.pers[#"hash_69b63c99be1fb428"][key][data.statname] + data.value;
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 1, eflags: 0x6 linked
// Checksum 0x17ee31d4, Offset: 0x43d0
// Size: 0x5ec
function private function_8a38be09(*params) {
    if (!zm_utility::is_survival()) {
        return;
    }
    level endon(#"end_game");
    if (namespace_cf6efd05::function_85b812c9()) {
        level flag::wait_till(#"initial_fade_in_complete");
    } else {
        level flag::wait_till("intro_scene_done");
    }
    level.var_7cb19409 = function_f8d53445();
    players = getplayers();
    foreach (player in players) {
        if (!isdefined(player.pers)) {
            player.pers = {};
        }
        if (!isdefined(player.pers[#"telemetry"])) {
            player.pers[#"telemetry"] = {};
        }
        if (!isdefined(player.pers[#"telemetry"].var_ff8bd64a)) {
            player.pers[#"telemetry"].var_ff8bd64a = {};
        }
        player.pers[#"telemetry"].var_ff8bd64a.score = isdefined(player.pers[#"score"]) ? player.pers[#"score"] : 0;
        player.pers[#"telemetry"].var_ff8bd64a.kills = isdefined(player.pers[#"kills"]) ? player.pers[#"kills"] : 0;
        player.pers[#"telemetry"].var_ff8bd64a.var_60851c1 = isdefined(player.pers[#"telemetry"].var_a1938c60) ? player.pers[#"telemetry"].var_a1938c60 : 0;
        player.pers[#"telemetry"].var_ff8bd64a.var_af273c68 = isdefined(player.pers[#"telemetry"].var_970f034c) ? player.pers[#"telemetry"].var_970f034c : 0;
        player.pers[#"telemetry"].var_ff8bd64a.var_665cf4ce = isdefined(player.pers[#"telemetry"].var_12173831) ? player.pers[#"telemetry"].var_12173831 : 0;
        player.pers[#"telemetry"].var_ff8bd64a.var_b8b0d676 = isdefined(player.pers[#"telemetry"].var_43ab3c14) ? player.pers[#"telemetry"].var_43ab3c14 : 0;
        player.pers[#"telemetry"].var_ff8bd64a.var_7fe08e84 = isdefined(player.pers[#"telemetry"].var_9b0e83ac) ? player.pers[#"telemetry"].var_9b0e83ac : 0;
        player.pers[#"telemetry"].var_ff8bd64a.var_3874f1f2 = isdefined(player.pers[#"telemetry"].xp_at_start) ? player.pers[#"telemetry"].xp_at_start : 0;
    }
    var_bdad1c21 = {#var_579fb993:level.script, #var_e4ca5a4b:level.var_7cb19409, #var_c2b4f8d0:level.var_b48509f9, #var_ea3397d3:getplayers().size, #var_b8cbcff2:hash(isdefined(level.contentmanager.var_1fcbdf50) ? level.contentmanager.var_1fcbdf50 : #"")};
    function_92d1707f(#"hash_424c5668eaeebb31", var_bdad1c21);
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 1, eflags: 0x6 linked
// Checksum 0x4150c8b1, Offset: 0x49c8
// Size: 0x294
function private function_e89b1c3f(*params) {
    if (!zm_utility::is_survival()) {
        return;
    }
    var_b48509f9 = level.var_b48509f9;
    players = getplayers();
    foreach (player in players) {
        player function_2d28a3b3();
    }
    if (isdefined(level.var_7cb19409)) {
        var_199a2a04 = function_f8d53445() - level.var_7cb19409;
    }
    var_bdad1c21 = {#var_579fb993:isdefined(level.script) ? level.script : "", #var_e4ca5a4b:isdefined(level.var_7cb19409) ? level.var_7cb19409 : 0, #var_44bf1770:function_f8d53445(), #var_395efa0a:isdefined(var_199a2a04) ? var_199a2a04 : 0, #var_c2b4f8d0:isdefined(var_b48509f9) ? var_b48509f9 : 0, #var_ea3397d3:getplayers().size, #var_b8cbcff2:hash(isdefined(level.contentmanager.var_1fcbdf50) ? level.contentmanager.var_1fcbdf50 : #"")};
    level.var_7cb19409 = undefined;
    function_92d1707f(#"hash_424c5668eaeebb31", var_bdad1c21);
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 2, eflags: 0x6 linked
// Checksum 0xf9cb3149, Offset: 0x4c68
// Size: 0x41c
function private function_e38db3d4(params, *activator) {
    if (!zm_utility::is_survival()) {
        return;
    }
    players = getplayers();
    foreach (player in players) {
        player.pers[#"telemetry"].var_6cdd00ea = 1;
        player.pers[#"telemetry"].var_8ee56f34 = player rank::getrankxp();
        player.pers[#"telemetry"].var_9351f0d = player rank::function_5b197def(0);
        player.pers[#"telemetry"].var_14ae9569 = player rank::function_5b197def(1);
        player.pers[#"telemetry"].var_dd546227 = player rank::function_5b197def(2);
        player.pers[#"telemetry"].var_902d7325 = player rank::function_5b197def(3);
        player.pers[#"telemetry"].var_ccd5da9e = player rank::function_5b197def(5);
        player.pers[#"telemetry"].var_89b3f8b0 = player.kills;
    }
    level.var_f099aebe = function_f8d53445();
    var_8c24333b = {#var_4472945a:isdefined(activator.instance.content_script_name) ? activator.instance.content_script_name : "", #var_fffcd514:isdefined(level.var_f099aebe) ? level.var_f099aebe : 0, #var_90f03449:isdefined(level.script) ? level.script : "", #var_ac2606df:isdefined(activator.instance.location.targetname) ? activator.instance.location.targetname : "", #var_174b4191:isdefined(level.var_b48509f9) ? level.var_b48509f9 : 0, #var_adfc9a7e:getplayers().size};
    function_92d1707f(#"hash_7c94738a8f65d945", var_8c24333b);
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 1, eflags: 0x6 linked
// Checksum 0x18b7d272, Offset: 0x5090
// Size: 0x738
function private function_f13d2749(params) {
    if (!zm_utility::is_survival()) {
        return;
    }
    if (isdefined(level.var_f099aebe)) {
        var_ecd4394f = function_f8d53445() - level.var_f099aebe;
    }
    var_8c24333b = {#var_4472945a:isdefined(params.instance.content_script_name) ? params.instance.content_script_name : "", #var_fffcd514:isdefined(level.var_f099aebe) ? level.var_f099aebe : 0, #var_26d27f23:function_f8d53445(), #var_90f03449:isdefined(level.script) ? level.script : "", #var_ac2606df:isdefined(params.instance.location.targetname) ? params.instance.location.targetname : "", #var_85aa2ee9:isdefined(var_ecd4394f) ? var_ecd4394f : 0, #var_a32e2b21:is_true(params.completed), #var_174b4191:isdefined(level.var_b48509f9) ? level.var_b48509f9 : 0, #var_adfc9a7e:getplayers().size};
    level.var_f099aebe = undefined;
    function_92d1707f(#"hash_7c94738a8f65d945", var_8c24333b);
    players = getplayers();
    foreach (player in players) {
        if (!is_true(player.pers[#"telemetry"].var_6cdd00ea)) {
            return;
        }
        player.pers[#"telemetry"].var_6cdd00ea = 0;
        var_6e09d7 = player rank::getrankxp() - (isdefined(player.pers[#"telemetry"].var_8ee56f34) ? player.pers[#"telemetry"].var_8ee56f34 : 0);
        var_f4090d6e = player rank::function_5b197def(0) - (isdefined(player.pers[#"telemetry"].var_9351f0d) ? player.pers[#"telemetry"].var_9351f0d : 0);
        var_8ce60ee4 = player rank::function_5b197def(1) - (isdefined(player.pers[#"telemetry"].var_14ae9569) ? player.pers[#"telemetry"].var_14ae9569 : 0);
        var_c0c8369d = player rank::function_5b197def(2) - (isdefined(player.pers[#"telemetry"].var_dd546227) ? player.pers[#"telemetry"].var_dd546227 : 0);
        var_7284764c = player rank::function_5b197def(5) - (isdefined(player.pers[#"telemetry"].var_ccd5da9e) ? player.pers[#"telemetry"].var_ccd5da9e : 0);
        var_5ebc1188 = player.kills - (isdefined(player.pers[#"telemetry"].var_89b3f8b0) ? player.pers[#"telemetry"].var_89b3f8b0 : 0);
        var_b1c6f834 = {#var_df4d256:isdefined(var_6e09d7) ? var_6e09d7 : 0, #var_7ce7929c:isdefined(var_f4090d6e) ? var_f4090d6e : 0, #var_6cf5475f:isdefined(var_8ce60ee4) ? var_8ce60ee4 : 0, #var_30171d91:isdefined(var_c0c8369d) ? var_c0c8369d : 0, #var_f58a5ef3:isdefined(var_7284764c) ? var_7284764c : 0, #var_c56e97ce:isdefined(var_5ebc1188) ? var_5ebc1188 : 0, #var_4472945a:isdefined(params.instance.content_script_name) ? params.instance.content_script_name : "", #var_174b4191:isdefined(level.var_b48509f9) ? level.var_b48509f9 : 0, #var_adfc9a7e:getplayers().size};
        function_92d1707f(#"hash_7a17213a42c58963", var_b1c6f834);
    }
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 1, eflags: 0x6 linked
// Checksum 0xb16e3cb8, Offset: 0x57d0
// Size: 0x32
function private on_ai_spawned(*params) {
    if (!isdefined(self.telemetry)) {
        self.telemetry = {};
    }
    self.telemetry.spawn_time = gettime();
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 1, eflags: 0x6 linked
// Checksum 0x480cad28, Offset: 0x5810
// Size: 0xce
function private on_ai_damage(params) {
    if (!isdefined(self.telemetry)) {
        self.telemetry = {};
    }
    if (isdefined(params.shitloc) && isdefined(params.vpoint) && zm_utility::function_4562a3ef(params.shitloc, params.vpoint)) {
        if (!isdefined(self.telemetry.var_b968cd78)) {
            self.telemetry.var_b968cd78 = 0;
        }
        self.telemetry.var_b968cd78 += isdefined(params.idamage) ? params.idamage : 0;
    }
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 1, eflags: 0x6 linked
// Checksum 0x87300b41, Offset: 0x58e8
// Size: 0xc2
function private on_player_damage(params) {
    if (isai(params.eattacker)) {
        if (!isdefined(params.eattacker.telemetry)) {
            params.eattacker.telemetry = {};
        }
        if (!isdefined(params.eattacker.telemetry.damage_dealt)) {
            params.eattacker.telemetry.damage_dealt = 0;
        }
        params.eattacker.telemetry.damage_dealt += params.idamage;
    }
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 1, eflags: 0x6 linked
// Checksum 0xcb1a28a7, Offset: 0x59b8
// Size: 0x594
function private on_ai_killed(params) {
    death_type = #"normal";
    if (params.smeansofdeath === "MOD_MELEE") {
        death_type = #"melee";
    } else if (zm_utility::function_4562a3ef(params.shitloc, params.vpoint)) {
        death_type = #"critical";
    }
    var_39872854 = int(gettime() - (isdefined(self.telemetry.spawn_time) ? self.telemetry.spawn_time : 0));
    var_b968cd78 = 0;
    if (isdefined(self.telemetry.var_b968cd78) && isdefined(self.maxhealth) && self.maxhealth > 0) {
        var_b968cd78 = self.telemetry.var_b968cd78 / self.maxhealth;
    }
    var_da2dc026 = 0;
    if (isdefined(self.var_c2dcab66)) {
        var_da2dc026 = self.var_c2dcab66.size;
    }
    var_f374c9b5 = {#archetype:isdefined(self.archetype) ? self.archetype : #"", #death_type:isdefined(death_type) ? death_type : #"", #meansofdeath:isdefined(params.smeansofdeath) ? params.smeansofdeath : "", #var_39872854:isdefined(var_39872854) ? var_39872854 : 0, #damage_dealt:int(isdefined(self.telemetry.damage_dealt) ? self.telemetry.damage_dealt : 0), #weapon:isdefined(params.weapon.statname) ? params.weapon.statname : #"", #var_da2dc026:int(isdefined(var_da2dc026) ? var_da2dc026 : 0), #var_b968cd78:float(isdefined(var_b968cd78) ? var_b968cd78 : 0), #round_number:int(zm_utility::get_round_number()), #star_level:int(zm_utility::function_e3025ca5()), #targetname:isdefined(self.targetname) ? self.targetname : "", #gametype:hash(isdefined(level.gametype) ? level.gametype : #""), #mapname:hash(isdefined(util::get_map_name()) ? util::get_map_name() : #"")};
    var_b850e84d = undefined;
    if (self.var_6f84b820 === #"normal") {
        var_b850e84d = #"hash_4aa10c55601000bd";
    } else if (self.var_6f84b820 === #"special") {
        var_b850e84d = #"hash_27f21bbb589d2075";
    } else if (self.var_6f84b820 === #"elite") {
        var_b850e84d = #"hash_214bfcabc3ccf495";
    } else if (self.var_6f84b820 === #"boss") {
        var_b850e84d = #"hash_60436c4b0bca1ab7";
    }
    if (isplayer(params.eattacker) && ishash(var_b850e84d)) {
        params.eattacker function_678f57c8(var_b850e84d, var_f374c9b5);
    }
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 1, eflags: 0x2 linked
// Checksum 0x7eccdee1, Offset: 0x5f58
// Size: 0x1dc
function function_882720b2(data) {
    struct = {#var_454ec645:isdefined(data.spot[0]) ? data.spot[0] : 0, #var_ef461a45:isdefined(data.spot[1]) ? data.spot[1] : 0, #var_d3ace313:isdefined(data.spot[2]) ? data.spot[2] : 0, #mapname:hash(isdefined(util::get_map_name()) ? util::get_map_name() : #""), #gametype:hash(isdefined(level.gametype) ? level.gametype : #""), #var_88277fd8:isdefined(level.var_9678e62d.size) ? level.var_9678e62d.size : 0};
    if (isdefined(data.player)) {
        data.player function_678f57c8(#"hash_703c510691609dd5", struct);
    }
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 1, eflags: 0x2 linked
// Checksum 0xbaeeea1e, Offset: 0x6140
// Size: 0x9c
function function_9cac835e(data) {
    if (isdefined(data.weapon)) {
        function_abbc84ad({#player:self, #weapon:data.weapon, #statname:#"flourish_count", #value:1, #weaponpickedup:0});
    }
}

