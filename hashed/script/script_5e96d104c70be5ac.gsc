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
    system::register(#"hash_3c80acaf1d791b8c", &function_70a657d8, undefined, undefined, #"hash_53528dbbf6cd15c4");
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 0, eflags: 0x4
// Checksum 0xa51d2ffa, Offset: 0x190
// Size: 0x42c
function private function_70a657d8() {
    level.var_46821767 = getdvarint(#"hash_661461deeee00da6", 0);
    namespace_341c57b3::function_98df8818(#"hash_44873692d238cf3b", &function_3f08a12b);
    namespace_341c57b3::function_98df8818(#"hash_4481df211c9d18aa", &function_3b4b8944);
    namespace_341c57b3::function_98df8818(#"hash_27cccc0731de1722", &function_1f5722ec);
    callback::on_item_drop(&on_item_drop);
    callback::on_item_pickup(&on_item_pickup);
    callback::on_spawned(&on_player_spawned);
    callback::add_callback(#"hash_17028f0b9883e5be", &function_e38db3d4);
    callback::add_callback(#"objective_ended", &function_f13d2749);
    callback::add_callback(#"hash_276921163232533", &function_8a38be09);
    callback::add_callback(#"hash_29edd9425510b40d", &function_e89b1c3f);
    namespace_341c57b3::add_callback(#"on_game_playing", &function_72c32279);
    namespace_341c57b3::add_callback(#"hash_3ca80e35288a78d0", &function_d519e318);
    namespace_341c57b3::add_callback(#"on_player_connect", &on_player_connect);
    namespace_341c57b3::add_callback(#"on_player_disconnect", &on_player_disconnect);
    namespace_341c57b3::add_callback(#"on_round_end", &on_round_end);
    namespace_341c57b3::add_callback(#"hash_5118a91e667446ee", &on_round_end);
    callback::on_ai_spawned(&on_ai_spawned);
    callback::add_callback(#"on_ai_damage", &on_ai_damage);
    callback::add_callback(#"on_player_damage", &on_player_damage);
    callback::on_ai_killed(&on_ai_killed);
    namespace_341c57b3::function_98df8818(#"hash_b88b6d2e0028e13", &function_abbc84ad);
    namespace_341c57b3::function_98df8818(#"hash_42d03088c9b0534b", &function_882720b2);
    namespace_341c57b3::add_callback(#"hash_1f5aa545c7334d3a", &function_9cac835e);
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 0, eflags: 0x0
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
        println("<unknown string>" + get_map_name());
        println("<unknown string>" + level.gametype);
        println("<unknown string>" + sessionmodeisprivateonlinegame());
        println("<unknown string>" + sessionmodeissystemlink());
        println("<unknown string>" + isdedicated());
        println("<unknown string>");
    #/
    var_2d1a13b2 = getutc();
    if (isdefined(game.var_341c57b3)) {
        game.var_341c57b3.var_dc73ada2 = var_2d1a13b2;
    }
    matchstart = {};
    matchstart.var_dc73ada2 = var_2d1a13b2;
    matchstart.map.matchstart = hash(util::get_map_name());
    matchstart.game_type.matchstart = hash(level.gametype);
    matchstart.var_c8019fa4.matchstart = sessionmodeisprivateonlinegame();
    matchstart.var_137fea24.matchstart = sessionmodeissystemlink();
    matchstart.var_cc957f27.matchstart = isdedicated();
    matchstart.var_b9e06742.matchstart = function_cd124b7c();
    matchstart.var_4b514c57.matchstart = hash(function_970f37d1());
    matchstart.var_65dcfd4a.matchstart = getdvarint(#"hash_4c63a0806012e032", 0);
    matchstart.var_a14949d8.matchstart = getdvarstring(#"hash_164a9a28628343ef", "");
    function_92d1707f(#"hash_2976350adaf61c93", matchstart);
    if (isdefined(game.var_341c57b3)) {
        game.var_341c57b3.var_29d0de09 = function_f8d53445();
    }
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 0, eflags: 0x0
// Checksum 0x5ecfd3fd, Offset: 0x998
// Size: 0x57c
function function_d519e318() {
    util::function_64ebd94d();
    if (isdefined(game.var_341c57b3)) {
        game.var_341c57b3.var_36b58be2 = 1;
    }
    players = getplayers();
    foreach (player in players) {
        player function_143fa1b9();
    }
    /#
        println("<unknown string>" + function_f8d53445());
        println("<unknown string>" + gettime());
        println("<unknown string>" + get_map_name());
        println("<unknown string>" + level.gametype);
        println("<unknown string>" + getutc());
    #/
    var_2d1a13b2 = getutc();
    matchend = {};
    matchend.var_dc73ada2.matchend = 0;
    matchend.var_44be7e07 = var_2d1a13b2;
    matchend.map.matchend = hash(util::get_map_name());
    matchend.game_type.matchend = hash(level.gametype);
    matchend.var_c8019fa4.matchend = sessionmodeisprivateonlinegame();
    matchend.var_137fea24.matchend = sessionmodeissystemlink();
    matchend.var_cc957f27.matchend = isdedicated();
    matchend.player_count.matchend = 0;
    matchend.life_count.matchend = 0;
    matchend.var_b9e06742.matchend = function_cd124b7c();
    matchend.var_4b514c57.matchend = hash(function_970f37d1());
    matchend.var_65dcfd4a.matchend = getdvarint(#"hash_4c63a0806012e032", 0);
    matchend.var_a14949d8.matchend = getdvarstring(#"hash_164a9a28628343ef", "");
    matchend.var_117bb8b3.matchend = level flag::get(#"hash_4e5756202af6ae94");
    matchend.round_number.matchend = isdefined(level.round_number) ? level.round_number : 0;
    matchend.star_level.matchend = isdefined(level.var_b48509f9) ? level.var_b48509f9 : 0;
    if (isdefined(game.var_341c57b3.var_dc73ada2)) {
        time_seconds = var_2d1a13b2 - game.var_341c57b3.var_dc73ada2;
        /#
            println("<unknown string>" + time_seconds);
        #/
        matchend.var_dc73ada2.matchend = game.var_341c57b3.var_dc73ada2;
    }
    match_duration = function_f8d53445() / 1000;
    /#
        println("<unknown string>" + match_duration);
    #/
    if (isdefined(game.var_341c57b3.player_count)) {
        /#
            println("<unknown string>" + game.var_341c57b3.player_count);
        #/
        matchend.player_count.matchend = game.var_341c57b3.player_count;
    }
    if (isdefined(game.var_341c57b3.life_count)) {
        /#
            println("<unknown string>" + game.var_341c57b3.life_count);
        #/
        matchend.life_count.matchend = game.var_341c57b3.life_count;
    }
    function_92d1707f(#"hash_572d4a196995ede6", matchend);
    /#
        println("<unknown string>");
    #/
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 1, eflags: 0x4
// Checksum 0x35f3ae59, Offset: 0xf20
// Size: 0x18c
function private on_round_end(data) {
    var_a5722144 = {};
    var_a5722144.var_29d0de09.var_a5722144 = isdefined(game.var_341c57b3.var_29d0de09) ? game.var_341c57b3.var_29d0de09 : 0;
    var_a5722144.var_b0ab3472.var_a5722144 = function_f8d53445();
    var_a5722144.var_b4da50f0.var_a5722144 = var_a5722144.var_b0ab3472 - var_a5722144.var_29d0de09;
    var_a5722144.round_number.var_a5722144 = zm_utility::get_round_number();
    players = getplayers();
    foreach (player in players) {
        player function_2d28a3b3(data);
    }
    if (isdefined(game.var_341c57b3)) {
        game.var_341c57b3.var_29d0de09 = var_a5722144.var_b0ab3472;
    }
    function_92d1707f(#"hash_1ddb7882a47b6a1f", var_a5722144);
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 1, eflags: 0x4
// Checksum 0x9b941cb0, Offset: 0x10b8
// Size: 0x13f2
function private function_2d28a3b3(*data) {
    if (!isdefined(self)) {
        return;
    }
    if (!isdefined(self.pers[#"hash_2042ab53f67e07c0"])) {
        self.pers[#"hash_2042ab53f67e07c0"] = {};
    }
    if (!isdefined(self.pers[#"hash_2042ab53f67e07c0"].var_ff8bd64a)) {
        self.pers[#"hash_2042ab53f67e07c0"].var_ff8bd64a = {};
    }
    var_db44b078 = {};
    if (isdefined(self.pers)) {
        var_db44b078.score.var_db44b078 = isdefined(self.pers[#"score"]) ? self.pers[#"score"] : 0;
        var_db44b078.kills.var_db44b078 = isdefined(self.pers[#"kills"]) ? self.pers[#"kills"] : 0;
        var_db44b078.deaths.var_db44b078 = isdefined(self.pers[#"deaths"]) ? self.pers[#"deaths"] : 0;
    }
    var_db44b078.var_d0266750.var_db44b078 = int(max((isdefined(self.pers[#"score"]) ? self.pers[#"score"] : 0) - (isdefined(self.pers[#"hash_2042ab53f67e07c0"].var_ff8bd64a.score) ? self.pers[#"hash_2042ab53f67e07c0"].var_ff8bd64a.score : 0), 0));
    var_db44b078.var_832beab2.var_db44b078 = int(max((isdefined(self.pers[#"kills"]) ? self.pers[#"kills"] : 0) - (isdefined(self.pers[#"hash_2042ab53f67e07c0"].var_ff8bd64a.kills) ? self.pers[#"hash_2042ab53f67e07c0"].var_ff8bd64a.kills : 0), 0));
    var_60851c1 = int(self rank::function_5b197def(0) - (isdefined(self.pers[#"hash_2042ab53f67e07c0"].var_a1938c60) ? self.pers[#"hash_2042ab53f67e07c0"].var_a1938c60 : 0));
    var_af273c68 = int(self rank::function_5b197def(1) - (isdefined(self.pers[#"hash_2042ab53f67e07c0"].var_970f034c) ? self.pers[#"hash_2042ab53f67e07c0"].var_970f034c : 0));
    var_665cf4ce = int(self rank::function_5b197def(5) - (isdefined(self.pers[#"hash_2042ab53f67e07c0"].var_12173831) ? self.pers[#"hash_2042ab53f67e07c0"].var_12173831 : 0));
    var_b8b0d676 = int(self rank::function_5b197def(2) - (isdefined(self.pers[#"hash_2042ab53f67e07c0"].var_43ab3c14) ? self.pers[#"hash_2042ab53f67e07c0"].var_43ab3c14 : 0));
    var_7fe08e84 = int(self rank::function_5b197def(4) - (isdefined(self.pers[#"hash_2042ab53f67e07c0"].var_9b0e83ac) ? self.pers[#"hash_2042ab53f67e07c0"].var_9b0e83ac : 0));
    var_3874f1f2 = int(self rank::getrankxp() - (isdefined(self.pers[#"hash_2042ab53f67e07c0"].var_35a0b8bd) ? self.pers[#"hash_2042ab53f67e07c0"].var_35a0b8bd : 0));
    if (zm_utility::is_survival()) {
        var_db44b078.var_819cb855 = var_60851c1;
        var_db44b078.var_bf725dc2 = var_af273c68;
        var_db44b078.var_dcf31c62 = var_665cf4ce;
        var_db44b078.var_776b5e62 = var_b8b0d676;
        var_db44b078.var_f86edb1e = var_7fe08e84;
        var_db44b078.var_50941cea = var_3874f1f2;
    } else {
        var_db44b078.var_819cb855.var_db44b078 = int(max(0, var_60851c1 - (isdefined(self.pers[#"hash_2042ab53f67e07c0"].var_ff8bd64a.var_60851c1) ? self.pers[#"hash_2042ab53f67e07c0"].var_ff8bd64a.var_60851c1 : 0)));
        var_db44b078.var_bf725dc2.var_db44b078 = int(max(0, var_af273c68 - (isdefined(self.pers[#"hash_2042ab53f67e07c0"].var_ff8bd64a.var_af273c68) ? self.pers[#"hash_2042ab53f67e07c0"].var_ff8bd64a.var_af273c68 : 0)));
        var_db44b078.var_dcf31c62.var_db44b078 = int(max(0, var_665cf4ce - (isdefined(self.pers[#"hash_2042ab53f67e07c0"].var_ff8bd64a.var_665cf4ce) ? self.pers[#"hash_2042ab53f67e07c0"].var_ff8bd64a.var_665cf4ce : 0)));
        var_db44b078.var_776b5e62.var_db44b078 = int(max(0, var_b8b0d676 - (isdefined(self.pers[#"hash_2042ab53f67e07c0"].var_ff8bd64a.var_b8b0d676) ? self.pers[#"hash_2042ab53f67e07c0"].var_ff8bd64a.var_b8b0d676 : 0)));
        var_db44b078.var_f86edb1e.var_db44b078 = int(max(0, var_7fe08e84 - (isdefined(self.pers[#"hash_2042ab53f67e07c0"].var_ff8bd64a.var_7fe08e84) ? self.pers[#"hash_2042ab53f67e07c0"].var_ff8bd64a.var_7fe08e84 : 0)));
        var_db44b078.var_50941cea.var_db44b078 = int(max(0, var_3874f1f2 - (isdefined(self.pers[#"hash_2042ab53f67e07c0"].var_ff8bd64a.var_3874f1f2) ? self.pers[#"hash_2042ab53f67e07c0"].var_ff8bd64a.var_3874f1f2 : 0)));
    }
    var_db44b078.round_number.var_db44b078 = zm_utility::get_round_number();
    var_db44b078.var_29d0de09.var_db44b078 = isdefined(game.var_341c57b3.var_29d0de09) ? game.var_341c57b3.var_29d0de09 : 0;
    var_db44b078.var_b0ab3472.var_db44b078 = function_f8d53445();
    var_db44b078.var_b4da50f0.var_db44b078 = var_db44b078.var_b0ab3472 - var_db44b078.var_29d0de09;
    var_4e4f65c9 = undefined;
    if (isdefined(self.inventory.items[17 + 1])) {
        var_4e4f65c9 = self.inventory.items[17 + 1];
    }
    primary_weapon = undefined;
    if (isdefined(self.weapon_array_primary[0])) {
        primary_weapon = self.weapon_array_primary[0];
    }
    var_db44b078.var_4f84f11f.var_db44b078 = isdefined(primary_weapon.statname) ? primary_weapon.statname : #"";
    var_db44b078.var_1fc74cc3.var_db44b078 = hash(isdefined(var_4e4f65c9.var_a6762160.rarity) ? var_4e4f65c9.var_a6762160.rarity : #"");
    var_db44b078.var_7acc0bf9.var_db44b078 = [];
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
        var_db44b078.var_7acc0bf9 = attachments;
    }
    var_db44b078.var_649035df.var_db44b078 = isdefined(var_4e4f65c9.var_a8bccf69) ? var_4e4f65c9.var_a8bccf69 : 0;
    var_db44b078.var_2eee3e82.var_db44b078 = isdefined(var_4e4f65c9.aat) ? var_4e4f65c9.aat : "";
    var_ec323ef9 = undefined;
    if (isdefined(self.inventory.items[17 + 1 + 8 + 1])) {
        var_ec323ef9 = self.inventory.items[17 + 1 + 8 + 1];
    }
    secondary_weapon = undefined;
    if (isdefined(self.weapon_array_primary[1])) {
        secondary_weapon = self.weapon_array_primary[1];
    }
    var_db44b078.var_e6cbc2be.var_db44b078 = isdefined(secondary_weapon.statname) ? secondary_weapon.statname : #"";
    var_db44b078.var_882c8428.var_db44b078 = hash(isdefined(var_ec323ef9.var_a6762160.rarity) ? var_ec323ef9.var_a6762160.rarity : #"");
    var_db44b078.var_a76d2c9b.var_db44b078 = [];
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
        var_db44b078.var_a76d2c9b = attachments;
    }
    var_db44b078.var_df0e6d74.var_db44b078 = isdefined(var_ec323ef9.var_a8bccf69) ? var_ec323ef9.var_a8bccf69 : 0;
    var_db44b078.var_fed00167.var_db44b078 = isdefined(var_ec323ef9.aat) ? var_ec323ef9.aat : "";
    var_b8061637 = undefined;
    if (isdefined(self.inventory.items[17 + 1 + 8 + 1 + 8 + 1])) {
        var_b8061637 = self.inventory.items[17 + 1 + 8 + 1 + 8 + 1];
    }
    var_5b871ec1 = undefined;
    if (isdefined(self.weapon_array_primary[2])) {
        var_5b871ec1 = self.weapon_array_primary[2];
    }
    var_db44b078.var_a1806a93.var_db44b078 = isdefined(var_5b871ec1.statname) ? var_5b871ec1.statname : #"";
    var_db44b078.var_de02c9bb.var_db44b078 = hash(isdefined(var_b8061637.var_a6762160.rarity) ? var_b8061637.var_a6762160.rarity : #"");
    var_db44b078.var_561e72d.var_db44b078 = [];
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
        var_db44b078.var_561e72d = attachments;
    }
    var_db44b078.var_c9898a6c.var_db44b078 = isdefined(var_b8061637.var_a8bccf69) ? var_b8061637.var_a8bccf69 : 0;
    var_db44b078.var_63bb7027.var_db44b078 = isdefined(var_b8061637.aat) ? var_b8061637.aat : "";
    var_db44b078.star_level.var_db44b078 = isdefined(level.var_b48509f9) ? level.var_b48509f9 : 0;
    var_db44b078.var_f0115c3e.var_db44b078 = int(isdefined(self.var_f2922211) ? self.var_f2922211 : 0);
    var_4c75e3b8 = zm_utility::is_survival() ? zm_utility::function_c200446c() ? self.var_1096b5c0 : self.var_8d41c907 : self.var_3b4f6b37;
    var_db44b078.var_c74d76f3.var_db44b078 = int(isdefined(var_4c75e3b8) ? var_4c75e3b8 : 0);
    function_4bd3e96c();
    if (!isdefined(self)) {
        return;
    }
    self.pers[#"hash_69b63c99be1fb428"] = [];
    self function_678f57c8(#"hash_6e340d9d9e255e95", var_db44b078);
    self.pers[#"hash_2042ab53f67e07c0"].var_ff8bd64a.score = var_db44b078.score;
    self.pers[#"hash_2042ab53f67e07c0"].var_ff8bd64a.kills = var_db44b078.kills;
    self.pers[#"hash_2042ab53f67e07c0"].var_ff8bd64a.var_60851c1 = var_60851c1;
    self.pers[#"hash_2042ab53f67e07c0"].var_ff8bd64a.var_af273c68 = var_af273c68;
    self.pers[#"hash_2042ab53f67e07c0"].var_ff8bd64a.var_665cf4ce = var_665cf4ce;
    self.pers[#"hash_2042ab53f67e07c0"].var_ff8bd64a.var_b8b0d676 = var_b8b0d676;
    self.pers[#"hash_2042ab53f67e07c0"].var_ff8bd64a.var_7fe08e84 = var_7fe08e84;
    self.pers[#"hash_2042ab53f67e07c0"].var_ff8bd64a.var_3874f1f2 = var_3874f1f2;
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 0, eflags: 0x4
// Checksum 0x810005eb, Offset: 0x24b8
// Size: 0x366
function private function_4bd3e96c() {
    weapons::update_last_held_weapon_timings(gettime(), self.currentweapon);
    if (isdefined(self.pers[#"hash_69b63c99be1fb428"])) {
        weapon_names = getarraykeys(self.pers[#"hash_69b63c99be1fb428"]);
        weapon_index = 0;
        while (weapon_index < weapon_names.size) {
            weapon_name = weapon_names[weapon_index];
            var_dc08e79b = self.pers[#"hash_69b63c99be1fb428"][weapon_name];
            var_fa5921b6 = var_dc08e79b[#"xpearned"];
            if (isdefined(var_fa5921b6) && var_fa5921b6 > 0) {
                var_cad81941 = {#var_2b43b7a2:isdefined(var_dc08e79b[#"hash_30756c193f03f009"]) ? var_dc08e79b[#"hash_30756c193f03f009"] : 0, #star_level:zm_utility::function_e3025ca5(), #round_number:zm_utility::get_round_number(), #game_type:hash(isdefined(level.gametype) ? level.gametype : #""), #var_fa5921b6:isdefined(var_dc08e79b[#"xpearned"]) ? var_dc08e79b[#"xpearned"] : 0, #hits:isdefined(var_dc08e79b[#"hits"]) ? var_dc08e79b[#"hits"] : 0, #shots:isdefined(var_dc08e79b[#"shots"]) ? var_dc08e79b[#"shots"] : 0, #kills:isdefined(var_dc08e79b[#"kills"]) ? var_dc08e79b[#"kills"] : 0, #time_used_s:isdefined(var_dc08e79b[#"timeused"]) ? var_dc08e79b[#"timeused"] : 0, #weapon_name:weapon_name};
                self function_678f57c8(#"hash_2da62e026250c65e", var_cad81941);
            }
            weapon_index = weapon_index + 1;
        }
    }
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 1, eflags: 0x0
// Checksum 0x62bec32e, Offset: 0x2828
// Size: 0x544
function on_player_connect(*data) {
    if (!is_true(self.pers[#"hash_2042ab53f67e07c0"].connected)) {
        /#
            println("<unknown string>" + gettime());
            println("<unknown string>" + getutc());
            println("<unknown string>" + self.name);
        #/
        self.pers[#"weaponstats"] = [];
        if (!isdefined(self.pers[#"hash_2042ab53f67e07c0"])) {
            self.pers[#"hash_2042ab53f67e07c0"] = {};
        }
        if (!isdefined(self.pers[#"hash_2042ab53f67e07c0"].var_5c64b4dd)) {
            self.pers[#"hash_2042ab53f67e07c0"].var_5c64b4dd = getutc();
        }
        self.pers[#"hash_2042ab53f67e07c0"].connected = 1;
        self.pers[#"hash_2042ab53f67e07c0"].var_35a0b8bd = self rank::getrankxp();
        self.pers[#"hash_2042ab53f67e07c0"].var_a1938c60 = self rank::function_5b197def(0);
        self.pers[#"hash_2042ab53f67e07c0"].var_970f034c = self rank::function_5b197def(1);
        self.pers[#"hash_2042ab53f67e07c0"].var_43ab3c14 = self rank::function_5b197def(2);
        self.pers[#"hash_2042ab53f67e07c0"].var_9c4d3f78 = self rank::function_5b197def(3);
        self.pers[#"hash_2042ab53f67e07c0"].var_12173831 = self rank::function_5b197def(5);
        self.pers[#"hash_2042ab53f67e07c0"].var_9f177532 = self rank::getrank();
        if (namespace_cf6efd05::function_85b812c9()) {
            if (!isdefined(self.pers[#"hash_2042ab53f67e07c0"])) {
                self.pers[#"hash_2042ab53f67e07c0"] = {};
            }
            self.pers[#"hash_2042ab53f67e07c0"].connected = 1;
            return;
        }
        if (isdefined(game.var_341c57b3.player_count)) {
            self.pers[#"hash_2042ab53f67e07c0"].var_6ba64843 = game.var_341c57b3.player_count;
            game.var_341c57b3.player_count++;
            /#
                println("<unknown string>" + game.var_341c57b3.player_count);
            #/
        } else {
            /#
                println("<unknown string>");
            #/
            return;
        }
        /#
            println("<unknown string>");
        #/
        var_db44b078 = {};
        var_db44b078.var_5c64b4dd.var_db44b078 = self.pers[#"hash_2042ab53f67e07c0"].var_5c64b4dd;
        var_db44b078.var_6ba64843.var_db44b078 = isdefined(self.pers[#"hash_2042ab53f67e07c0"].var_6ba64843) ? self.pers[#"hash_2042ab53f67e07c0"].var_6ba64843 : 0;
        var_db44b078.var_524ab934.var_db44b078 = self function_d40f1a0e();
        var_db44b078.var_504e19f4.var_db44b078 = self function_21f71ac8();
        var_db44b078.var_68441d6f.var_db44b078 = self function_325dc923();
        self function_678f57c8(#"hash_577b6d450d80cbd5", var_db44b078);
    }
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 1, eflags: 0x0
// Checksum 0xfe29f96, Offset: 0x2d78
// Size: 0x2e
function function_b9cd2b6c(xp) {
    game.var_341c57b3.var_dd636281 = isdefined(xp) ? xp : 0;
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 0, eflags: 0x0
// Checksum 0x6ea04b4b, Offset: 0x2db0
// Size: 0x904
function function_143fa1b9() {
    if (!is_true(self.pers[#"hash_2042ab53f67e07c0"].connected)) {
        return;
    }
    self.pers[#"hash_2042ab53f67e07c0"].connected = 0;
    var_db44b078 = {};
    /#
        println("<unknown string>" + self.name);
        println("<unknown string>" + gettime());
    #/
    var_db44b078.var_5c64b4dd.var_db44b078 = 0;
    var_db44b078.utc_disconnect_time_s.var_db44b078 = 0;
    var_db44b078.var_37b8e421.var_db44b078 = 0;
    var_2d1a13b2 = getutc();
    if (isdefined(self.pers[#"hash_2042ab53f67e07c0"].var_5c64b4dd)) {
        var_db44b078.var_5c64b4dd.var_db44b078 = self.pers[#"hash_2042ab53f67e07c0"].var_5c64b4dd;
        var_db44b078.utc_disconnect_time_s = var_2d1a13b2;
        var_db44b078.var_37b8e421.var_db44b078 = var_2d1a13b2 - var_db44b078.var_5c64b4dd;
    }
    var_db44b078.var_6ba64843.var_db44b078 = isdefined(self.pers[#"hash_2042ab53f67e07c0"].var_6ba64843) ? self.pers[#"hash_2042ab53f67e07c0"].var_6ba64843 : 0;
    if (isdefined(self.pers)) {
        var_db44b078.score.var_db44b078 = isdefined(self.pers[#"score"]) ? self.pers[#"score"] : 0;
        var_db44b078.kills.var_db44b078 = isdefined(self.pers[#"kills"]) ? self.pers[#"kills"] : 0;
        var_db44b078.deaths.var_db44b078 = isdefined(self.pers[#"deaths"]) ? self.pers[#"deaths"] : 0;
        var_db44b078.headshots.var_db44b078 = isdefined(self.pers[#"headshots"]) ? self.pers[#"headshots"] : 0;
        var_db44b078.suicides.var_db44b078 = isdefined(self.pers[#"suicides"]) ? self.pers[#"suicides"] : 0;
    }
    var_db44b078.var_35a0b8bd.var_db44b078 = isdefined(self.pers[#"hash_2042ab53f67e07c0"].var_35a0b8bd) ? self.pers[#"hash_2042ab53f67e07c0"].var_35a0b8bd : 0;
    var_db44b078.var_f29581ce.var_db44b078 = self rank::getrankxp();
    var_db44b078.var_a1938c60.var_db44b078 = isdefined(self.pers[#"hash_2042ab53f67e07c0"].var_a1938c60) ? self.pers[#"hash_2042ab53f67e07c0"].var_a1938c60 : 0;
    var_db44b078.var_7ddf8420.var_db44b078 = self rank::function_5b197def(0);
    var_db44b078.var_970f034c.var_db44b078 = isdefined(self.pers[#"hash_2042ab53f67e07c0"].var_970f034c) ? self.pers[#"hash_2042ab53f67e07c0"].var_970f034c : 0;
    var_db44b078.var_b7d93a80.var_db44b078 = self rank::function_5b197def(1);
    var_db44b078.var_43ab3c14.var_db44b078 = isdefined(self.pers[#"hash_2042ab53f67e07c0"].var_43ab3c14) ? self.pers[#"hash_2042ab53f67e07c0"].var_43ab3c14 : 0;
    var_db44b078.var_460c9ce.var_db44b078 = self rank::function_5b197def(2);
    var_db44b078.var_9c4d3f78.var_db44b078 = isdefined(self.pers[#"hash_2042ab53f67e07c0"].var_9c4d3f78) ? self.pers[#"hash_2042ab53f67e07c0"].var_9c4d3f78 : 0;
    var_db44b078.var_5f67b464.var_db44b078 = self rank::function_5b197def(3);
    var_db44b078.var_12173831.var_db44b078 = isdefined(self.pers[#"hash_2042ab53f67e07c0"].var_12173831) ? self.pers[#"hash_2042ab53f67e07c0"].var_12173831 : 0;
    var_db44b078.var_c4d676ee.var_db44b078 = self rank::function_5b197def(5);
    var_db44b078.var_9f177532.var_db44b078 = isdefined(self.pers[#"hash_2042ab53f67e07c0"].var_9f177532) ? self.pers[#"hash_2042ab53f67e07c0"].var_9f177532 : 0;
    var_db44b078.var_735f5996.var_db44b078 = self rank::getrank();
    if (!is_true(level.disablestattracking)) {
        var_db44b078.var_9ffd4086.var_db44b078 = self zm_stats::function_529e1302(#"kills");
        var_db44b078.var_56c22769.var_db44b078 = self zm_stats::function_529e1302(#"deaths");
        var_db44b078.var_4ab9220a.var_db44b078 = self zm_stats::function_529e1302(#"score");
    }
    sessionmode = currentsessionmode();
    if (sessionmode !== 4) {
        role = self player_role::get();
        var_a791abd1 = function_b14806c6(role, sessionmode);
    }
    var_db44b078.operator.var_db44b078 = isdefined(var_a791abd1) ? var_a791abd1 : 0;
    var_db44b078.var_887376f4.var_db44b078 = self function_b568258e();
    var_db44b078.var_161a9fc9.var_db44b078 = 0;
    if (!is_true(game.var_341c57b3.var_36b58be2)) {
        var_db44b078.var_161a9fc9.var_db44b078 = 1;
    }
    var_db44b078.round_number.var_db44b078 = zm_utility::get_round_number();
    var_db44b078.star_level.var_db44b078 = zm_utility::function_e3025ca5();
    var_db44b078.var_c3b47473.var_db44b078 = isdefined(game.var_341c57b3.var_dd636281) ? game.var_341c57b3.var_dd636281 : 0;
    if (is_true(level.host_ended_game)) {
        var_db44b078.var_a3ba1678.var_db44b078 = #"hash_95f500e64a2ae03";
    } else if (is_true(self.var_b9ff264c)) {
        var_db44b078.var_a3ba1678.var_db44b078 = #"win";
    } else {
        var_db44b078.var_a3ba1678.var_db44b078 = #"loss";
    }
    self function_678f57c8(#"hash_60754262dd09efac", var_db44b078);
    self function_e5d9f30(var_db44b078.score, var_db44b078.kills, var_db44b078.deaths, var_db44b078.headshots, var_db44b078.suicides, var_db44b078.var_35a0b8bd, var_db44b078.var_f29581ce, var_db44b078.var_9f177532, var_db44b078.var_735f5996, zm_utility::get_round_number(), var_db44b078.var_37b8e421);
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 1, eflags: 0x0
// Checksum 0x3f97f6ac, Offset: 0x36c0
// Size: 0x24
function on_player_disconnect(*data) {
    self function_143fa1b9();
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 0, eflags: 0x0
// Checksum 0x59d2112c, Offset: 0x36f0
// Size: 0x1a4
function on_player_spawned() {
    if (!isdefined(self.pers[#"hash_2042ab53f67e07c0"])) {
        self.pers[#"hash_2042ab53f67e07c0"] = {};
    }
    self.pers[#"hash_2042ab53f67e07c0"].life = {};
    self.pers[#"hash_2042ab53f67e07c0"].life.var_62c7b24e = function_f8d53445();
    self.pers[#"hash_2042ab53f67e07c0"].life.spawn_origin = self.origin;
    if (isdefined(game.var_341c57b3.life_count)) {
        self.pers[#"hash_2042ab53f67e07c0"].life.var_2824e826 = game.var_341c57b3.life_count;
        game.var_341c57b3.life_count++;
        /#
            println("<unknown string>" + self.name);
            println("<unknown string>" + game.var_341c57b3.life_count);
        #/
    }
    /#
        println("<unknown string>");
    #/
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 1, eflags: 0x4
// Checksum 0xfde597, Offset: 0x38a0
// Size: 0xd4
function private function_3f08a12b(data) {
    /#
        assert(isdefined(data.weapon), "<unknown string>");
    #/
    var_abb39438 = {};
    var_abb39438.wallbuy_weapon.var_abb39438 = data.weapon.statname;
    var_abb39438.weapon_rarity.var_abb39438 = hash(data.rarity);
    var_abb39438.round_number.var_abb39438 = zm_utility::get_round_number();
    var_abb39438.star_level.var_abb39438 = zm_utility::function_e3025ca5();
    data.purchaser function_678f57c8(#"hash_6fc06e3919c02137", var_abb39438);
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 1, eflags: 0x4
// Checksum 0xa76c66a3, Offset: 0x3980
// Size: 0x23c
function private on_item_pickup(params) {
    item = params.item;
    weapon = namespace_a0d533d1::function_2b83d3ff(item);
    if (isdefined(item) && isdefined(weapon)) {
        weapon.var_dc9b0289.weapon = gettime();
        if (is_true(params.var_7b753bce)) {
            var_a63abfbe = {};
            var_a63abfbe.weapon.var_a63abfbe = weapon.statname;
            var_a63abfbe.weapon_rarity.var_a63abfbe = hash(item.var_a6762160.rarity);
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
                var_a63abfbe.weapon_attachments = attachments;
            }
            var_a63abfbe.var_ae6a042c.var_a63abfbe = item.var_a8bccf69;
            var_a63abfbe.var_78a16b58.var_a63abfbe = item.aat;
            var_a63abfbe.round_number.var_a63abfbe = zm_utility::get_round_number();
            var_a63abfbe.star_level.var_a63abfbe = zm_utility::function_e3025ca5();
            params.player function_678f57c8(#"hash_1191dc74fe41b6a", var_a63abfbe);
        }
    }
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 1, eflags: 0x4
// Checksum 0xfb50d15f, Offset: 0x3bc8
// Size: 0x234
function private on_item_drop(params) {
    item = params.item;
    weapon = namespace_a0d533d1::function_2b83d3ff(item);
    if (isdefined(item) && isdefined(weapon)) {
        var_a63abfbe = {};
        var_a63abfbe.weapon.var_a63abfbe = weapon.statname;
        var_a63abfbe.weapon_rarity.var_a63abfbe = hash(item.var_a6762160.rarity);
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
            var_a63abfbe.weapon_attachments = attachments;
        }
        var_a63abfbe.var_ae6a042c.var_a63abfbe = item.var_a8bccf69;
        var_a63abfbe.var_78a16b58.var_a63abfbe = item.aat;
        var_a63abfbe.round_number.var_a63abfbe = zm_utility::get_round_number();
        var_a63abfbe.star_level.var_a63abfbe = zm_utility::function_e3025ca5();
        if (isdefined(weapon.var_dc9b0289)) {
            var_a63abfbe.duration_ms.var_a63abfbe = gettime() - weapon.var_dc9b0289;
        }
        self function_678f57c8(#"hash_225909f0b104b123", var_a63abfbe);
    }
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 1, eflags: 0x4
// Checksum 0x777334b9, Offset: 0x3e08
// Size: 0xa4
function private function_1f5722ec(data) {
    if (!isplayer(data.player)) {
        return;
    }
    if (is_true(game.var_341c57b3.var_3bee079a[data.player getentitynumber()])) {
        data.round.data = (isdefined(level.round_number) ? level.round_number : 0) + 1;
        function_2d2b9f81(data);
    }
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 1, eflags: 0x4
// Checksum 0xc27d1d1b, Offset: 0x3eb8
// Size: 0xf4
function private function_3b4b8944(data) {
    if (!isplayer(data.player)) {
        return;
    }
    if (!isdefined(game.var_341c57b3.var_3bee079a)) {
        game.var_341c57b3.var_3bee079a = [];
    }
    if (!isdefined(game.var_341c57b3.var_3bee079a[data.player getentitynumber()])) {
        game.var_341c57b3.var_3bee079a[data.player getentitynumber()] = 1;
    }
    data.round.data = isdefined(level.round_number) ? level.round_number : 0;
    function_2d2b9f81(data);
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 1, eflags: 0x4
// Checksum 0xe0d134d5, Offset: 0x3fb8
// Size: 0xe4
function private function_2d2b9f81(data) {
    var_2153b0fe = {};
    primaryweapon = data.player getloadoutweapon(data.player.class_num, "primary");
    var_2153b0fe.weapon.var_2153b0fe = primaryweapon.statname;
    var_c9ec28d9 = data.player function_b958b70d(data.player.class_num, "specialgrenade");
    var_2153b0fe.field_upgrade = var_c9ec28d9;
    var_2153b0fe.round_number.var_2153b0fe = data.round;
    data.player function_678f57c8(#"hash_193890e3bb1b528f", var_2153b0fe);
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 1, eflags: 0x0
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
// Params 1, eflags: 0x4
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
            player.pers.player = {};
        }
        if (!isdefined(player.pers[#"hash_2042ab53f67e07c0"])) {
            player.pers[#"hash_2042ab53f67e07c0"] = {};
        }
        if (!isdefined(player.pers[#"hash_2042ab53f67e07c0"].var_ff8bd64a)) {
            player.pers[#"hash_2042ab53f67e07c0"].var_ff8bd64a = {};
        }
        player.pers[#"hash_2042ab53f67e07c0"].var_ff8bd64a.score = isdefined(player.pers[#"score"]) ? player.pers[#"score"] : 0;
        player.pers[#"hash_2042ab53f67e07c0"].var_ff8bd64a.kills = isdefined(player.pers[#"kills"]) ? player.pers[#"kills"] : 0;
        player.pers[#"hash_2042ab53f67e07c0"].var_ff8bd64a.var_60851c1 = isdefined(player.pers[#"hash_2042ab53f67e07c0"].var_a1938c60) ? player.pers[#"hash_2042ab53f67e07c0"].var_a1938c60 : 0;
        player.pers[#"hash_2042ab53f67e07c0"].var_ff8bd64a.var_af273c68 = isdefined(player.pers[#"hash_2042ab53f67e07c0"].var_970f034c) ? player.pers[#"hash_2042ab53f67e07c0"].var_970f034c : 0;
        player.pers[#"hash_2042ab53f67e07c0"].var_ff8bd64a.var_665cf4ce = isdefined(player.pers[#"hash_2042ab53f67e07c0"].var_12173831) ? player.pers[#"hash_2042ab53f67e07c0"].var_12173831 : 0;
        player.pers[#"hash_2042ab53f67e07c0"].var_ff8bd64a.var_b8b0d676 = isdefined(player.pers[#"hash_2042ab53f67e07c0"].var_43ab3c14) ? player.pers[#"hash_2042ab53f67e07c0"].var_43ab3c14 : 0;
        player.pers[#"hash_2042ab53f67e07c0"].var_ff8bd64a.var_7fe08e84 = isdefined(player.pers[#"hash_2042ab53f67e07c0"].var_9b0e83ac) ? player.pers[#"hash_2042ab53f67e07c0"].var_9b0e83ac : 0;
        player.pers[#"hash_2042ab53f67e07c0"].var_ff8bd64a.var_3874f1f2 = isdefined(player.pers[#"hash_2042ab53f67e07c0"].var_35a0b8bd) ? player.pers[#"hash_2042ab53f67e07c0"].var_35a0b8bd : 0;
    }
    var_bdad1c21 = {#var_b8cbcff2:hash(isdefined(level.var_7d45d0d4.var_1fcbdf50) ? level.var_7d45d0d4.var_1fcbdf50 : #""), #var_ea3397d3:getplayers().size, #var_c2b4f8d0:level.var_b48509f9, #var_e4ca5a4b:level.var_7cb19409, #var_579fb993:level.script};
    function_92d1707f(#"hash_424c5668eaeebb31", var_bdad1c21);
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 1, eflags: 0x4
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
    var_bdad1c21 = {#var_b8cbcff2:hash(isdefined(level.var_7d45d0d4.var_1fcbdf50) ? level.var_7d45d0d4.var_1fcbdf50 : #""), #var_ea3397d3:getplayers().size, #var_c2b4f8d0:isdefined(var_b48509f9) ? var_b48509f9 : 0, #var_395efa0a:isdefined(var_199a2a04) ? var_199a2a04 : 0, #var_44bf1770:function_f8d53445(), #var_e4ca5a4b:isdefined(level.var_7cb19409) ? level.var_7cb19409 : 0, #var_579fb993:isdefined(level.script) ? level.script : ""};
    level.var_7cb19409 = undefined;
    function_92d1707f(#"hash_424c5668eaeebb31", var_bdad1c21);
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 2, eflags: 0x4
// Checksum 0xf9cb3149, Offset: 0x4c68
// Size: 0x41c
function private function_e38db3d4(params, *activator) {
    if (!zm_utility::is_survival()) {
        return;
    }
    players = getplayers();
    foreach (player in players) {
        player.pers[#"hash_2042ab53f67e07c0"].var_6cdd00ea = 1;
        player.pers[#"hash_2042ab53f67e07c0"].var_8ee56f34 = player rank::getrankxp();
        player.pers[#"hash_2042ab53f67e07c0"].var_9351f0d = player rank::function_5b197def(0);
        player.pers[#"hash_2042ab53f67e07c0"].var_14ae9569 = player rank::function_5b197def(1);
        player.pers[#"hash_2042ab53f67e07c0"].var_dd546227 = player rank::function_5b197def(2);
        player.pers[#"hash_2042ab53f67e07c0"].var_902d7325 = player rank::function_5b197def(3);
        player.pers[#"hash_2042ab53f67e07c0"].var_ccd5da9e = player rank::function_5b197def(5);
        player.pers[#"hash_2042ab53f67e07c0"].var_89b3f8b0 = player.kills;
    }
    level.var_f099aebe = function_f8d53445();
    var_8c24333b = {#var_adfc9a7e:getplayers().size, #var_174b4191:isdefined(level.var_b48509f9) ? level.var_b48509f9 : 0, #var_ac2606df:isdefined(activator.instance.location.targetname) ? activator.instance.location.targetname : "", #var_90f03449:isdefined(level.script) ? level.script : "", #var_fffcd514:isdefined(level.var_f099aebe) ? level.var_f099aebe : 0, #var_4472945a:isdefined(activator.instance.content_script_name) ? activator.instance.content_script_name : ""};
    function_92d1707f(#"hash_7c94738a8f65d945", var_8c24333b);
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 1, eflags: 0x4
// Checksum 0x18b7d272, Offset: 0x5090
// Size: 0x738
function private function_f13d2749(params) {
    if (!zm_utility::is_survival()) {
        return;
    }
    if (isdefined(level.var_f099aebe)) {
        var_ecd4394f = function_f8d53445() - level.var_f099aebe;
    }
    var_8c24333b = {#var_adfc9a7e:getplayers().size, #var_174b4191:isdefined(level.var_b48509f9) ? level.var_b48509f9 : 0, #var_a32e2b21:is_true(params.completed), #var_85aa2ee9:isdefined(var_ecd4394f) ? var_ecd4394f : 0, #var_ac2606df:isdefined(params.instance.location.targetname) ? params.instance.location.targetname : "", #var_90f03449:isdefined(level.script) ? level.script : "", #var_26d27f23:function_f8d53445(), #var_fffcd514:isdefined(level.var_f099aebe) ? level.var_f099aebe : 0, #var_4472945a:isdefined(params.instance.content_script_name) ? params.instance.content_script_name : ""};
    level.var_f099aebe = undefined;
    function_92d1707f(#"hash_7c94738a8f65d945", var_8c24333b);
    players = getplayers();
    foreach (player in players) {
        if (!is_true(player.pers[#"hash_2042ab53f67e07c0"].var_6cdd00ea)) {
            return;
        }
        player.pers[#"hash_2042ab53f67e07c0"].var_6cdd00ea = 0;
        var_6e09d7 = player rank::getrankxp() - (isdefined(player.pers[#"hash_2042ab53f67e07c0"].var_8ee56f34) ? player.pers[#"hash_2042ab53f67e07c0"].var_8ee56f34 : 0);
        var_f4090d6e = player rank::function_5b197def(0) - (isdefined(player.pers[#"hash_2042ab53f67e07c0"].var_9351f0d) ? player.pers[#"hash_2042ab53f67e07c0"].var_9351f0d : 0);
        var_8ce60ee4 = player rank::function_5b197def(1) - (isdefined(player.pers[#"hash_2042ab53f67e07c0"].var_14ae9569) ? player.pers[#"hash_2042ab53f67e07c0"].var_14ae9569 : 0);
        var_c0c8369d = player rank::function_5b197def(2) - (isdefined(player.pers[#"hash_2042ab53f67e07c0"].var_dd546227) ? player.pers[#"hash_2042ab53f67e07c0"].var_dd546227 : 0);
        var_7284764c = player rank::function_5b197def(5) - (isdefined(player.pers[#"hash_2042ab53f67e07c0"].var_ccd5da9e) ? player.pers[#"hash_2042ab53f67e07c0"].var_ccd5da9e : 0);
        var_5ebc1188 = player.kills - (isdefined(player.pers[#"hash_2042ab53f67e07c0"].var_89b3f8b0) ? player.pers[#"hash_2042ab53f67e07c0"].var_89b3f8b0 : 0);
        var_b1c6f834 = {#var_adfc9a7e:getplayers().size, #var_174b4191:isdefined(level.var_b48509f9) ? level.var_b48509f9 : 0, #var_4472945a:isdefined(params.instance.content_script_name) ? params.instance.content_script_name : "", #var_c56e97ce:isdefined(var_5ebc1188) ? var_5ebc1188 : 0, #var_f58a5ef3:isdefined(var_7284764c) ? var_7284764c : 0, #var_30171d91:isdefined(var_c0c8369d) ? var_c0c8369d : 0, #var_6cf5475f:isdefined(var_8ce60ee4) ? var_8ce60ee4 : 0, #var_7ce7929c:isdefined(var_f4090d6e) ? var_f4090d6e : 0, #var_df4d256:isdefined(var_6e09d7) ? var_6e09d7 : 0};
        function_92d1707f(#"hash_7a17213a42c58963", var_b1c6f834);
    }
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 1, eflags: 0x4
// Checksum 0xb16e3cb8, Offset: 0x57d0
// Size: 0x32
function private on_ai_spawned(*params) {
    if (!isdefined(self.var_341c57b3)) {
        self.var_341c57b3 = {};
    }
    self.var_341c57b3.spawn_time = gettime();
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 1, eflags: 0x4
// Checksum 0x480cad28, Offset: 0x5810
// Size: 0xce
function private on_ai_damage(params) {
    if (!isdefined(self.var_341c57b3)) {
        self.var_341c57b3 = {};
    }
    if (isdefined(params.shitloc) && isdefined(params.vpoint) && zm_utility::function_4562a3ef(params.shitloc, params.vpoint)) {
        if (!isdefined(self.var_341c57b3.var_b968cd78)) {
            self.var_341c57b3.var_b968cd78 = 0;
        }
        self.var_341c57b3.var_b968cd78 = self.var_341c57b3.var_b968cd78 + (isdefined(params.idamage) ? params.idamage : 0);
    }
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 1, eflags: 0x4
// Checksum 0x87300b41, Offset: 0x58e8
// Size: 0xc2
function private on_player_damage(params) {
    if (isai(params.eattacker)) {
        if (!isdefined(params.eattacker.var_341c57b3)) {
            params.eattacker.var_341c57b3 = {};
        }
        if (!isdefined(params.eattacker.var_341c57b3.damage_dealt)) {
            params.eattacker.var_341c57b3.damage_dealt = 0;
        }
        params.eattacker.var_341c57b3.damage_dealt = params.eattacker.var_341c57b3.damage_dealt + params.idamage;
    }
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 1, eflags: 0x4
// Checksum 0xcb1a28a7, Offset: 0x59b8
// Size: 0x594
function private on_ai_killed(params) {
    death_type = #"normal";
    if (params.smeansofdeath === "MOD_MELEE") {
        death_type = #"melee";
    } else if (zm_utility::function_4562a3ef(params.shitloc, params.vpoint)) {
        death_type = #"hash_387748cc2ad39108";
    }
    var_39872854 = int(gettime() - (isdefined(self.var_341c57b3.spawn_time) ? self.var_341c57b3.spawn_time : 0));
    var_b968cd78 = 0;
    if (isdefined(self.var_341c57b3.var_b968cd78) && isdefined(self.maxhealth) && self.maxhealth > 0) {
        var_b968cd78 = self.var_341c57b3.var_b968cd78 / self.maxhealth;
    }
    var_da2dc026 = 0;
    if (isdefined(self.var_c2dcab66)) {
        var_da2dc026 = self.var_c2dcab66.size;
    }
    var_f374c9b5 = {#mapname:hash(isdefined(util::get_map_name()) ? util::get_map_name() : #""), #gametype:hash(isdefined(level.gametype) ? level.gametype : #""), #targetname:isdefined(self.targetname) ? self.targetname : "", #star_level:int(zm_utility::function_e3025ca5()), #round_number:int(zm_utility::get_round_number()), #var_b968cd78:float(isdefined(var_b968cd78) ? var_b968cd78 : 0), #var_da2dc026:int(isdefined(var_da2dc026) ? var_da2dc026 : 0), #weapon:isdefined(params.weapon.statname) ? params.weapon.statname : #"", #damage_dealt:int(isdefined(self.var_341c57b3.damage_dealt) ? self.var_341c57b3.damage_dealt : 0), #var_39872854:isdefined(var_39872854) ? var_39872854 : 0, #meansofdeath:isdefined(params.smeansofdeath) ? params.smeansofdeath : "", #death_type:isdefined(death_type) ? death_type : #"", #archetype:isdefined(self.archetype) ? self.archetype : #""};
    var_b850e84d = undefined;
    if (self.var_6f84b820 === #"normal") {
        var_b850e84d = #"hash_4aa10c55601000bd";
    } else if (self.var_6f84b820 === #"special") {
        var_b850e84d = #"hash_27f21bbb589d2075";
    } else if (self.var_6f84b820 === #"hash_72d4f2ad2e333eb4") {
        var_b850e84d = #"hash_214bfcabc3ccf495";
    } else if (self.var_6f84b820 === #"boss") {
        var_b850e84d = #"hash_60436c4b0bca1ab7";
    }
    if (isplayer(params.eattacker) && ishash(var_b850e84d)) {
        params.eattacker function_678f57c8(var_b850e84d, var_f374c9b5);
    }
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 1, eflags: 0x0
// Checksum 0x7eccdee1, Offset: 0x5f58
// Size: 0x1dc
function function_882720b2(data) {
    struct = {#var_88277fd8:isdefined(level.var_9678e62d.size) ? level.var_9678e62d.size : 0, #gametype:hash(isdefined(level.gametype) ? level.gametype : #""), #mapname:hash(isdefined(util::get_map_name()) ? util::get_map_name() : #""), #var_d3ace313:isdefined(data.spot[2]) ? data.spot[2] : 0, #var_ef461a45:isdefined(data.spot[1]) ? data.spot[1] : 0, #var_454ec645:isdefined(data.spot[0]) ? data.spot[0] : 0};
    if (isdefined(data.player)) {
        data.player function_678f57c8(#"hash_703c510691609dd5", struct);
    }
}

// Namespace namespace_8d0ae0b4/namespace_8d0ae0b4
// Params 1, eflags: 0x0
// Checksum 0xbaeeea1e, Offset: 0x6140
// Size: 0x9c
function function_9cac835e(data) {
    if (isdefined(data.weapon)) {
        function_abbc84ad({#weaponpickedup:0, #value:1, #statname:#"hash_30756c193f03f009", #weapon:data.weapon, #player:self});
    }
}

