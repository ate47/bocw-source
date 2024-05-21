// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\struct.gsc;
#using scripts\core_common\ai\systems\weaponlist.gsc;
#using script_62d87b28984d3246;
#using script_32399001bdb550da;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\flag_shared.gsc;

#namespace gamedifficulty;

// Namespace gamedifficulty/gamedifficulty
// Params 0, eflags: 0x1
// Checksum 0xc41ebbdc, Offset: 0x238
// Size: 0x2c
function autoexec init() {
    level.gameskill = 1;
    level.var_3426461d = &function_8ffb61a;
}

// Namespace gamedifficulty/gamedifficulty
// Params 2, eflags: 0x2 linked
// Checksum 0xc9584a2c, Offset: 0x270
// Size: 0xec
function setskill(reset, var_648a2ef0) {
    if (!isdefined(level.script)) {
        level.script = util::get_map_name();
    }
    if (!is_true(reset)) {
        if (is_true(level.var_a26aa64a)) {
            return;
        }
        /#
            thread function_f4a93c9c();
        #/
        level.var_a26aa64a = 1;
    }
    level thread function_57ba1474(var_648a2ef0);
    level.var_b6db9d5a = 1;
    set_difficulty_from_locked_settings();
    level function_4ba867b();
}

// Namespace gamedifficulty/gamedifficulty
// Params 1, eflags: 0x2 linked
// Checksum 0x137431ec, Offset: 0x368
// Size: 0x9a
function function_c0aae431(var_7317b1dc) {
    level.playerhealth_regularregendelay = function_a34942a0();
    if (level.var_b6db9d5a) {
        thread function_f80a8b13(var_7317b1dc);
    }
    level.longregentime = function_faea9c9e();
    level.animation.misstimeconstant = function_5ae527c5();
    level.animation.misstimedistancefactor = function_f2ec5636();
}

// Namespace gamedifficulty/gamedifficulty
// Params 1, eflags: 0x2 linked
// Checksum 0xd03713dc, Offset: 0x410
// Size: 0x92
function function_f80a8b13(*var_7317b1dc) {
    level flag::wait_till("all_players_connected");
    players = level.players;
    for (i = 0; i < players.size; i++) {
        players[i].threatbias = int(function_1cfd1920());
    }
}

// Namespace gamedifficulty/gamedifficulty
// Params 0, eflags: 0x2 linked
// Checksum 0x89dd1ca1, Offset: 0x4b0
// Size: 0x24
function set_difficulty_from_locked_settings() {
    function_c0aae431(&function_66c52cbf);
}

// Namespace gamedifficulty/gamedifficulty
// Params 2, eflags: 0x2 linked
// Checksum 0x21a39797, Offset: 0x4e0
// Size: 0x2e
function function_66c52cbf(msg, *ignored) {
    return level.difficultysettings[ignored][level.currentdifficulty];
}

/#

    // Namespace gamedifficulty/gamedifficulty
    // Params 0, eflags: 0x0
    // Checksum 0x1eff0cc, Offset: 0x518
    // Size: 0xd0
    function function_f4a93c9c() {
        waittillframeend();
        while (true) {
            while (true) {
                if (getdvarint(#"scr_health_debug", 0)) {
                    break;
                }
                wait(0.5);
            }
            thread function_fe49c4b4();
            while (true) {
                if (!getdvarint(#"scr_health_debug", 0)) {
                    break;
                }
                wait(0.5);
            }
            level notify(#"hash_4fff5870dd60a939");
            function_d1f1cf52();
        }
    }

    // Namespace gamedifficulty/gamedifficulty
    // Params 0, eflags: 0x0
    // Checksum 0x2bc11a27, Offset: 0x5f0
    // Size: 0x616
    function function_fe49c4b4() {
        level notify(#"hash_7eabe7ecd3c67fd");
        level endon(#"hash_7eabe7ecd3c67fd");
        y = 40;
        level.var_60023d69 = [];
        level.var_1c9484[0] = "<unknown string>";
        level.var_1c9484[1] = "<unknown string>";
        level.var_1c9484[2] = "<unknown string>";
        if (!isdefined(level.var_5a1abaae)) {
            level.var_5a1abaae = 0;
        }
        if (!isdefined(level.var_30235742)) {
            level.var_30235742 = 0;
        }
        for (i = 0; i < level.var_1c9484.size; i++) {
            key = level.var_1c9484[i];
            var_cabf91e7 = newdebughudelem();
            var_cabf91e7.x = 150;
            var_cabf91e7.y = y;
            var_cabf91e7.alignx = "<unknown string>";
            var_cabf91e7.aligny = "<unknown string>";
            var_cabf91e7.horzalign = "<unknown string>";
            var_cabf91e7.vertalign = "<unknown string>";
            var_cabf91e7 settext(key);
            bgbar = newdebughudelem();
            bgbar.x = 150 + 79;
            bgbar.y = y + 1;
            bgbar.z = 1;
            bgbar.alignx = "<unknown string>";
            bgbar.aligny = "<unknown string>";
            bgbar.horzalign = "<unknown string>";
            bgbar.vertalign = "<unknown string>";
            bgbar.maxwidth = 3;
            bgbar setshader(#"white", bgbar.maxwidth, 10);
            bgbar.color = (0.5, 0.5, 0.5);
            bar = newdebughudelem();
            bar.x = 150 + 80;
            bar.y = y + 2;
            bar.alignx = "<unknown string>";
            bar.aligny = "<unknown string>";
            bar.horzalign = "<unknown string>";
            bar.vertalign = "<unknown string>";
            bar setshader(#"black", 1, 8);
            bar.sort = 1;
            var_cabf91e7.bar = bar;
            var_cabf91e7.bgbar = bgbar;
            var_cabf91e7.key = key;
            y += 10;
            level.var_60023d69[key] = var_cabf91e7;
        }
        level flag::wait_till("<unknown string>");
        while (true) {
            waitframe(1);
            players = level.players;
            for (i = 0; i < level.var_1c9484.size && players.size > 0; i++) {
                key = level.var_1c9484[i];
                player = players[0];
                width = 0;
                if (i == 0) {
                    width = player.health / player.maxhealth * 300;
                    level.var_60023d69[key] settext(level.var_1c9484[0] + "<unknown string>" + player.health);
                } else if (i == 1) {
                    width = (level.var_5a1abaae - gettime()) / 1000 * 40;
                } else if (i == 2) {
                    width = (level.var_30235742 - gettime()) / 1000 * 40;
                }
                width = int(max(width, 1));
                width = int(min(width, 300));
                bar = level.var_60023d69[key].bar;
                bar setshader(#"black", width, 8);
                bgbar = level.var_60023d69[key].bgbar;
                if (width + 2 > bgbar.maxwidth) {
                    bgbar.maxwidth = width + 2;
                    bgbar setshader(#"white", bgbar.maxwidth, 10);
                    bgbar.color = (0.5, 0.5, 0.5);
                }
            }
        }
    }

    // Namespace gamedifficulty/gamedifficulty
    // Params 0, eflags: 0x0
    // Checksum 0x150e5655, Offset: 0xc10
    // Size: 0xec
    function function_d1f1cf52() {
        level notify(#"hash_7eabe7ecd3c67fd");
        if (!isdefined(level.var_60023d69)) {
            return;
        }
        for (i = 0; i < level.var_1c9484.size; i++) {
            level.var_60023d69[level.var_1c9484[i]].bgbar destroy();
            level.var_60023d69[level.var_1c9484[i]].bar destroy();
            level.var_60023d69[level.var_1c9484[i]] destroy();
        }
    }

#/

// Namespace gamedifficulty/gamedifficulty
// Params 0, eflags: 0x2 linked
// Checksum 0xd054ade2, Offset: 0xd08
// Size: 0x154
function function_c6f98249() {
    self notify("54802cc95ae5ac77");
    self endon("54802cc95ae5ac77");
    self endon(#"death");
    for (;;) {
        waitresult = self waittill(#"damage");
        if (isdefined(waitresult.attacker) && isplayer(waitresult.attacker) && !is_true(isbot(waitresult.attacker))) {
            continue;
        }
        self.damagepoint = waitresult.position;
        self.damageattacker = waitresult.attacker;
        if (isdefined(waitresult.mod) && waitresult.mod == "MOD_BURNED") {
            self setburn(0.5);
            self playsound(#"hash_7b9252f71d7c6d94");
        }
        level notify(#"hash_3c9a2dc5f0c7c3cd");
    }
}

// Namespace gamedifficulty/gamedifficulty
// Params 0, eflags: 0x2 linked
// Checksum 0xe5976924, Offset: 0xe68
// Size: 0x58
function function_2339ca92() {
    var_9b6ba81f = function_ad49ef5b();
    if (var_9b6ba81f > 0) {
        self thread function_22107f87(var_9b6ba81f);
    }
    /#
        level.var_5a1abaae = gettime() + var_9b6ba81f * 1000;
    #/
}

// Namespace gamedifficulty/gamedifficulty
// Params 1, eflags: 0x6 linked
// Checksum 0x42620dda, Offset: 0xec8
// Size: 0x294
function private function_22107f87(timer) {
    self endon(#"death", #"disconnect");
    if (self flag::get("player_is_invulnerable")) {
        return;
    }
    self flag::set("player_is_invulnerable");
    level notify(#"hash_245285a0c17aa5cb");
    var_ae0703af = self getnoncheckpointdata("DeathsDoorWarnings");
    var_5273c86b = self getnoncheckpointdata("DeathsDoorWarningTime");
    if ((isdefined(var_ae0703af) ? var_ae0703af : 0) > 0 && getrealtime() >= (isdefined(var_5273c86b) ? var_5273c86b : 0) && !self flag::get("no_deaths_door_warning") && !isgodmode(self)) {
        self setnoncheckpointdata("DeathsDoorWarnings", var_ae0703af - 1);
        self setnoncheckpointdata("DeathsDoorWarningTime", getrealtime() + 60000);
        self thread warning_message::create(#"hash_1b8a733f0d461a2c", [#"hash_2b62b2990144ebf6", #"healing", "no_deaths_door_warning"], 1, ["death", "in_igc"]);
    }
    self thread function_ab69b983();
    if (timer > 0) {
        function_fef4c10f(timer, 1);
    }
    self flag::clear("player_is_invulnerable");
}

// Namespace gamedifficulty/gamedifficulty
// Params 2, eflags: 0x2 linked
// Checksum 0x424cd420, Offset: 0x1168
// Size: 0xf4
function function_fef4c10f(timer, var_19c9196 = 0) {
    if (var_19c9196) {
        self notify(#"hash_61ab322c075ab540");
    } else if (self flag::get("player_zero_attacker_accuracy")) {
        return;
    }
    self endon(#"hash_61ab322c075ab540", #"death");
    if (!isdefined(self.var_c040f22f)) {
        self.var_c040f22f = self.attackeraccuracy;
    } else {
        assert(self.attackeraccuracy == 0, "<unknown string>");
    }
    self function_f5c273fc();
    wait(timer);
    self function_b9d6a17c();
}

// Namespace gamedifficulty/gamedifficulty
// Params 0, eflags: 0x6 linked
// Checksum 0x4805159a, Offset: 0x1268
// Size: 0x2e
function private function_f5c273fc() {
    self flag::set("player_zero_attacker_accuracy");
    self.attackeraccuracy = 0;
}

// Namespace gamedifficulty/gamedifficulty
// Params 0, eflags: 0x6 linked
// Checksum 0x518b507e, Offset: 0x12a0
// Size: 0x8a
function private function_b9d6a17c() {
    self flag::clear("player_zero_attacker_accuracy");
    assert(isdefined(self.var_c040f22f), "<unknown string>");
    assert(self.var_c040f22f != 0, "<unknown string>");
    self.attackeraccuracy = self.var_c040f22f;
    self.var_c040f22f = undefined;
}

// Namespace gamedifficulty/gamedifficulty
// Params 0, eflags: 0x6 linked
// Checksum 0x1fca54a6, Offset: 0x1338
// Size: 0xbe
function private function_ab69b983() {
    self endon(#"death");
    self.var_2869a26a = 0;
    assert(self flag::get("<unknown string>"));
    self flag::wait_till_clear("player_is_invulnerable");
    cooldowntime = function_81e40993();
    /#
        level.var_30235742 = gettime() + cooldowntime * 1000;
    #/
    wait(cooldowntime);
    self.var_2869a26a = 1;
}

// Namespace gamedifficulty/gamedifficulty
// Params 1, eflags: 0x2 linked
// Checksum 0xac83d590, Offset: 0x1400
// Size: 0x658
function function_57ba1474(var_648a2ef0) {
    level notify(#"hash_75a2e0ea99b6eba1");
    level endon(#"hash_75a2e0ea99b6eba1");
    transient = savegame::function_6440b06b(#"transient");
    if (!isdefined(transient.var_9ac9bc79)) {
        transient.var_9ac9bc79 = 9999;
    }
    if (!isdefined(transient.var_a0bc0e2c)) {
        transient.var_a0bc0e2c = 0;
    }
    var_d92990c1 = -1;
    while (!isdefined(var_648a2ef0)) {
        level.gameskill = getlocalprofileint("g_gameskill");
        /#
            var_89694459 = getdvarstring(#"overridedifficulty", "<unknown string>");
            switch (tolower(var_89694459)) {
            case #"recruit":
                level.gameskill = 0;
                break;
            case #"regular":
                level.gameskill = 1;
                break;
            case #"hardened":
                level.gameskill = 2;
                break;
            case #"veteran":
                level.gameskill = 3;
                break;
            case #"realistic":
                level.gameskill = 4;
                break;
            }
        #/
        if (level.gameskill != var_d92990c1) {
            if (!isdefined(level.gameskill)) {
                level.gameskill = 1;
            }
            switch (level.gameskill) {
            case 0:
                setdvar(#"currentdifficulty", "recruit");
                level.currentdifficulty = "recruit";
                break;
            case 1:
                setdvar(#"currentdifficulty", "regular");
                level.currentdifficulty = "regular";
                break;
            case 2:
                setdvar(#"currentdifficulty", "hardened");
                level.currentdifficulty = "hardened";
                break;
            case 3:
                setdvar(#"currentdifficulty", "veteran");
                level.currentdifficulty = "veteran";
                break;
            case 4:
                setdvar(#"currentdifficulty", "realistic");
                level.currentdifficulty = "realistic";
                break;
            }
            println("<unknown string>" + level.gameskill);
            setdvar(#"saved_gameskill", level.gameskill);
            setlocalprofilevar("g_gameskill", level.gameskill);
            if (level.gameskill < transient.var_9ac9bc79) {
                transient.var_9ac9bc79 = level.gameskill;
            }
            if (level.gameskill > transient.var_a0bc0e2c) {
                transient.var_a0bc0e2c = level.gameskill;
            }
            level flag::wait_till("all_players_connected");
            foreach (player in getplayers()) {
                player clientfield::set_player_uimodel("hudItems.serverDifficulty", level.gameskill);
                player stats::set_stat(#"currentdifficulty", level.gameskill);
                uploadstats(player);
                var_ae0703af = player getnoncheckpointdata("DeathsDoorWarnings");
                if (!isdefined(var_ae0703af) || var_d92990c1 == -1) {
                    player setnoncheckpointdata("DeathsDoorWarnings", 4 - level.gameskill);
                    continue;
                }
                player setnoncheckpointdata("DeathsDoorWarnings", int(max(0, 4 - level.gameskill - 4 - var_d92990c1 - var_ae0703af)));
            }
            var_d92990c1 = level.gameskill;
        }
        wait(1);
    }
}

// Namespace gamedifficulty/gamedifficulty
// Params 0, eflags: 0x2 linked
// Checksum 0xb1281be0, Offset: 0x1a60
// Size: 0x110
function function_c7551020() {
    if (!isdefined(level.var_21347b32)) {
        level.var_21347b32 = [];
        level.var_21347b32[0] = getscriptbundle(#"gamedifficulty_recruit");
        level.var_21347b32[1] = getscriptbundle(#"gamedifficulty_regular");
        level.var_21347b32[2] = getscriptbundle(#"gamedifficulty_hardened");
        level.var_21347b32[3] = getscriptbundle(#"gamedifficulty_veteran");
        level.var_21347b32[4] = getscriptbundle(#"gamedifficulty_realistic");
    }
}

// Namespace gamedifficulty/gamedifficulty
// Params 0, eflags: 0x2 linked
// Checksum 0xa63e9d91, Offset: 0x1b78
// Size: 0x50
function function_1cfd1920() {
    function_c7551020();
    var_b0210d64 = level.var_21347b32[level.gameskill].threatbias;
    if (isdefined(var_b0210d64)) {
        return var_b0210d64;
    }
    return 0;
}

// Namespace gamedifficulty/gamedifficulty
// Params 1, eflags: 0x2 linked
// Checksum 0xcb4cff13, Offset: 0x1bd0
// Size: 0x5a
function function_8ffb61a(*event) {
    function_c7551020();
    var_2b9b388d = level.var_21347b32[level.gameskill].difficulty_xp_multiplier;
    if (isdefined(var_2b9b388d)) {
        return var_2b9b388d;
    }
    return 1;
}

// Namespace gamedifficulty/gamedifficulty
// Params 0, eflags: 0x0
// Checksum 0xb183318a, Offset: 0x1c38
// Size: 0x50
function function_4a1bd46e() {
    function_c7551020();
    var_b0210d64 = level.var_21347b32[level.gameskill].healthoverlaycutoff;
    if (isdefined(var_b0210d64)) {
        return var_b0210d64;
    }
    return 0;
}

// Namespace gamedifficulty/gamedifficulty
// Params 0, eflags: 0x0
// Checksum 0x8873c6ce, Offset: 0x1c90
// Size: 0x5e
function function_f6f41f76() {
    function_c7551020();
    var_b0210d64 = level.var_21347b32[level.gameskill].var_ff7fb6bb;
    if (isdefined(var_b0210d64)) {
        return var_b0210d64;
    }
    if (isdefined(var_b0210d64)) {
        return var_b0210d64;
    }
    return 0;
}

// Namespace gamedifficulty/gamedifficulty
// Params 0, eflags: 0x2 linked
// Checksum 0x9d399788, Offset: 0x1cf8
// Size: 0x50
function function_ad49ef5b() {
    function_c7551020();
    var_b0210d64 = level.var_21347b32[level.gameskill].player_deathinvulnerabletime;
    if (isdefined(var_b0210d64)) {
        return var_b0210d64;
    }
    return 0;
}

// Namespace gamedifficulty/gamedifficulty
// Params 0, eflags: 0x2 linked
// Checksum 0xab8c33d0, Offset: 0x1d50
// Size: 0x4c
function function_81e40993() {
    function_c7551020();
    var_b0210d64 = level.var_21347b32[level.gameskill].var_40865ff8;
    return isdefined(var_b0210d64) ? var_b0210d64 : 0;
}

// Namespace gamedifficulty/gamedifficulty
// Params 0, eflags: 0x0
// Checksum 0x6e360f6, Offset: 0x1da8
// Size: 0x50
function function_e4046aa6() {
    function_c7551020();
    var_b0210d64 = level.var_21347b32[level.gameskill].base_enemy_accuracy;
    if (isdefined(var_b0210d64)) {
        return var_b0210d64;
    }
    return 0;
}

// Namespace gamedifficulty/gamedifficulty
// Params 0, eflags: 0x2 linked
// Checksum 0x8d969af4, Offset: 0x1e00
// Size: 0x52
function function_eb59c79() {
    function_c7551020();
    var_b0210d64 = level.var_21347b32[level.gameskill].playerdifficultyhealth;
    if (isdefined(var_b0210d64)) {
        return var_b0210d64;
    }
    return 100;
}

// Namespace gamedifficulty/gamedifficulty
// Params 0, eflags: 0x2 linked
// Checksum 0x520109d9, Offset: 0x1e60
// Size: 0x50
function function_5ae527c5() {
    function_c7551020();
    var_b0210d64 = level.var_21347b32[level.gameskill].misstimeconstant;
    if (isdefined(var_b0210d64)) {
        return var_b0210d64;
    }
    return 0;
}

// Namespace gamedifficulty/gamedifficulty
// Params 0, eflags: 0x0
// Checksum 0x8afa7dae, Offset: 0x1eb8
// Size: 0x50
function function_22fc6679() {
    function_c7551020();
    var_b0210d64 = level.var_21347b32[level.gameskill].misstimeresetdelay;
    if (isdefined(var_b0210d64)) {
        return var_b0210d64;
    }
    return 0;
}

// Namespace gamedifficulty/gamedifficulty
// Params 0, eflags: 0x2 linked
// Checksum 0xb8c1fd15, Offset: 0x1f10
// Size: 0x50
function function_f2ec5636() {
    function_c7551020();
    var_b0210d64 = level.var_21347b32[level.gameskill].misstimedistancefactor;
    if (isdefined(var_b0210d64)) {
        return var_b0210d64;
    }
    return 0;
}

// Namespace gamedifficulty/gamedifficulty
// Params 0, eflags: 0x0
// Checksum 0x9e52f5c6, Offset: 0x1f68
// Size: 0x50
function function_f754b1bc() {
    function_c7551020();
    var_b0210d64 = level.var_21347b32[level.gameskill].dog_health;
    if (isdefined(var_b0210d64)) {
        return var_b0210d64;
    }
    return 0;
}

// Namespace gamedifficulty/gamedifficulty
// Params 0, eflags: 0x0
// Checksum 0xdcef65e0, Offset: 0x1fc0
// Size: 0x50
function function_ad6fb6da() {
    function_c7551020();
    var_b0210d64 = level.var_21347b32[level.gameskill].var_f84eb1d6;
    if (isdefined(var_b0210d64)) {
        return var_b0210d64;
    }
    return 0;
}

// Namespace gamedifficulty/gamedifficulty
// Params 0, eflags: 0x0
// Checksum 0x9775eaf8, Offset: 0x2018
// Size: 0x50
function function_8bf0a382() {
    function_c7551020();
    var_b0210d64 = level.var_21347b32[level.gameskill].var_bd3beebd;
    if (isdefined(var_b0210d64)) {
        return var_b0210d64;
    }
    return 0;
}

// Namespace gamedifficulty/gamedifficulty
// Params 0, eflags: 0x2 linked
// Checksum 0xcb82a727, Offset: 0x2070
// Size: 0x50
function function_faea9c9e() {
    function_c7551020();
    var_b0210d64 = level.var_21347b32[level.gameskill].longregentime;
    if (isdefined(var_b0210d64)) {
        return var_b0210d64;
    }
    return 0;
}

// Namespace gamedifficulty/gamedifficulty
// Params 0, eflags: 0x2 linked
// Checksum 0xc33c432c, Offset: 0x20c8
// Size: 0x50
function function_a34942a0() {
    function_c7551020();
    var_b0210d64 = level.var_21347b32[level.gameskill].playerhealth_regularregendelay;
    if (isdefined(var_b0210d64)) {
        return var_b0210d64;
    }
    return 0;
}

// Namespace gamedifficulty/gamedifficulty
// Params 0, eflags: 0x2 linked
// Checksum 0xa5fc9d77, Offset: 0x2120
// Size: 0x50
function function_f4052850() {
    function_c7551020();
    var_b0210d64 = level.var_21347b32[level.gameskill].worthydamageratio;
    if (isdefined(var_b0210d64)) {
        return var_b0210d64;
    }
    return 0;
}

// Namespace gamedifficulty/gamedifficulty
// Params 0, eflags: 0x2 linked
// Checksum 0x67cc3dde, Offset: 0x2178
// Size: 0x54
function function_b5b7d60e() {
    function_c7551020();
    var_b0210d64 = level.var_21347b32[level.gameskill].var_b768020b;
    if (isdefined(var_b0210d64)) {
        return var_b0210d64;
    }
    return 2;
}

// Namespace gamedifficulty/gamedifficulty
// Params 0, eflags: 0x2 linked
// Checksum 0xfd88c8ec, Offset: 0x21d8
// Size: 0x54
function function_5151f9d0() {
    function_c7551020();
    var_b0210d64 = level.var_21347b32[level.gameskill].var_5657206f;
    if (isdefined(var_b0210d64)) {
        return var_b0210d64;
    }
    return 4.5;
}

// Namespace gamedifficulty/gamedifficulty
// Params 1, eflags: 0x2 linked
// Checksum 0x2eab4a73, Offset: 0x2238
// Size: 0xc0
function function_52f56aea(var_d020b056) {
    function_c7551020();
    var_b0210d64 = level.var_21347b32[level.gameskill].var_bb4e24d2;
    if (isdefined(var_b0210d64)) {
        misstime = var_b0210d64;
    } else {
        misstime = 0.3;
    }
    scalar = 1;
    if (var_d020b056 === "fullauto") {
        scalar = 0.5;
    } else if (var_d020b056 === "singleshot") {
        scalar = 1.5;
    }
    return misstime * scalar;
}

// Namespace gamedifficulty/gamedifficulty
// Params 0, eflags: 0x0
// Checksum 0x55b02c02, Offset: 0x2300
// Size: 0x40
function function_40c2b689() {
    value = level.gameskill + level.players.size - 1;
    if (value < 0) {
        value = 0;
    }
    return value;
}

// Namespace gamedifficulty/gamedifficulty
// Params 0, eflags: 0x2 linked
// Checksum 0x8544593d, Offset: 0x2348
// Size: 0x42
function function_7dbe6a66() {
    player = self;
    if (function_ad49ef5b() == 0) {
        return 0;
    }
    return is_true(self.var_2869a26a);
}

// Namespace gamedifficulty/gamedifficulty
// Params 7, eflags: 0x2 linked
// Checksum 0x220e8ad9, Offset: 0x2398
// Size: 0xe8
function function_2aed7a44(*player, eattacker, *einflictor, idamage, *weapon, *shitloc, var_b646048d) {
    if ((var_b646048d == "MOD_MELEE" || var_b646048d == "MOD_MELEE_WEAPON_BUTT") && isentity(weapon) && !isplayer(weapon)) {
        if (isactor(weapon)) {
            var_c86b4d97 = int(function_eb59c79() * 0.8);
            return var_c86b4d97;
        }
    }
    return shitloc;
}

// Namespace gamedifficulty/gamedifficulty
// Params 7, eflags: 0x2 linked
// Checksum 0xb978caa9, Offset: 0x2488
// Size: 0xe2
function function_23dcd1f6(*player, *eattacker, *einflictor, idamage, *weapon, *shitloc, *var_b646048d) {
    var_68bc2059 = float(function_eb59c79());
    assert(var_68bc2059 > 0);
    var_86342214 = float(100) / var_68bc2059;
    return max(var_b646048d * var_86342214, min(1, var_b646048d));
}

// Namespace gamedifficulty/gamedifficulty
// Params 0, eflags: 0x2 linked
// Checksum 0x10f99eb9, Offset: 0x2578
// Size: 0x284
function function_4ba867b() {
    function_c7551020();
    var_938ce325 = level.var_21347b32[level.gameskill].player_laststandbleedouttime;
    var_4cfdf1fc = level.var_21347b32[level.gameskill].var_949c9924;
    var_22e7a516 = level.var_21347b32[level.gameskill].player_laststandsuicidedelay;
    var_33682ca0 = level.var_21347b32[level.gameskill].var_58500288;
    var_fd9d63a8 = level.var_21347b32[level.gameskill].player_respawndelay;
    var_dd639ef7 = level.var_21347b32[level.gameskill].var_1bc10f3a;
    var_8c4f976a = level.var_21347b32[level.gameskill].var_c5c20d41;
    var_88dcf868 = level.var_21347b32[level.gameskill].var_4ca741c2;
    var_8f59489c = level.var_21347b32[level.gameskill].var_e3e8d3a1;
    var_880dfe56 = level.var_21347b32[level.gameskill].var_7b55ea2b;
    setdvar(#"player_laststandbleedouttime", var_938ce325);
    setdvar(#"hash_7036719f41a78d54", var_4cfdf1fc);
    setdvar(#"player_laststandsuicidedelay", var_22e7a516);
    setdvar(#"hash_6e3f1e26256fe0b5", var_33682ca0);
    setdvar(#"player_respawndelay", var_fd9d63a8);
    level.var_a4107aed = var_fd9d63a8;
    level.var_cf393bff = var_dd639ef7;
    level.var_a164210a = var_8c4f976a;
    level.var_a6a26da0 = var_88dcf868;
    level.var_1cac200a = var_8f59489c;
    level.var_22895486 = var_880dfe56;
}

