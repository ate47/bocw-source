// Atian COD Tools GSC CW decompiler test
#using script_32399001bdb550da;
#using scripts\abilities\ability_util.gsc;
#using scripts\core_common\player\player_shared.gsc;
#using scripts\core_common\player\player_loadout.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\cp_common\util.gsc;
#using scripts\core_common\perks.gsc;
#using scripts\core_common\load_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using script_25c09ccacf057919;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace profile_traits;

// Namespace profile_traits/profile_traits
// Params 0, eflags: 0x5
// Checksum 0x5c1d9d88, Offset: 0x128
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"profile_traits", &preinit, undefined, undefined, undefined);
}

// Namespace profile_traits/profile_traits
// Params 0, eflags: 0x6 linked
// Checksum 0x6379e107, Offset: 0x170
// Size: 0x3b4
function private preinit() {
    /#
        function_bba23c40("<unknown string>", 0.75);
        function_bba23c40("<unknown string>", 0.75);
    #/
    level.var_e85d5a3f = spawnstruct();
    var_1f7a9822 = getscriptbundle(#"profile_traits");
    level.var_e85d5a3f.var_e4f193a3 = [];
    for (i = 0; i < var_1f7a9822.traits.size; i++) {
        if (!is_true(var_1f7a9822.traits[i].disabled)) {
            var_1f7a9822.traits[i].bitflag = 1 << i;
            level.var_e85d5a3f.var_e4f193a3[level.var_e85d5a3f.var_e4f193a3.size] = var_1f7a9822.traits[i];
            continue;
        }
        if (var_1f7a9822.traits[i].ref_name == "classified") {
            level.var_e85d5a3f.var_8651d525 = var_1f7a9822.traits[i];
        }
    }
    /#
        function_5ac4dc99("<unknown string>", 0);
        function_5ac4dc99("<unknown string>", -1);
        function_5ac4dc99("<unknown string>", -1);
        function_5ac4dc99("<unknown string>", 0);
        function_cd140ee9("<unknown string>", &function_df62d47f);
        function_cd140ee9("<unknown string>", &function_df62d47f);
        function_cd140ee9("<unknown string>", &function_df62d47f);
        function_cd140ee9("<unknown string>", &function_df62d47f);
        for (i = 0; i < level.var_e85d5a3f.var_e4f193a3.size; i++) {
            var_fb7d23d9 = level.var_e85d5a3f.var_e4f193a3[i];
            adddebugcommand("<unknown string>" + var_fb7d23d9.var_7c0b3589 + "<unknown string>" + i + "<unknown string>" + i + "<unknown string>");
            adddebugcommand("<unknown string>" + var_fb7d23d9.var_7c0b3589 + "<unknown string>" + i + "<unknown string>" + i + "<unknown string>");
        }
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
    #/
}

/#

    // Namespace profile_traits/profile_traits
    // Params 1, eflags: 0x0
    // Checksum 0x64e26bea, Offset: 0x530
    // Size: 0x2c
    function function_df62d47f(params) {
        level thread function_b8f86396(params);
    }

    // Namespace profile_traits/profile_traits
    // Params 1, eflags: 0x4
    // Checksum 0xbd126dba, Offset: 0x568
    // Size: 0x2a8
    function private function_b8f86396(params) {
        level endon(#"game_ended");
        waitframe(1);
        player = getplayers()[0];
        if (params.name == "<unknown string>") {
            var_e3ffeeb4 = params.value;
            if (var_e3ffeeb4 > -1) {
                assert(var_e3ffeeb4 < level.var_e85d5a3f.var_e4f193a3.size);
                var_fb7d23d9 = level.var_e85d5a3f.var_e4f193a3[var_e3ffeeb4];
                player function_18198dfb(var_fb7d23d9.bitflag);
                setdvar(#"hash_1d3ff4dcafbd084e", -1);
            }
            return;
        }
        if (params.name == "<unknown string>") {
            var_eccea24e = params.value;
            if (var_eccea24e > -1) {
                assert(var_eccea24e < level.var_e85d5a3f.var_e4f193a3.size);
                var_fb7d23d9 = level.var_e85d5a3f.var_e4f193a3[var_eccea24e];
                player function_1c1fa213(var_fb7d23d9.bitflag);
                setdvar(#"hash_35ef1fad3aba3507", -1);
            }
            return;
        }
        if (params.name == "<unknown string>") {
            var_6eee7673 = params.value;
            if (var_6eee7673) {
                player function_56266435();
                setdvar(#"hash_28a6f53c5000afe4", 0);
            }
            return;
        }
        if (params.name == "<unknown string>") {
            if (params.value) {
                player thread function_30a971a4();
                return;
            }
            player notify(#"hash_639ee73311ef0e56");
        }
    }

    // Namespace profile_traits/profile_traits
    // Params 0, eflags: 0x4
    // Checksum 0xa5380261, Offset: 0x818
    // Size: 0x3b0
    function private function_30a971a4() {
        player = self;
        player endoncallback(&function_6f60cb1e, #"hash_639ee73311ef0e56");
        player.var_adeb44c2 = [];
        for (i = 0; i < level.var_e85d5a3f.var_e4f193a3.size; i++) {
            trait = level.var_e85d5a3f.var_e4f193a3[i];
            hudelem = newdebughudelem(player);
            hudelem.alignx = "<unknown string>";
            hudelem.aligny = "<unknown string>";
            hudelem.x = 400;
            hudelem.y = 220 + i * 14;
            hudelem.foreground = 1;
            hudelem.fontscale = 1;
            hudelem settext(trait.ref_name + "<unknown string>");
            hudelem.var_16021753 = 0;
            hudelem.var_300d73bc = 0;
            hudelem.color = (0.75, 0.75, 0.75);
            player.var_adeb44c2[i] = hudelem;
        }
        while (true) {
            wait(0.5);
            for (i = 0; i < level.var_e85d5a3f.var_e4f193a3.size; i++) {
                trait = level.var_e85d5a3f.var_e4f193a3[i];
                var_16021753 = function_a996bd5e(trait.bitflag);
                var_300d73bc = -1;
                if (is_true(trait.use_perk)) {
                    if (player hasperk(trait.perk_name)) {
                        var_300d73bc = 1;
                    } else {
                        var_300d73bc = 0;
                    }
                }
                hudelem = player.var_adeb44c2[i];
                if (var_16021753 != hudelem.var_16021753 || var_300d73bc != hudelem.var_300d73bc) {
                    hudelem.var_16021753 = var_16021753;
                    hudelem.var_300d73bc = var_300d73bc;
                    var_63d9d5cb = trait.ref_name + "<unknown string>";
                    if (var_16021753) {
                        var_63d9d5cb += "<unknown string>";
                        hudelem.color = (0, 1, 0);
                    } else {
                        var_63d9d5cb += "<unknown string>";
                        hudelem.color = (0.75, 0.75, 0.75);
                    }
                    if (var_300d73bc == -1) {
                        var_63d9d5cb += "<unknown string>";
                    } else if (var_300d73bc) {
                        var_63d9d5cb += "<unknown string>";
                        if (!var_16021753) {
                            hudelem.color = (1, 0, 0);
                        }
                    } else {
                        var_63d9d5cb += "<unknown string>";
                        if (var_16021753) {
                            hudelem.color = (1, 0, 0);
                        }
                    }
                    hudelem settext(var_63d9d5cb);
                }
            }
        }
    }

    // Namespace profile_traits/profile_traits
    // Params 0, eflags: 0x4
    // Checksum 0x7a892861, Offset: 0xbd0
    // Size: 0xb2
    function private function_6f60cb1e() {
        player = self;
        if (isdefined(player.var_adeb44c2)) {
            foreach (elem in player.var_adeb44c2) {
                elem destroy();
            }
            player.var_adeb44c2 = undefined;
        }
    }

#/

// Namespace profile_traits/profile_traits
// Params 0, eflags: 0x2 linked
// Checksum 0x29d17bc8, Offset: 0xc90
// Size: 0x16
function function_979631fd() {
    return level.var_e85d5a3f.var_e4f193a3;
}

// Namespace profile_traits/profile_traits
// Params 0, eflags: 0x2 linked
// Checksum 0x2d3fe6a5, Offset: 0xcb0
// Size: 0x16
function function_3937b542() {
    return level.var_e85d5a3f.var_8651d525;
}

// Namespace profile_traits/profile_traits
// Params 1, eflags: 0x2 linked
// Checksum 0x655a07d1, Offset: 0xcd0
// Size: 0xe4
function function_d9b59414(var_f2c93983) {
    if (var_f2c93983 == "classified") {
        return 0;
    }
    foreach (trait in level.var_e85d5a3f.var_e4f193a3) {
        if (trait.ref_name == var_f2c93983) {
            return trait.bitflag;
        }
    }
    assertmsg("<unknown string>" + var_f2c93983 + "<unknown string>");
}

// Namespace profile_traits/profile_traits
// Params 0, eflags: 0x2 linked
// Checksum 0x495ef678, Offset: 0xdc0
// Size: 0x2c
function function_56266435() {
    player = self;
    player function_1c1fa213(~0);
}

// Namespace profile_traits/profile_traits
// Params 1, eflags: 0x0
// Checksum 0xa898f2de, Offset: 0xdf8
// Size: 0xa2
function function_a996bd5e(var_f03e5d1b) {
    assert(isplayer(self));
    player = self;
    var_b3903404 = player savegame::function_2ee66e93("savegame_personal_trait_flags", undefined);
    if (!isdefined(var_b3903404)) {
        var_b3903404 = 0;
        player savegame::set_player_data("savegame_personal_trait_flags", var_b3903404);
    }
    return var_b3903404 & var_f03e5d1b;
}

// Namespace profile_traits/profile_traits
// Params 1, eflags: 0x2 linked
// Checksum 0x66fcf477, Offset: 0xea8
// Size: 0xbc
function function_18198dfb(var_f03e5d1b) {
    assert(isplayer(self));
    player = self;
    var_b3903404 = player savegame::function_2ee66e93("savegame_personal_trait_flags", undefined);
    if (!isdefined(var_b3903404)) {
        var_b3903404 = 0;
    }
    var_b3903404 |= var_f03e5d1b;
    player savegame::set_player_data("savegame_personal_trait_flags", var_b3903404);
    player function_d53bb873();
}

// Namespace profile_traits/profile_traits
// Params 1, eflags: 0x2 linked
// Checksum 0xb617d7c4, Offset: 0xf70
// Size: 0x21c
function function_1c1fa213(var_f03e5d1b) {
    assert(isplayer(self));
    player = self;
    var_b3903404 = player savegame::function_2ee66e93("savegame_personal_trait_flags", undefined);
    if (!isdefined(var_b3903404)) {
        var_b3903404 = 0;
    }
    foreach (trait in level.var_e85d5a3f.var_e4f193a3) {
        if (var_f03e5d1b & var_b3903404 & trait.bitflag) {
            if (is_true(trait.use_perk) && player hasperk(trait.perk_name)) {
                player perks::perk_unsetperk(trait.perk_name);
            } else if (trait.ref_name == "jugernog") {
                player player::function_b933de24("jugernog", 0);
            }
            println("<unknown string>" + trait.ref_name + "<unknown string>");
        }
    }
    if (var_b3903404 & var_f03e5d1b) {
        var_b3903404 &= ~var_f03e5d1b;
    }
    player savegame::set_player_data("savegame_personal_trait_flags", var_b3903404);
    player function_d53bb873();
}

// Namespace profile_traits/profile_traits
// Params 0, eflags: 0x2 linked
// Checksum 0x7c4b5843, Offset: 0x1198
// Size: 0x1e8
function function_d53bb873() {
    assert(isplayer(self));
    player = self;
    var_b3903404 = player savegame::function_2ee66e93("savegame_personal_trait_flags", undefined);
    if (!isdefined(var_b3903404)) {
        return 0;
    }
    foreach (trait in level.var_e85d5a3f.var_e4f193a3) {
        if (var_b3903404 & trait.bitflag) {
            if (is_true(trait.use_perk) && !player hasperk(trait.perk_name)) {
                player perks::perk_setperk(trait.perk_name);
            } else if (trait.ref_name == "jugernog") {
                player player::function_2a67df65("jugernog", 25, undefined, 1);
                player.health = 125;
                player.maxhealth = 125;
            }
            println("<unknown string>" + trait.ref_name + "<unknown string>");
        }
    }
}

