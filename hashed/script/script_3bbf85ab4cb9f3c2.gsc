// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\gametypes\globallogic_score.gsc;
#using scripts\zm_common\gametypes\globallogic.gsc;
#using script_1a9763988299e68d;
#using script_2a5bf5b4a00cee0d;
#using script_40f967ad5d18ea74;
#using script_47851dbeea22fe66;
#using script_164a456ce05c3483;
#using script_4d748e58ce25b60c;
#using script_5f20d3b434d24884;
#using script_6b6510e124bad778;
#using script_1b0b07ff57d1dde3;
#using script_1ee011cd0961afd7;
#using script_350cffecd05ef6cf;
#using script_5701633066d199f2;
#using script_1b01e95a6b5270fd;
#using script_17dcb1172e441bf6;
#using script_74a56359b7d02ab6;
#using script_68cdf0ca5df5e;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\persistence_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\spawning_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\rank_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_d2efac9a;

// Namespace namespace_d2efac9a/namespace_d2efac9a
// Params 0, eflags: 0x2 linked
// Checksum 0x4bdc16bd, Offset: 0x288
// Size: 0x24
function init() {
    callback::on_disconnect(&on_player_disconnect);
}

// Namespace namespace_d2efac9a/namespace_d2efac9a
// Params 0, eflags: 0x2 linked
// Checksum 0x67362be8, Offset: 0x2b8
// Size: 0xa4
function main() {
    foreach (player in getplayers()) {
        player initplayer();
    }
    function_72c32279();
}

// Namespace namespace_d2efac9a/namespace_d2efac9a
// Params 0, eflags: 0x2 linked
// Checksum 0xa9000fec, Offset: 0x368
// Size: 0x34
function on_player_disconnect() {
    self commitstats(1);
    self function_143fa1b9();
}

// Namespace namespace_d2efac9a/namespace_d2efac9a
// Params 0, eflags: 0x2 linked
// Checksum 0xcba3b7fb, Offset: 0x3a8
// Size: 0x344
function function_143fa1b9() {
    if (!is_true(self.pers[#"telemetry"].connected)) {
        return;
    }
    self.pers[#"telemetry"].connected = 0;
    playerdata = {};
    playerdata.utc_connect_time_s = 0;
    playerdata.utc_disconnect_time_s = 0;
    playerdata.var_37b8e421 = 0;
    utc = getutc();
    if (isdefined(self.pers[#"telemetry"].utc_connect_time_s)) {
        playerdata.utc_connect_time_s = self.pers[#"telemetry"].utc_connect_time_s;
        playerdata.utc_disconnect_time_s = utc;
        playerdata.var_37b8e421 = utc - playerdata.utc_connect_time_s;
    }
    playerdata.var_6ba64843 = isdefined(self.doa.entnum) ? self.doa.entnum : 0;
    playerdata.score = self.score;
    playerdata.kills = self.kills;
    playerdata.deaths = self.deaths;
    playerdata.headshots = self.headshots;
    playerdata.revives = self.revives;
    playerdata.downs = self.downs;
    playerdata.xp_at_start = isdefined(self.pers[#"telemetry"].xp_at_start) ? self.pers[#"telemetry"].xp_at_start : 0;
    playerdata.xp_at_end = self rank::getrankxp();
    playerdata.var_9f177532 = isdefined(self.pers[#"telemetry"].var_9f177532) ? self.pers[#"telemetry"].var_9f177532 : 0;
    playerdata.var_735f5996 = self rank::getrank();
    playerdata.var_161a9fc9 = 0;
    if (!is_true(level.gameended)) {
        playerdata.var_161a9fc9 = 1;
    }
    self function_678f57c8(#"hash_60754262dd09efac", playerdata);
    self function_e5d9f30(playerdata.score, playerdata.kills, playerdata.deaths, playerdata.headshots, 0, playerdata.xp_at_start, playerdata.xp_at_end, playerdata.var_9f177532, playerdata.var_735f5996, level.doa.roundnumber, playerdata.var_37b8e421);
}

// Namespace namespace_d2efac9a/namespace_d2efac9a
// Params 0, eflags: 0x2 linked
// Checksum 0x6a8ddeda, Offset: 0x6f8
// Size: 0x1ee
function function_72c32279() {
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
    level.doa.var_664849f3 = gettime();
}

// Namespace namespace_d2efac9a/namespace_d2efac9a
// Params 0, eflags: 0x2 linked
// Checksum 0x7196b11d, Offset: 0x8f0
// Size: 0x2d4
function function_d519e318() {
    players = getplayers();
    foreach (player in players) {
        player function_143fa1b9();
    }
    utc = getutc();
    matchend = {};
    matchend.var_dc73ada2 = 0;
    matchend.var_44be7e07 = utc;
    matchend.map = hash(util::get_map_name());
    matchend.game_type = hash(level.gametype);
    matchend.var_c8019fa4 = sessionmodeisprivateonlinegame();
    matchend.var_137fea24 = sessionmodeissystemlink();
    matchend.is_dedicated = isdedicated();
    matchend.playlist_id = currentplaylistid();
    matchend.playlist_name = hash(function_970f37d1());
    matchend.var_65dcfd4a = getdvarint(#"hash_4c63a0806012e032", 0);
    matchend.var_a14949d8 = getdvarstring(#"hash_164a9a28628343ef", "");
    matchend.end_round = level.doa.roundnumber;
    if (isdefined(game.telemetry)) {
        game.telemetry.var_36b58be2 = 1;
    }
    if (isdefined(game.telemetry.var_dc73ada2)) {
        time_seconds = utc - game.telemetry.var_dc73ada2;
        matchend.var_dc73ada2 = game.telemetry.var_dc73ada2;
    }
    level.doa.var_b6599716 = gettime();
    function_92d1707f(#"hash_572d4a196995ede6", matchend);
}

// Namespace namespace_d2efac9a/namespace_d2efac9a
// Params 0, eflags: 0x2 linked
// Checksum 0x4bbc81a0, Offset: 0xbd0
// Size: 0x586
function initplayer() {
    assert(isdefined(self.doa));
    profilestart();
    self.score = 0;
    self.kills = 0;
    self.deaths = 0;
    self.headshots = 0;
    self.revives = 0;
    self.downs = 0;
    if (getdvarint(#"hash_4c52528eb82f5d56", 0)) {
        keys = self stats::get_stat(#"hash_64fd75a9ce18b89f", #"keys");
        if (keys) {
            if (keys > 9) {
                keys = 9;
            }
            self.doa.score.keys = keys;
        }
    }
    self.doa.var_48021422 = gettime();
    self.doa.var_bcfd90a5 = #"hash_7eb2e5e9d5a52fbe";
    if (is_true(level.doa.hardcoremode)) {
        self.doa.var_bcfd90a5 = #"hash_b3fc7f8a3625bd8";
    }
    if (is_true(level.doa.var_318aa67a)) {
        if (is_true(level.doa.hardcoremode)) {
            self.doa.var_bcfd90a5 = #"hash_73a979a5dfcc9239";
        } else {
            self.doa.var_bcfd90a5 = #"hash_4c137caaf669154f";
        }
    }
    self.doa.var_f240d1a5 = self stats::get_stat(#"hash_64fd75a9ce18b89f", #"hash_72018b7229672430");
    var_220d700c = self stats::get_stat_global(#"hash_2b71f0bb19aa0c6f");
    if (var_220d700c !== level.doa.var_4eb7c3f0) {
        self.doa.var_9c66788e = &function_9cbd5b89;
    }
    self.doa.var_984d40cb = 0;
    var_18909aca = self stats::get_stat_global(#"hash_60d916826ca6a779");
    if (!is_true(var_18909aca)) {
        self.doa.var_7d46d3b9 = &function_33d5de6e;
    }
    self.doa.var_7873e24e = 0;
    var_728d3ebf = self stats::get_stat_global(#"hash_739a48fafddd915c");
    if (!is_true(var_728d3ebf)) {
        self.doa.var_fe639705 = &function_ae14e580;
    }
    if (!is_true(self.pers[#"telemetry"].connected)) {
        if (!isdefined(self.pers[#"telemetry"])) {
            self.pers[#"telemetry"] = {};
        }
        self.pers[#"telemetry"].utc_connect_time_s = getutc();
        self.pers[#"telemetry"].connected = 1;
        self.pers[#"telemetry"].xp_at_start = self rank::getrankxp();
        self.pers[#"telemetry"].var_9f177532 = self rank::getrank();
        playerdata = {};
        playerdata.utc_connect_time_s = self.pers[#"telemetry"].utc_connect_time_s;
        playerdata.var_6ba64843 = isdefined(self.doa.entnum) ? self.doa.entnum : 0;
        playerdata.var_524ab934 = self function_d40f1a0e();
        playerdata.var_504e19f4 = self function_21f71ac8();
        playerdata.var_68441d6f = self function_325dc923();
        self function_678f57c8(#"hash_577b6d450d80cbd5", playerdata);
    }
    profilestop();
}

// Namespace namespace_d2efac9a/namespace_d2efac9a
// Params 1, eflags: 0x2 linked
// Checksum 0xa339d8df, Offset: 0x1160
// Size: 0x11c
function function_ae14e580(type) {
    if (is_true(level.doa.nostats)) {
        return;
    }
    if (!isdefined(self.doa)) {
        return;
    }
    if (type == -1) {
        return;
    }
    self.doa.var_7873e24e |= 1 << type;
    if (self.doa.var_7873e24e == level.doa.var_dfcf49f8) {
        self.doa.var_fe639705 = undefined;
        val = stats::get_stat_global(#"hash_739a48fafddd915c");
        if (val == 0) {
            self stats::function_dad108fa(#"hash_739a48fafddd915c", 1);
        }
        self commitstats();
    }
}

// Namespace namespace_d2efac9a/namespace_d2efac9a
// Params 1, eflags: 0x2 linked
// Checksum 0x6075a729, Offset: 0x1288
// Size: 0xf4
function function_cb7b5503(commit = 1) {
    if (is_true(level.doa.nostats)) {
        return;
    }
    if (!isdefined(self.doa)) {
        return;
    }
    self stats::inc_stat(#"hash_64fd75a9ce18b89f", #"hash_2ee36cbdfb5f4bc1", 1);
    self stats::inc_stat(self.doa.var_bcfd90a5, getplayers().size - 1, #"hash_293184ce9f1b2938", 1);
    if (commit) {
        self commitstats();
    }
}

// Namespace namespace_d2efac9a/namespace_d2efac9a
// Params 1, eflags: 0x2 linked
// Checksum 0xf4158c23, Offset: 0x1388
// Size: 0x10c
function function_33d5de6e(type) {
    if (is_true(level.doa.nostats)) {
        return;
    }
    if (!isdefined(self.doa)) {
        return;
    }
    self.doa.var_984d40cb |= 1 << type;
    if (self.doa.var_984d40cb == (1 | 2 | 4 | 8 | 16 | 32 | 64)) {
        self.doa.var_7d46d3b9 = undefined;
        val = stats::get_stat_global(#"hash_60d916826ca6a779");
        if (val == 0) {
            self stats::function_dad108fa(#"hash_60d916826ca6a779", 1);
        }
    }
}

// Namespace namespace_d2efac9a/namespace_d2efac9a
// Params 1, eflags: 0x2 linked
// Checksum 0x8827c7de, Offset: 0x14a0
// Size: 0x186
function function_9cbd5b89(typemask) {
    if (is_true(level.doa.nostats)) {
        return;
    }
    if (!isdefined(self.doa)) {
        return;
    }
    if ((self.doa.var_f240d1a5 & typemask) == 0) {
        self.doa.var_f240d1a5 |= typemask;
        self stats::function_dad108fa(#"hash_2b71f0bb19aa0c6f", 1);
        /#
            num = self stats::get_stat_global(#"hash_2b71f0bb19aa0c6f");
            namespace_1e25ad94::debugmsg("<unknown string>");
            namespace_1e25ad94::debugmsg("<unknown string>" + self.name + "<unknown string>" + num + "<unknown string>" + level.doa.var_4eb7c3f0);
            namespace_1e25ad94::debugmsg("<unknown string>");
        #/
    }
    if (self.doa.var_f240d1a5 == level.doa.var_695258a5) {
        self.doa.var_9c66788e = undefined;
    }
}

// Namespace namespace_d2efac9a/namespace_d2efac9a
// Params 1, eflags: 0x2 linked
// Checksum 0xd46693b2, Offset: 0x1630
// Size: 0x13c
function function_3f112727(commit = 1) {
    if (is_true(level.doa.nostats)) {
        return;
    }
    if (!isdefined(self.doa)) {
        return;
    }
    if (!isdefined(self.doa.var_90e186f2)) {
        self.doa.var_90e186f2 = 0;
    }
    self.doa.var_90e186f2++;
    if (!isdefined(self.doa.var_5598fe58)) {
        self.doa.var_5598fe58 = 0;
    }
    self.doa.var_5598fe58++;
    val = stats::get_stat_global(#"hash_77660914e8c70a14");
    if (val == 0) {
        self stats::function_dad108fa(#"hash_77660914e8c70a14", 1);
    }
    if (commit) {
        self commitstats();
    }
}

// Namespace namespace_d2efac9a/namespace_d2efac9a
// Params 1, eflags: 0x2 linked
// Checksum 0xf1fe42d1, Offset: 0x1778
// Size: 0x94
function vehiclekill(commit = 0) {
    if (is_true(level.doa.nostats)) {
        return;
    }
    if (!isdefined(self.doa)) {
        return;
    }
    self stats::function_dad108fa(#"hash_730fd5daf2821481", 1);
    if (commit) {
        self commitstats();
    }
}

// Namespace namespace_d2efac9a/namespace_d2efac9a
// Params 1, eflags: 0x2 linked
// Checksum 0xb3148448, Offset: 0x1818
// Size: 0x94
function function_dc4e1885(commit = 0) {
    if (is_true(level.doa.nostats)) {
        return;
    }
    if (!isdefined(self.doa)) {
        return;
    }
    self stats::function_dad108fa(#"hash_52ead07d6d583a9a", 1);
    if (commit) {
        self commitstats();
    }
}

// Namespace namespace_d2efac9a/namespace_d2efac9a
// Params 1, eflags: 0x2 linked
// Checksum 0xe0f122e0, Offset: 0x18b8
// Size: 0x94
function function_dd188769(commit = 0) {
    if (is_true(level.doa.nostats)) {
        return;
    }
    if (!isdefined(self.doa)) {
        return;
    }
    self stats::function_dad108fa(#"hash_1c3294f143668662", 1);
    if (commit) {
        self commitstats();
    }
}

// Namespace namespace_d2efac9a/namespace_d2efac9a
// Params 1, eflags: 0x2 linked
// Checksum 0x82633b41, Offset: 0x1958
// Size: 0x94
function function_6753bc5e(commit = 0) {
    if (is_true(level.doa.nostats)) {
        return;
    }
    if (!isdefined(self.doa)) {
        return;
    }
    self stats::function_dad108fa(#"hash_26686e13063f6b52", 1);
    if (commit) {
        self commitstats();
    }
}

// Namespace namespace_d2efac9a/namespace_d2efac9a
// Params 2, eflags: 0x2 linked
// Checksum 0x1dd60bd9, Offset: 0x19f8
// Size: 0xdc
function function_a9f863ca(value, commit = 0) {
    if (is_true(level.doa.nostats)) {
        return;
    }
    if (value !== 7) {
        return;
    }
    if (!isdefined(self.doa)) {
        return;
    }
    val = stats::get_stat_global(#"hash_5bbe74ea4f5afcf2");
    if (val > 0) {
        return;
    }
    self stats::function_dad108fa(#"hash_5bbe74ea4f5afcf2", 1);
    if (commit) {
        self commitstats();
    }
}

// Namespace namespace_d2efac9a/namespace_d2efac9a
// Params 1, eflags: 0x2 linked
// Checksum 0xab3dd1e1, Offset: 0x1ae0
// Size: 0x94
function function_9a8fff78(commit = 0) {
    if (is_true(level.doa.nostats)) {
        return;
    }
    if (!isdefined(self.doa)) {
        return;
    }
    self stats::function_dad108fa(#"hash_57e965d0cd558b43", 1);
    if (commit) {
        self commitstats();
    }
}

// Namespace namespace_d2efac9a/namespace_d2efac9a
// Params 1, eflags: 0x2 linked
// Checksum 0x39262495, Offset: 0x1b80
// Size: 0x94
function function_d7ee01df(commit = 0) {
    if (is_true(level.doa.nostats)) {
        return;
    }
    if (!isdefined(self.doa)) {
        return;
    }
    self stats::function_dad108fa(#"hash_72b0fc7205732661", 1);
    if (commit) {
        self commitstats();
    }
}

// Namespace namespace_d2efac9a/namespace_d2efac9a
// Params 1, eflags: 0x2 linked
// Checksum 0xdf5c4f98, Offset: 0x1c20
// Size: 0x94
function function_9d3fe107(commit = 0) {
    if (is_true(level.doa.nostats)) {
        return;
    }
    if (!isdefined(self.doa)) {
        return;
    }
    self stats::function_dad108fa(#"hash_36df4a3528961605", 1);
    if (commit) {
        self commitstats();
    }
}

// Namespace namespace_d2efac9a/namespace_d2efac9a
// Params 1, eflags: 0x2 linked
// Checksum 0x511c4be0, Offset: 0x1cc0
// Size: 0xc4
function function_267c2183(commit = 1) {
    if (is_true(level.doa.nostats)) {
        return;
    }
    if (!isdefined(self.doa)) {
        return;
    }
    val = stats::get_stat_global(#"hash_7a72e4b09f5dc89b");
    if (val > 0) {
        return;
    }
    self stats::function_dad108fa(#"hash_7a72e4b09f5dc89b", 1);
    if (commit) {
        self commitstats();
    }
}

// Namespace namespace_d2efac9a/namespace_d2efac9a
// Params 2, eflags: 0x2 linked
// Checksum 0x84e4362d, Offset: 0x1d90
// Size: 0xe4
function function_6c15a74e(amount = 1, commit = 1) {
    if (is_true(level.doa.nostats)) {
        return;
    }
    if (!isdefined(self.doa)) {
        return;
    }
    if (getdvarint(#"hash_4c52528eb82f5d56", 0)) {
        self stats::inc_stat(#"hash_64fd75a9ce18b89f", #"keys", amount);
        if (commit) {
            self commitstats();
        }
    }
}

// Namespace namespace_d2efac9a/namespace_d2efac9a
// Params 2, eflags: 0x2 linked
// Checksum 0x67d07c97, Offset: 0x1e80
// Size: 0xfc
function function_849a9028(amount = 1, commit = 1) {
    if (is_true(level.doa.nostats)) {
        return;
    }
    if (!isdefined(self.doa)) {
        return;
    }
    self.downs += amount;
    if (getdvarint(#"hash_4c52528eb82f5d56", 0)) {
        self stats::inc_stat(#"hash_64fd75a9ce18b89f", #"keys", amount * -1);
        if (commit) {
            self commitstats();
        }
    }
}

// Namespace namespace_d2efac9a/namespace_d2efac9a
// Params 0, eflags: 0x2 linked
// Checksum 0x9648261b, Offset: 0x1f88
// Size: 0x112
function function_3ebf2857() {
    return array(#"hash_37fcc31e34bbeb9e", #"hash_30c3377dea0ec672", #"hash_783086b558e2dc6d", #"hash_264b2ce1e929e63", #"hash_38521164875979cf", #"hash_1328d5cabc7889be", #"hash_662517d93580ed90", #"hash_2ee36cbdfb5f4bc1", #"hash_33c5bfbb26aa533d", #"hash_2c68b416438cca27", #"hash_191ee9b05c5a28d0", #"hash_72018b7229672430", #"keys", #"hash_5a6bd78423046ffb", #"lastscore", #"version");
}

// Namespace namespace_d2efac9a/namespace_d2efac9a
// Params 0, eflags: 0x2 linked
// Checksum 0xb7db6a5b, Offset: 0x20a8
// Size: 0xd0
function function_4bcf7d44() {
    statsarray = function_3ebf2857();
    foreach (stat in statsarray) {
        self stats::set_stat(#"hash_612e897b8faf4be5", stat, self stats::get_stat(#"hash_64fd75a9ce18b89f", stat));
    }
}

// Namespace namespace_d2efac9a/namespace_d2efac9a
// Params 1, eflags: 0x2 linked
// Checksum 0xc61016de, Offset: 0x2180
// Size: 0xfc
function function_ce6790bd(version = 4) {
    statsarray = function_3ebf2857();
    foreach (stat in statsarray) {
        self stats::set_stat(#"hash_64fd75a9ce18b89f", stat, 0);
    }
    self stats::set_stat(#"hash_64fd75a9ce18b89f", #"version", version);
}

// Namespace namespace_d2efac9a/namespace_d2efac9a
// Params 0, eflags: 0x2 linked
// Checksum 0x16c5415b, Offset: 0x2288
// Size: 0xa2
function function_641327ef() {
    return array(#"hash_556f3c8bf3274ed4", #"highest_score", #"hash_1ba322b9218ca4e8", #"hash_16bf05d4f1efc4eb", #"gems", #"hash_293184ce9f1b2938", #"kills", #"deaths", #"version");
}

// Namespace namespace_d2efac9a/namespace_d2efac9a
// Params 3, eflags: 0x2 linked
// Checksum 0x38da3622, Offset: 0x2338
// Size: 0xf4
function function_f62d3c5a(base, idx, version) {
    statsarray = function_641327ef();
    foreach (stat in statsarray) {
        self stats::set_stat(base, idx, stat, 0);
    }
    if (isdefined(version)) {
        self stats::set_stat(base, idx, #"version", version);
    }
}

// Namespace namespace_d2efac9a/namespace_d2efac9a
// Params 1, eflags: 0x2 linked
// Checksum 0x7ee413a4, Offset: 0x2438
// Size: 0xdc
function function_3116e435(version = 4) {
    for (i = 0; i < 4; i++) {
        function_f62d3c5a(#"hash_7eb2e5e9d5a52fbe", i, version);
        function_f62d3c5a(#"hash_4c137caaf669154f", i, version);
        function_f62d3c5a(#"hash_b3fc7f8a3625bd8", i, version);
        function_f62d3c5a(#"hash_73a979a5dfcc9239", i, version);
    }
}

// Namespace namespace_d2efac9a/namespace_d2efac9a
// Params 3, eflags: 0x2 linked
// Checksum 0x4f2115e9, Offset: 0x2520
// Size: 0xd8
function function_1f8dcb18(var_3e3c5b57, base, idx) {
    statsarray = function_641327ef();
    foreach (stat in statsarray) {
        self stats::set_stat(var_3e3c5b57, idx, stat, self stats::get_stat(base, idx, stat));
    }
}

// Namespace namespace_d2efac9a/namespace_d2efac9a
// Params 0, eflags: 0x2 linked
// Checksum 0x290b0018, Offset: 0x2600
// Size: 0xec
function function_8a304420() {
    for (i = 0; i < 4; i++) {
        function_1f8dcb18(#"hash_2d53ab82534a78a0", #"hash_7eb2e5e9d5a52fbe", i);
        function_1f8dcb18(#"hash_34d39d29ecc57a21", #"hash_4c137caaf669154f", i);
        function_1f8dcb18(#"hash_31991c471ee140b2", #"hash_b3fc7f8a3625bd8", i);
        function_1f8dcb18(#"hash_65b4f15ea5b78483", #"hash_73a979a5dfcc9239", i);
    }
}

// Namespace namespace_d2efac9a/namespace_d2efac9a
// Params 1, eflags: 0x2 linked
// Checksum 0x5aa55ef9, Offset: 0x26f8
// Size: 0x64c
function function_b4dfdc63(idx) {
    if (getdvarint(#"hash_54b8de6da110d19e", 1) == 0) {
        return;
    }
    var_44880184 = self stats::get_stat(#"hash_64fd75a9ce18b89f", #"version");
    newversion = var_44880184 != 255 ? 4 : 255;
    self.var_c213da47 = 0;
    if (var_44880184 != 4) {
        switch (var_44880184) {
        case 0:
        case 0:
        case 255:
            function_ce6790bd(newversion);
            break;
        case 1:
            function_4bcf7d44();
            self stats::set_stat(#"hash_64fd75a9ce18b89f", #"hash_30c3377dea0ec672", 0);
            self stats::set_stat(#"hash_64fd75a9ce18b89f", #"hash_783086b558e2dc6d", 0);
            self stats::set_stat(#"hash_64fd75a9ce18b89f", #"hash_264b2ce1e929e63", 0);
            break;
        case 2:
            function_4bcf7d44();
            self stats::set_stat(#"hash_64fd75a9ce18b89f", #"hash_783086b558e2dc6d", 0);
            self stats::set_stat(#"hash_64fd75a9ce18b89f", #"hash_264b2ce1e929e63", 0);
            break;
        case 3:
            self.var_c213da47 = 1;
            function_4bcf7d44();
            self stats::inc_stat(#"hash_64fd75a9ce18b89f", #"hash_33c5bfbb26aa533d", 1);
            if (!isdefined(idx)) {
                idx = 0;
            }
            break;
        }
    }
    self stats::set_stat(#"hash_64fd75a9ce18b89f", #"version", newversion);
    if (!isdefined(idx)) {
        return;
    }
    var_1c817c65 = self stats::get_stat(self.doa.var_bcfd90a5, idx, #"version");
    var_1c817c65 = var_44880184 != 255 ? var_1c817c65 : 255;
    var_72ff1564 = var_1c817c65 != 255 ? 4 : 255;
    if (var_1c817c65 != 4) {
        switch (var_1c817c65) {
        case 0:
        case 255:
            function_3116e435(var_72ff1564);
            return;
        case 0:
        case 1:
        case 2:
            function_8a304420();
            function_3116e435(var_72ff1564);
            break;
        case 3:
            function_8a304420();
            for (i = 0; i < 4; i++) {
                if (self stats::get_stat(#"hash_7eb2e5e9d5a52fbe", i, #"hash_1ba322b9218ca4e8") > 80) {
                    function_f62d3c5a(#"hash_7eb2e5e9d5a52fbe", i);
                }
                self stats::set_stat(#"hash_7eb2e5e9d5a52fbe", i, #"version", var_72ff1564);
                self stats::inc_stat(#"hash_7eb2e5e9d5a52fbe", i, #"kills", 1);
                if (self stats::get_stat(#"hash_4c137caaf669154f", i, #"hash_1ba322b9218ca4e8") > 80) {
                    function_f62d3c5a(#"hash_4c137caaf669154f", i);
                }
                self stats::set_stat(#"hash_4c137caaf669154f", i, #"version", var_72ff1564);
                self stats::inc_stat(#"hash_4c137caaf669154f", i, #"kills", 1);
            }
            break;
        }
    }
    self stats::set_stat(self.doa.var_bcfd90a5, idx, #"version", 4);
}

// Namespace namespace_d2efac9a/namespace_d2efac9a
// Params 2, eflags: 0x2 linked
// Checksum 0xf68f24e8, Offset: 0x2d50
// Size: 0x3c
function function_9daadcaa(stat_name, value) {
    self stats::set_stat(#"afteractionreportstats", stat_name, value);
}

// Namespace namespace_d2efac9a/namespace_d2efac9a
// Params 0, eflags: 0x2 linked
// Checksum 0xb500389f, Offset: 0x2d98
// Size: 0x134
function function_4226df4b() {
    var_9a24b67c = level.var_73ffa220[self.name];
    if (isdefined(var_9a24b67c)) {
        if (isdefined(var_9a24b67c.var_7411a081) && var_9a24b67c.var_7411a081 > 2) {
            return false;
        }
    }
    if (level.doa.roundnumber > 30) {
        if (!isdefined(self.doa.var_87c1cd32)) {
            self.doa.var_87c1cd32 = 0;
        }
        var_833a4163 = (self.doa.var_87c1cd32 + 1) / level.doa.roundnumber;
        self.doa.var_64a9c906 = int(var_833a4163 * 100);
        if (var_833a4163 < 0.75) {
            return false;
        }
    }
    return self.var_248bd83 <= 4 || is_true(self.var_c213da47);
}

// Namespace namespace_d2efac9a/namespace_d2efac9a
// Params 0, eflags: 0x2 linked
// Checksum 0x553851f, Offset: 0x2ed8
// Size: 0xce
function function_bd2f140c() {
    if (!isdefined(self) || !isdefined(self.name)) {
        return;
    }
    var_9a24b67c = level.var_73ffa220[self.name];
    if (isdefined(var_9a24b67c) && isdefined(self.doa)) {
        var_9a24b67c.var_87c1cd32 = self.doa.var_87c1cd32;
        var_9a24b67c.lastscore = self.doa.score.var_1397c196;
        var_9a24b67c.var_e239d6ea = self.doa.score.var_5eac81d0;
        var_9a24b67c.var_5229d36f = self.doa.score.var_a928c52e;
    }
}

// Namespace namespace_d2efac9a/namespace_d2efac9a
// Params 0, eflags: 0x2 linked
// Checksum 0xf4e53b08, Offset: 0x2fb0
// Size: 0x9c
function function_21dc53ff() {
    if (!isdefined(self.doa)) {
        return;
    }
    if (!isdefined(self.doa.var_87c1cd32)) {
        self.doa.var_87c1cd32 = 0;
    }
    if (isdefined(self.doa.var_c739e4eb) && self.doa.var_c739e4eb > 0) {
        self.doa.var_87c1cd32 += 1;
    }
    self function_bd2f140c();
}

// Namespace namespace_d2efac9a/namespace_d2efac9a
// Params 1, eflags: 0x2 linked
// Checksum 0xb040dc8d, Offset: 0x3058
// Size: 0x17e6
function commitstats(*gameover) {
    if (!isdefined(self)) {
        return;
    }
    if (isbot(self) || self istestclient()) {
        return;
    }
    if (!isdefined(self.doa)) {
        return;
    }
    if (!sessionmodeisonlinegame()) {
        return;
    }
    if (is_true(level.var_87d7c3ab)) {
        return;
    }
    if (self stats::get_stat(#"hash_64fd75a9ce18b89f", #"version") === 255) {
        return;
    }
    profilestart();
    self function_9daadcaa(#"total_points", self.doa.score.points);
    self function_9daadcaa(#"kills", self.doa.score.killstotal);
    self function_9daadcaa(#"highest_round_reached", level.doa.roundnumber);
    self function_9daadcaa(#"total_rounds_survived", level.doa.roundnumber);
    gamelength = int(gettime() - level.doa.gamestarttime);
    self function_9daadcaa(#"gamelength", gamelength);
    if (!isdefined(self.pers[#"damagedone"])) {
        self.pers[#"damagedone"] = 0;
    }
    self persistence::set_recent_stat(0, 0, #"damage", int(self.pers[#"damagedone"] / 10));
    if (!isdefined(self.pers[#"outcome"])) {
        self.pers[#"outcome"] = #"loss";
    }
    self persistence::set_recent_stat(0, 0, #"outcome", self.pers[#"outcome"]);
    self.objscore = self.doa.score.points;
    if (is_true(level.doa.advancedstart)) {
        var_f0ac2041 = self stats::get_stat(#"hash_64fd75a9ce18b89f", #"hash_5a6bd78423046ffb");
        if (level.doa.roundnumber > var_f0ac2041) {
            self stats::set_stat(#"hash_64fd75a9ce18b89f", #"hash_5a6bd78423046ffb", level.doa.roundnumber);
        }
    }
    if (!is_true(level.doa.nostats)) {
        idx = isdefined(level.doa.var_72b32209) ? math::clamp(level.doa.var_72b32209 - 1, 0, 3) : undefined;
        self function_b4dfdc63(idx);
        self stats::set_stat(#"hash_728e8b5a7105e67b", #"hash_13415ebc53761117", level.doa.roundnumber);
        self stats::set_stat(#"hash_728e8b5a7105e67b", #"lastscore", self.doa.score.points);
        self stats::set_stat(#"hash_728e8b5a7105e67b", #"hash_200d869fc17e4b89", self.doa.score.var_33ae24);
        self stats::set_stat(#"hash_728e8b5a7105e67b", #"hash_3ad474827eac07ba", self.doa.score.killstotal);
        self stats::set_stat(#"hash_728e8b5a7105e67b", #"hash_37ba624819b13566", self.doa.score.var_267d0586);
        if (self function_4226df4b() == 0) {
            self stats::set_stat(#"hash_694e40bd2fe6dcf2", #"hash_13415ebc53761117", level.doa.roundnumber);
            self stats::set_stat(#"hash_694e40bd2fe6dcf2", #"lastscore", self.doa.score.points);
            if (!isdefined(self.doa.var_58d7843d)) {
                self.doa.var_58d7843d = level.doa.roundnumber;
                self stats::set_stat(#"hash_694e40bd2fe6dcf2", #"hash_3a2be61c77418bea", isdefined(self.doa.var_58d7843d) ? self.doa.var_58d7843d : 0);
                self stats::set_stat(#"hash_694e40bd2fe6dcf2", #"hash_35eb0550952dec8e", isdefined(self.doa.var_64a9c906) ? self.doa.var_64a9c906 : 0);
                self stats::set_stat(#"hash_694e40bd2fe6dcf2", #"hash_453cb758fb485633", isdefined(self.var_248bd83) ? self.var_248bd83 : 0);
                var_9a24b67c = level.var_73ffa220[self.name];
                if (isdefined(var_9a24b67c)) {
                    self stats::set_stat(#"hash_694e40bd2fe6dcf2", #"hash_485f52fe58e6c27e", isdefined(var_9a24b67c.var_7411a081) ? var_9a24b67c.var_7411a081 : 0);
                }
            }
        }
        self.pers[#"deaths"] = self.doa.score.var_267d0586;
        self stats::set_stat(#"hash_64fd75a9ce18b89f", #"hash_191ee9b05c5a28d0", self.doa.var_25f4de97);
        self stats::set_stat(#"hash_64fd75a9ce18b89f", #"hash_72018b7229672430", self.doa.var_f240d1a5);
        var_c35ec960 = self stats::get_stat(#"hash_64fd75a9ce18b89f", #"hash_38521164875979cf");
        var_98285479 = self stats::get_stat(#"hash_4e2b235aab294a3a", #"generic", 0);
        var_c35ec960 += self.doa.score.var_96798a01;
        var_98285479 += self.doa.score.var_96798a01;
        if (var_c35ec960 >= 999999999) {
            val = stats::get_stat_global(#"hash_40b4e16c1b39585");
            if (val == 0) {
                self stats::function_dad108fa(#"hash_40b4e16c1b39585", 1);
            }
        }
        self stats::set_stat(#"hash_64fd75a9ce18b89f", #"hash_38521164875979cf", var_c35ec960);
        self stats::set_stat(#"hash_4e2b235aab294a3a", #"generic", 0, var_98285479);
        self.doa.score.var_96798a01 = 0;
        namespace_1e25ad94::debugmsg("Progress towards doa_darkops_score = " + var_c35ec960);
        assert(isdefined(self.var_248bd83));
        if (!isdefined(self.var_248bd83)) {
            self.var_248bd83 = 1;
        }
        if (self function_4226df4b() && isdefined(idx)) {
            self stats::inc_stat(#"hash_64fd75a9ce18b89f", #"hash_37fcc31e34bbeb9e", self.doa.score.var_4e33830e);
            self stats::inc_stat(self.doa.var_bcfd90a5, idx, #"hash_556f3c8bf3274ed4", self.doa.score.var_4e33830e);
            self.doa.score.var_4e33830e = 0;
            self stats::inc_stat(#"hash_64fd75a9ce18b89f", #"hash_1328d5cabc7889be", self.doa.var_7e445455);
            self.doa.var_7e445455 = 0;
            self stats::inc_stat(#"hash_64fd75a9ce18b89f", #"hash_662517d93580ed90", self.doa.score.var_c31799a1);
            self stats::inc_stat(self.doa.var_bcfd90a5, idx, #"gems", self.doa.score.var_c31799a1);
            self.doa.score.var_c31799a1 = 0;
            self stats::inc_stat(#"hash_64fd75a9ce18b89f", #"hash_33c5bfbb26aa533d", self.doa.score.kills);
            self stats::inc_stat(self.doa.var_bcfd90a5, idx, #"kills", self.doa.score.kills);
            self.doa.score.kills = 0;
            self stats::inc_stat(#"hash_64fd75a9ce18b89f", #"hash_2c68b416438cca27", self.doa.score.deaths);
            self stats::inc_stat(self.doa.var_bcfd90a5, idx, #"deaths", self.doa.score.deaths);
            self globallogic_score::incpersstat(#"deaths", self.doa.score.deaths, 1, 1);
            self.doa.score.deaths = 0;
            self stats::inc_stat(#"hash_64fd75a9ce18b89f", #"hash_30c3377dea0ec672", self.doa.var_90e186f2);
            self stats::inc_stat(self.doa.var_bcfd90a5, idx, #"hash_16bf05d4f1efc4eb", self.doa.var_90e186f2);
            self.doa.var_90e186f2 = 0;
            if (level.doa.var_72b32209 === 1) {
                var_f0ac2041 = self stats::get_stat(#"hash_64fd75a9ce18b89f", #"hash_5a6bd78423046ffb");
                if (level.doa.roundnumber > var_f0ac2041) {
                    self stats::set_stat(#"hash_64fd75a9ce18b89f", #"hash_5a6bd78423046ffb", level.doa.roundnumber);
                }
            }
            var_f0ac2041 = self stats::get_stat(#"hash_64fd75a9ce18b89f", #"hash_264b2ce1e929e63");
            if (level.doa.roundnumber > var_f0ac2041) {
                self stats::set_stat(#"hash_64fd75a9ce18b89f", #"hash_264b2ce1e929e63", level.doa.roundnumber);
                assert(isdefined(self.doa.var_48021422));
                if (isdefined(self.doa.var_48021422)) {
                    self stats::set_stat(#"hash_64fd75a9ce18b89f", #"hash_6c97ca81659454e4", gettime() - self.doa.var_48021422);
                }
            }
            highscore = self stats::get_stat(#"hash_64fd75a9ce18b89f", #"hash_783086b558e2dc6d");
            if (self.doa.score.points > highscore) {
                self stats::set_stat(#"hash_64fd75a9ce18b89f", #"hash_783086b558e2dc6d", self.doa.score.points);
                assert(isdefined(self.doa.var_48021422));
                if (isdefined(self.doa.var_48021422)) {
                    self stats::set_stat(#"hash_64fd75a9ce18b89f", #"hash_504d11817d1d551e", gettime() - self.doa.var_48021422);
                }
            }
            var_f0ac2041 = self stats::get_stat(self.doa.var_bcfd90a5, idx, #"hash_1ba322b9218ca4e8");
            if (level.doa.roundnumber > var_f0ac2041) {
                self stats::set_stat(self.doa.var_bcfd90a5, idx, #"hash_1ba322b9218ca4e8", level.doa.roundnumber);
                assert(isdefined(self.doa.var_48021422));
                if (isdefined(self.doa.var_48021422)) {
                    self stats::set_stat(self.doa.var_bcfd90a5, idx, #"hash_30b1d9e3c997a7e9", gettime() - self.doa.var_48021422);
                }
            }
            highscore = self stats::get_stat(self.doa.var_bcfd90a5, idx, #"highest_score");
            if (self.doa.score.points > highscore) {
                self stats::set_stat(self.doa.var_bcfd90a5, idx, #"highest_score", self.doa.score.points);
                assert(isdefined(self.doa.var_48021422));
                if (isdefined(self.doa.var_48021422)) {
                    self stats::set_stat(self.doa.var_bcfd90a5, idx, #"hash_15ec68fc61006a73", gettime() - self.doa.var_48021422);
                }
            }
        }
    }
    if (getdvarint(#"hash_73899531201aebda", 1) && getdvarint(#"hash_262e5087a510a8dc", 0)) {
        if (isdefined(self.doa.var_d362196a) && self.doa.var_d362196a > 0) {
            var_f406f7e3 = getdvarstring(#"hash_34643bedf53971b2", "");
            var_d362196a = int(self.doa.var_d362196a * getdvarfloat(#"hash_351b291e47172d46", 1));
            self.doa.var_3b5fa231 += var_d362196a;
            self.doa.var_d362196a = 0;
            if (var_f406f7e3 != "") {
                currxp = self rank::getrankxp();
                xpearned = 0;
                if (isdefined(self.pers[#"hash_43ad5d1b08145b1f"])) {
                    xpearned = currxp - self.pers[#"hash_43ad5d1b08145b1f"];
                }
                self.pers[#"hash_43ad5d1b08145b1f"] = currxp;
                var_90f98f51 = int(self function_c52bcf79() * 100);
                var_d0a27bc3 = int(self getxpscale() * 100);
                var_524ab934 = self function_d40f1a0e();
                var_68441d6f = self function_325dc923();
                namespace_1e25ad94::debugmsg("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$");
                namespace_1e25ad94::debugmsg("DOA Battle Pass XP (" + self.name + "): reported time played: " + var_d362196a + ", XP Modifier: " + var_90f98f51 + ", Xp Earned: " + xpearned);
                namespace_1e25ad94::debugmsg("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$");
                var_ae857992 = getdvarint(#"hash_60d812bef0f782fb", 0);
                self function_cce105c8(hash(var_f406f7e3), 1, int(var_ae857992), 2, var_d362196a, 3, var_90f98f51, 4, xpearned, 5, var_d0a27bc3, 6, var_524ab934, 7, var_68441d6f);
            }
        }
    }
    uploadstats(self);
    self function_4835d26a();
    profilestop();
}

// Namespace namespace_d2efac9a/namespace_d2efac9a
// Params 3, eflags: 0x2 linked
// Checksum 0x7e1ef8ce, Offset: 0x4848
// Size: 0x144
function function_47498d07(gameover = 0, var_87786b84 = 0, var_5262eeaf = 0) {
    players = getplayers();
    foreach (player in players) {
        if (var_87786b84) {
            player function_21dc53ff();
        }
        player commitstats(gameover);
        player function_ca0ffc09(var_87786b84, gameover, var_5262eeaf);
    }
    if (gameover) {
        function_d519e318();
    }
}

// Namespace namespace_d2efac9a/namespace_d2efac9a
// Params 0, eflags: 0x2 linked
// Checksum 0x62e1eb85, Offset: 0x4998
// Size: 0x15a
function function_d717ee7b() {
    self.doa.var_e46a9e57 = {#round_number:0, #var_89e0691d:self rank::getrankxp(), #var_967bd40d:0, #var_832beab2:0, #var_dded67ba:0, #var_8f4c7e23:0, #total_points:0, #var_4b3c11c6:gettime(), #var_4b01218:0, #lives:0, #keys:0, #var_e519217b:0, #var_3ff9fc8:#"", #var_9a5b8400:#"", #var_827195e5:0, #var_920f0053:0, #var_52df118f:0};
}

// Namespace namespace_d2efac9a/namespace_d2efac9a
// Params 3, eflags: 0x2 linked
// Checksum 0xf7d3876b, Offset: 0x4b00
// Size: 0x2cc
function function_ca0ffc09(var_87786b84, gameover, var_5262eeaf) {
    if (isdefined(self.doa.var_e46a9e57)) {
        if (var_87786b84 || gameover || var_5262eeaf) {
            self.doa.var_e46a9e57.round_number = level.doa.roundnumber;
            self.doa.var_e46a9e57.var_967bd40d = self rank::getrankxp() - self.doa.var_e46a9e57.var_89e0691d;
            self.doa.var_e46a9e57.total_points = self.doa.score.points;
            self.doa.var_e46a9e57.var_4b01218 = gettime();
            self.doa.var_e46a9e57.lives = self.doa.score.lives;
            self.doa.var_e46a9e57.keys = self.doa.score.keys;
            self.doa.var_e46a9e57.var_3ff9fc8 = level.doa.var_39e3fa99.m_namehash;
            self.doa.var_e46a9e57.var_827195e5 = gameover;
            self.doa.var_e46a9e57.var_920f0053 = var_5262eeaf || isdefined(level.doa.var_a77e6349);
            self.doa.var_e46a9e57.var_52df118f = is_true(level.doa.advancedstart);
            self.doa.var_e46a9e57.var_242fdb49 = getdvarfloat(#"hash_351b291e47172d46", 1);
            self.doa.var_e46a9e57.var_6db34ef = self.doa.score.var_194c59ae;
            function_92d1707f(#"hash_3883bd1d3adcf11c", self.doa.var_e46a9e57);
            function_d717ee7b();
        }
    }
}

// Namespace namespace_d2efac9a/namespace_d2efac9a
// Params 0, eflags: 0x2 linked
// Checksum 0xe2acd3ca, Offset: 0x4dd8
// Size: 0x24
function function_ca76d4a() {
    function_f4f6d8a1();
    stats::function_ca76d4a();
}

// Namespace namespace_d2efac9a/namespace_d2efac9a
// Params 0, eflags: 0x2 linked
// Checksum 0x896c3aa0, Offset: 0x4e08
// Size: 0x8a
function upload_leaderboards() {
    players = getplayers();
    foreach (player in players) {
    }
}

