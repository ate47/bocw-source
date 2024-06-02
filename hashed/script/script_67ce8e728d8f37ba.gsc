// Atian COD Tools GSC CW decompiler test
#using script_67c9a990c0db216c;
#using scripts\core_common\player\player_shared.gsc;
#using script_305d57cf0618009d;
#using scripts\core_common\player\player_insertion.gsc;
#using scripts\core_common\values_shared.gsc;
#using script_44b0b8420eabacad;
#using scripts\core_common\spawning_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\music_shared.gsc;
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\map.gsc;

#namespace namespace_66d6aa44;

// Namespace namespace_66d6aa44/level_init
// Params 1, eflags: 0x20
// Checksum 0xb56ebcaf, Offset: 0x268
// Size: 0x144
function event_handler[level_init] function_9347830c(*eventstruct) {
    lui::add_luimenu("full_screen_movie", &full_screen_movie::register);
    clientfield::register("world", "hide_intro_models", 1, 1, "int");
    clientfield::register_clientuimodel("closeLoadingMovie", 1, 1, "int", 1);
    callback::add_callback(#"on_game_playing", &function_fcfa3b98);
    level.var_2efdea7 = function_f6fd2b4a();
    level.var_6e9fbf44 = [];
    function_e526b83(level.var_2efdea7);
    level.var_23e297bc = 1;
    if (function_14956b80()) {
        level thread function_fa3eed17(level.var_2efdea7);
    }
}

// Namespace namespace_66d6aa44/namespace_66d6aa44
// Params 1, eflags: 0x2 linked
// Checksum 0x23b19724, Offset: 0x3b8
// Size: 0x4c8
function function_fa3eed17(var_43a36c6f) {
    level callback::callback(#"hash_4428d68b23082312");
    level.var_b82a5c35 = 1;
    if (!isdefined(var_43a36c6f)) {
        return;
    }
    callback::on_joined_team(&function_d15f17fe);
    callback::on_joined_spectate(&function_b499bfc7);
    if (function_4898fc47()) {
        level.var_b38d8c70[var_43a36c6f.var_d74b6b9c] = scene::function_12479eba(var_43a36c6f.var_d74b6b9c);
        return;
    }
    level flag::wait_till_timeout(0.5, #"hash_22ca95de91eb92b");
    thread scene::add_scene_func(var_43a36c6f.var_30a9de1, &function_a10bb198, "init", "sidea");
    thread scene::add_scene_func(var_43a36c6f.var_704cf864, &function_a10bb198, "init", "sideb");
    thread scene::add_scene_func(var_43a36c6f.var_30a9de1, &function_aad02bd0, "play", "sidea", var_43a36c6f.var_70e6c400);
    thread scene::add_scene_func(var_43a36c6f.var_704cf864, &function_aad02bd0, "play", "sideb", var_43a36c6f.var_a3282882);
    thread scene::add_scene_func(var_43a36c6f.var_30a9de1, &function_46c380f6, "done", "sidea");
    thread scene::add_scene_func(var_43a36c6f.var_704cf864, &function_46c380f6, "done", "sideb");
    thread scene::add_scene_func(var_43a36c6f.var_30a9de1, &function_46c380f6, "stop", "sidea");
    thread scene::add_scene_func(var_43a36c6f.var_704cf864, &function_46c380f6, "stop", "sideb");
    if (isdefined(var_43a36c6f.var_30a9de1)) {
        level.var_b38d8c70[var_43a36c6f.var_30a9de1] = scene::function_12479eba(var_43a36c6f.var_30a9de1);
    }
    if (isdefined(var_43a36c6f.var_704cf864)) {
        level.var_b38d8c70[var_43a36c6f.var_704cf864] = scene::function_12479eba(var_43a36c6f.var_704cf864);
    }
    foreach (str_team in level.teams) {
        if (str_team == "allies" || str_team == "axis") {
            continue;
        }
        str_scene = function_cf2c009a(str_team);
        if (isdefined(str_scene)) {
            level.var_b38d8c70[str_scene] = scene::function_12479eba(str_scene);
            thread scene::add_scene_func(str_scene, &function_a10bb198, "init", str_team);
            thread scene::add_scene_func(str_scene, &function_aad02bd0, "play", str_team, var_43a36c6f.var_70e6c400);
            thread scene::add_scene_func(str_scene, &function_46c380f6, "done", str_team);
            thread scene::add_scene_func(str_scene, &function_46c380f6, "stop", str_team);
        }
    }
}

// Namespace namespace_66d6aa44/namespace_66d6aa44
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x888
// Size: 0x4
function function_3f3466c9() {
    
}

// Namespace namespace_66d6aa44/namespace_66d6aa44
// Params 0, eflags: 0x0
// Checksum 0xa752bf96, Offset: 0x898
// Size: 0x24
function function_148b501d() {
    if (!isdefined(level.var_2e8c3a11)) {
        return 0;
    }
    return gettime() - level.var_2e8c3a11;
}

// Namespace namespace_66d6aa44/namespace_66d6aa44
// Params 2, eflags: 0x2 linked
// Checksum 0x369ecab, Offset: 0x8c8
// Size: 0x36
function function_a10bb198(*a_ents, str_side) {
    str_team = util::get_team_mapping(str_side);
}

// Namespace namespace_66d6aa44/namespace_66d6aa44
// Params 3, eflags: 0x2 linked
// Checksum 0xd29814a1, Offset: 0x908
// Size: 0x6c
function function_aad02bd0(*a_ents, str_side, *var_9c1ed9ea) {
    str_team = util::get_team_mapping(var_9c1ed9ea);
    function_75125d25();
    function_f5692e0c("intro_cinematic", str_team);
}

// Namespace namespace_66d6aa44/namespace_66d6aa44
// Params 2, eflags: 0x2 linked
// Checksum 0x751b533d, Offset: 0x980
// Size: 0x6c
function function_46c380f6(*a_ents, str_side) {
    str_team = util::get_team_mapping(str_side);
    music::setmusicstatebyteam("none", str_team);
    function_266bf421(str_team);
}

// Namespace namespace_66d6aa44/namespace_66d6aa44
// Params 0, eflags: 0x2 linked
// Checksum 0xf3d8168a, Offset: 0x9f8
// Size: 0x156
function function_db62d086() {
    level clientfield::set("hide_intro_models", 0);
    script_models = getentarray("intro_scene_models", "targetname");
    var_4e756c46 = getentarray("intro_scene_models", "script_noteworthy");
    script_models = arraycombine(script_models, var_4e756c46);
    foreach (models in script_models) {
        models show();
        if (models.targetname === "destructible" && isdefined(models.var_93f58b6d)) {
            models.takedamage = models.var_93f58b6d;
            models.var_93f58b6d = undefined;
        }
    }
}

// Namespace namespace_66d6aa44/namespace_66d6aa44
// Params 0, eflags: 0x2 linked
// Checksum 0x9807f0ac, Offset: 0xb58
// Size: 0x158
function function_bb17da18() {
    level clientfield::set("hide_intro_models", 1);
    script_models = getentarray("intro_scene_models", "targetname");
    var_4e756c46 = getentarray("intro_scene_models", "script_noteworthy");
    script_models = arraycombine(script_models, var_4e756c46);
    foreach (models in script_models) {
        if (models.targetname === "destructible" && !isdefined(models.var_93f58b6d)) {
            models.var_93f58b6d = models.takedamage;
            models.takedamage = 0;
        }
        models hide();
    }
}

// Namespace namespace_66d6aa44/namespace_66d6aa44
// Params 1, eflags: 0x2 linked
// Checksum 0x54fd7f1f, Offset: 0xcb8
// Size: 0x2c
function function_75125d25(b_state = 1) {
    level.var_3a701785 = b_state;
}

// Namespace namespace_66d6aa44/namespace_66d6aa44
// Params 3, eflags: 0x2 linked
// Checksum 0xf20dc0f2, Offset: 0xcf0
// Size: 0xb4
function function_f5692e0c(var_9c1ed9ea, str_team, player) {
    if (isdefined(game.musicset)) {
        var_9c1ed9ea += game.musicset;
    } else {
        var_9c1ed9ea += "_default";
    }
    if (isdefined(str_team)) {
        music::setmusicstatebyteam(var_9c1ed9ea, str_team);
        return;
    }
    if (isdefined(player)) {
        music::setmusicstate(var_9c1ed9ea, player);
        return;
    }
    music::setmusicstate(var_9c1ed9ea);
}

// Namespace namespace_66d6aa44/namespace_66d6aa44
// Params 0, eflags: 0x2 linked
// Checksum 0x86fd1e32, Offset: 0xdb0
// Size: 0x150
function function_14956b80() {
    if (is_true(level.var_633063a5)) {
        return false;
    }
    if (!util::isfirstround()) {
        return false;
    }
    if (currentsessionmode() == 4 || (isdefined(getgametypesetting(#"prematchperiod")) ? getgametypesetting(#"prematchperiod") : 0) <= 0) {
        return false;
    }
    if (!is_true(getgametypesetting(#"playintrocinematics"))) {
        return false;
    }
    if (!getdvarint(#"hash_3c02566432466eb2", 0)) {
        return false;
    }
    if (!getdvarint(#"hash_2e7f94473567b19a", 0)) {
        return false;
    }
    if (!isdefined(level.var_2efdea7)) {
        return false;
    }
    return true;
}

// Namespace namespace_66d6aa44/namespace_66d6aa44
// Params 0, eflags: 0x0
// Checksum 0xa85b1749, Offset: 0xf08
// Size: 0x1a
function isplaying() {
    return is_true(level.var_ae517a5);
}

// Namespace namespace_66d6aa44/namespace_66d6aa44
// Params 0, eflags: 0x2 linked
// Checksum 0x62805907, Offset: 0xf30
// Size: 0x5a
function function_f6fd2b4a() {
    mapbundle = map::get_script_bundle();
    if (!isdefined(mapbundle) || !isdefined(mapbundle.var_f9631c9d)) {
        return undefined;
    }
    return getscriptbundle(mapbundle.var_f9631c9d);
}

// Namespace namespace_66d6aa44/namespace_66d6aa44
// Params 0, eflags: 0x2 linked
// Checksum 0xdabaecb7, Offset: 0xf98
// Size: 0x2e
function function_4898fc47() {
    if (isdefined(level.var_2efdea7)) {
        return function_fd63b4bf(level.var_2efdea7);
    }
    return 0;
}

// Namespace namespace_66d6aa44/namespace_66d6aa44
// Params 1, eflags: 0x6 linked
// Checksum 0xaa460e18, Offset: 0xfd0
// Size: 0x44
function private function_fd63b4bf(var_52b46a06) {
    if (level.var_d1455682.var_3316a534 !== 1) {
        return false;
    }
    if (!isdefined(var_52b46a06.var_d74b6b9c)) {
        return false;
    }
    return true;
}

// Namespace namespace_66d6aa44/namespace_66d6aa44
// Params 1, eflags: 0x2 linked
// Checksum 0xf77cb4d2, Offset: 0x1020
// Size: 0x70
function function_b69a4f47(var_2f252ea4) {
    clientfield::register("toplayer", var_2f252ea4.uniqueid, 1, 1, "int");
    if (is_true(var_2f252ea4.var_51388671)) {
        level.var_6e9fbf44[level.var_6e9fbf44.size] = var_2f252ea4;
    }
}

// Namespace namespace_66d6aa44/namespace_66d6aa44
// Params 1, eflags: 0x2 linked
// Checksum 0x527b12a9, Offset: 0x1098
// Size: 0xf0
function function_e526b83(var_43a36c6f) {
    if (!isdefined(var_43a36c6f.var_96c3f045)) {
        return;
    }
    var_20314119 = getscriptbundlelist(var_43a36c6f.var_96c3f045);
    if (!isdefined(var_20314119)) {
        return;
    }
    foreach (var_39796f0f in var_20314119) {
        var_c5470032 = getscriptbundle(var_39796f0f);
        function_b69a4f47(var_c5470032);
    }
}

// Namespace namespace_66d6aa44/namespace_66d6aa44
// Params 1, eflags: 0x2 linked
// Checksum 0x9e55771, Offset: 0x1190
// Size: 0xf4
function function_d15f17fe(*params) {
    if (isbot(self)) {
        return;
    }
    if (function_fd63b4bf(level.var_2efdea7) && isdefined(level.var_2efdea7.var_d74b6b9c)) {
        thread scene::init_streamer(level.var_2efdea7.var_d74b6b9c, array(self));
        return;
    }
    str_scene = function_cf2c009a(self.team);
    if (isdefined(str_scene)) {
        thread scene::init_streamer(str_scene, array(self), 0, 0);
    }
}

// Namespace namespace_66d6aa44/namespace_66d6aa44
// Params 1, eflags: 0x2 linked
// Checksum 0xd6ab7f4e, Offset: 0x1290
// Size: 0x15c
function function_b499bfc7(*params) {
    if (isbot(self)) {
        return;
    }
    if (function_fd63b4bf(level.var_2efdea7) && isdefined(level.var_2efdea7.var_d74b6b9c)) {
        thread scene::init_streamer(level.var_2efdea7.var_d74b6b9c, array(self));
        return;
    }
    foreach (team in level.teams) {
        str_scene = function_cf2c009a(team);
        if (isdefined(str_scene)) {
            thread scene::init_streamer(str_scene, array(self));
            break;
        }
    }
}

// Namespace namespace_66d6aa44/namespace_66d6aa44
// Params 0, eflags: 0x0
// Checksum 0x754e68, Offset: 0x13f8
// Size: 0x2c
function function_24d0c33d() {
    setdvar(#"hash_6ae50e8489bccba9", 10000);
}

// Namespace namespace_66d6aa44/namespace_66d6aa44
// Params 0, eflags: 0x2 linked
// Checksum 0xc7b2c5b9, Offset: 0x1430
// Size: 0x2c
function function_fcfa3b98() {
    if (!sessionmodeiszombiesgame()) {
        function_e3dbd71b();
    }
}

// Namespace namespace_66d6aa44/namespace_66d6aa44
// Params 1, eflags: 0x2 linked
// Checksum 0xafcccec9, Offset: 0x1468
// Size: 0x158
function function_266bf421(team) {
    foreach (player in getplayers(team)) {
        player val::reset_all(#"scene_system");
        player setvisibletoall();
        spawn = player spawning::function_f53e594f();
        if (isdefined(spawn) && !spawning::function_daa5852f()) {
            player dontinterpolate();
            player setorigin(spawn.origin);
            player setplayerangles(spawn.angles);
        }
    }
}

// Namespace namespace_66d6aa44/namespace_66d6aa44
// Params 0, eflags: 0x2 linked
// Checksum 0x82149bb4, Offset: 0x15c8
// Size: 0x2c
function function_27c20de5() {
    util::function_21678f2c(getplayers());
}

// Namespace namespace_66d6aa44/namespace_66d6aa44
// Params 0, eflags: 0x0
// Checksum 0xa25b12da, Offset: 0x1600
// Size: 0x134
function function_5a8e7587() {
    function_27c20de5();
    level.var_ae517a5 = 1;
    level.var_2e8c3a11 = gettime();
    level.var_c1c633b5 = gettime();
    foreach (team in level.teams) {
        var_e70596ed = function_cf2c009a(team);
        if (!isdefined(var_e70596ed)) {
            continue;
        }
        if (getplayers(team).size) {
            self thread scene::init(var_e70596ed);
        }
    }
    setslowmotion(1, 0.2, 0);
    flag::set("intro_mp_cin_end");
}

// Namespace namespace_66d6aa44/namespace_66d6aa44
// Params 3, eflags: 0x2 linked
// Checksum 0x310e407c, Offset: 0x1740
// Size: 0x8c
function function_2259ff3c(callback, waittime, countdowntime) {
    level endon(#"game_ended");
    waittime = max(0, waittime);
    [[ callback ]](countdowntime, #"hash_15a3c76e013b75c1");
    wait(waittime);
    level flag::set(#"hash_15a3c76e013b75c1");
}

// Namespace namespace_66d6aa44/namespace_66d6aa44
// Params 0, eflags: 0x0
// Checksum 0x15faf2c, Offset: 0x17d8
// Size: 0x34
function function_d24cf075() {
    self endon(#"disconnect");
    wait(0.2);
    self lui::function_a6eb5334(0);
}

// Namespace namespace_66d6aa44/namespace_66d6aa44
// Params 0, eflags: 0x2 linked
// Checksum 0x27123aac, Offset: 0x1818
// Size: 0x178
function function_b906539e() {
    if (!isdefined(level.teammenu)) {
        return;
    }
    level.var_fb99ff98 = 0;
    level.disableclassselection = 1;
    foreach (player in getplayers()) {
        if (!isdefined(player.var_77d6602a)) {
            continue;
        }
        switch (player.var_77d6602a) {
        case #"autoassign":
            player [[ level.autoassign ]](1, undefined);
            break;
        case #"spectator":
            player [[ level.spectator ]]();
            break;
        default:
            player [[ level.teammenu ]](player.var_77d6602a);
            break;
        }
        player.var_77d6602a = undefined;
    }
    level.disableclassselection = 0;
}

// Namespace namespace_66d6aa44/namespace_66d6aa44
// Params 0, eflags: 0x6 linked
// Checksum 0xf29fbfdb, Offset: 0x1998
// Size: 0xc0
function private function_59fe0fc1() {
    foreach (team in level.teams) {
        var_e70596ed = function_cf2c009a(team);
        if (!isdefined(var_e70596ed)) {
            continue;
        }
        level scene::stop(var_e70596ed, 1);
    }
}

// Namespace namespace_66d6aa44/namespace_66d6aa44
// Params 2, eflags: 0x2 linked
// Checksum 0x9f082299, Offset: 0x1a60
// Size: 0xb14
function function_e94b8e1a(var_66cbfaf2, *var_2a832857) {
    level endoncallback(&function_59fe0fc1, #"postgame");
    /#
        if (getdvarint(#"hash_2abea44713c5fded", 0)) {
            while (true) {
                debug2dtext((150, 225, 0), "<unknown string>", undefined, undefined, undefined, undefined, 1);
                var_a0579d1a = 1;
                foreach (str_team in level.teams) {
                    if (getplayers(str_team).size < 1) {
                        var_a0579d1a = 0;
                        break;
                    }
                }
                if (var_a0579d1a) {
                    break;
                }
                waitframe(1);
            }
            wait(4);
        }
    #/
    players = getplayers();
    util::function_21678f2c(players);
    profileNamedStart(#"");
    level util::delay(float(function_60d95f53()) / 1000 * 4, undefined, &function_c403d032, players);
    scenes = [];
    var_5a990409 = 0;
    level.var_ae517a5 = 1;
    callback::remove_callback(#"joined_team", &function_d15f17fe);
    callback::remove_callback(#"on_joined_spectator", &function_b499bfc7);
    if (isdefined(level.var_2efdea7.var_c4ec5a3c)) {
        if (!isdefined(scenes)) {
            scenes = [];
        } else if (!isarray(scenes)) {
            scenes = array(scenes);
        }
        if (!isinarray(scenes, level.var_2efdea7.var_c4ec5a3c)) {
            scenes[scenes.size] = level.var_2efdea7.var_c4ec5a3c;
        }
    }
    foreach (team in level.teams) {
        var_e70596ed = function_cf2c009a(team);
        if (!isdefined(var_e70596ed)) {
            continue;
        }
        if (getplayers(team).size) {
            if (!isdefined(scenes)) {
                scenes = [];
            } else if (!isarray(scenes)) {
                scenes = array(scenes);
            }
            if (!isinarray(scenes, var_e70596ed)) {
                scenes[scenes.size] = var_e70596ed;
            }
        }
        if (isdefined(level.var_b38d8c70[var_e70596ed])) {
            scenelength = level.var_b38d8c70[var_e70596ed];
        } else {
            scenelength = scene::function_12479eba(var_e70596ed);
        }
        if (scenelength > var_5a990409) {
            var_5a990409 = scenelength;
        }
    }
    profileNamedStop();
    delaytime = var_5a990409 - 5 + 0.8;
    thread function_2259ff3c(var_2a832857, delaytime, 5);
    if (level.var_6e9fbf44.size > 0) {
        foreach (player in getplayers()) {
            foreach (postfxbundle in level.var_6e9fbf44) {
                player clientfield::set_to_player(postfxbundle.uniqueid, 1);
            }
        }
    }
    foreach (player in getplayers()) {
        player function_8ec328e1(0);
        if (!spawning::function_daa5852f()) {
            player predictspawnpoint(player getplayercamerapos(), player getplayerangles());
        }
    }
    if (spawning::function_daa5852f()) {
        player_insertion::function_63977a98(0);
        player_insertion::function_d28162a2(isdefined(level.var_2efdea7.blackscreentime) ? level.var_2efdea7.blackscreentime : 0);
        player_insertion::function_1a50e8a5(isdefined(level.var_2efdea7.var_73a4076) ? level.var_2efdea7.var_73a4076 : 0);
    }
    function_bb17da18();
    level.var_fb99ff98 = 1;
    level callback::callback(#"hash_4b4c187e584b34ac");
    scene::function_1e327c20(scenes, 0, 0, 1);
    function_db62d086();
    player::function_80e763a4();
    foreach (player in getplayers()) {
        player function_8ec328e1(1);
        player setvisibletoall();
        if (!spawning::function_daa5852f()) {
            player function_b3086fd0();
        }
    }
    /#
        if (getdvarint(#"hash_6a54249f0cc48945", 0)) {
            adddebugcommand("<unknown string>");
        }
    #/
    level callback::callback(#"hash_255b4626805810f5");
    if (level.var_6e9fbf44.size > 0) {
        foreach (player in getplayers()) {
            foreach (postfxbundle in level.var_6e9fbf44) {
                player clientfield::set_to_player(postfxbundle.uniqueid, 0);
            }
        }
    }
    level.var_ae517a5 = 0;
    music::setmusicstate("none");
    level thread util::delay(1, "game_ended", &function_75125d25, 0);
    thread function_bb23918f();
    if (isdefined(level.var_fd167bf6) && !spawning::function_daa5852f()) {
        var_526ef4a1 = level.var_fd167bf6 - gettime();
        if (var_526ef4a1 > 0) {
            wait(float(var_526ef4a1) / 1000);
        }
    }
    println("<unknown string>" + gettime());
}

// Namespace namespace_66d6aa44/namespace_66d6aa44
// Params 0, eflags: 0x2 linked
// Checksum 0xe5671183, Offset: 0x2580
// Size: 0x1c
function function_bb23918f() {
    wait(0.4);
    function_b906539e();
}

// Namespace namespace_66d6aa44/namespace_66d6aa44
// Params 1, eflags: 0x2 linked
// Checksum 0x10f8b884, Offset: 0x25a8
// Size: 0x1c4
function function_cf2c009a(team) {
    if (!isdefined(level.var_2efdea7)) {
        return undefined;
    }
    if (team == util::get_team_mapping("sidea")) {
        return level.var_2efdea7.var_30a9de1;
    } else if (team == util::get_team_mapping("sideb")) {
        return level.var_2efdea7.var_704cf864;
    } else {
        switch (team) {
        case #"team3":
            return level.var_2efdea7.var_5f68ebf7;
        case #"team4":
            return level.var_2efdea7.var_78449dae;
        case #"team5":
            return level.var_2efdea7.var_79fda120;
        case #"team6":
            return level.var_2efdea7.var_93e854f5;
        case #"team7":
            return level.var_2efdea7.var_a5aa7879;
        case #"team8":
            return level.var_2efdea7.var_de866a34;
        case #"team9":
            return level.var_2efdea7.var_b1448fb1;
        case #"team10":
            return level.var_2efdea7.var_e39afb68;
        }
    }
    return undefined;
}

// Namespace namespace_66d6aa44/namespace_66d6aa44
// Params 1, eflags: 0x2 linked
// Checksum 0x69cb9b15, Offset: 0x2778
// Size: 0x324
function function_2aaeab97(var_66cbfaf2) {
    if (!function_14956b80()) {
        return;
    }
    player_insertion::function_63977a98(0);
    if (!isdefined(level.var_2efdea7.var_d74b6b9c)) {
        return;
    }
    player_insertion::function_d28162a2(isdefined(level.var_2efdea7.blackscreentime) ? level.var_2efdea7.blackscreentime : 0);
    player_insertion::function_1a50e8a5(isdefined(level.var_2efdea7.var_73a4076) ? level.var_2efdea7.var_73a4076 : 0);
    players = getplayers();
    util::function_21678f2c(players);
    level util::delay(float(function_60d95f53()) / 1000 * 4, undefined, &function_c403d032, players);
    if (isdefined(var_66cbfaf2)) {
        if (isdefined(level.var_b38d8c70[level.var_2efdea7.var_d74b6b9c])) {
            var_9d90ef8b = level.var_b38d8c70[level.var_2efdea7.var_d74b6b9c];
        } else {
            var_9d90ef8b = scene::function_12479eba(level.var_2efdea7.var_d74b6b9c);
        }
        delaytime = var_9d90ef8b - 5 + 0.8;
        level thread function_2259ff3c(var_66cbfaf2, delaytime, 5);
    }
    callback::remove_callback(#"joined_team", &function_d15f17fe);
    function_75125d25();
    function_f5692e0c("intro_cinematic");
    scene::function_1e327c20(level.var_2efdea7.var_d74b6b9c);
    level thread util::delay(6, "game_ended", &function_75125d25, 0);
    array::thread_all(getplayers(), &function_8ec328e1, 1);
    array::run_all(getplayers(), &setvisibletoall);
}

// Namespace namespace_66d6aa44/namespace_66d6aa44
// Params 2, eflags: 0x2 linked
// Checksum 0x5f0cbfd9, Offset: 0x2aa8
// Size: 0x44
function function_a03c3a00(time, timeout) {
    if (self player::function_114b77dd(time, timeout)) {
        return;
    }
    self function_57fd50e9();
}

// Namespace namespace_66d6aa44/namespace_66d6aa44
// Params 1, eflags: 0x2 linked
// Checksum 0x32aaa66e, Offset: 0x2af8
// Size: 0xbc
function function_8ec328e1(enable) {
    if (enable) {
        self val::reset(#"hash_549cbea73f5b2a54", "show_hud");
        self val::reset(#"hash_549cbea73f5b2a54", "show_weapon_hud");
        return;
    }
    self val::set(#"hash_549cbea73f5b2a54", "show_hud", 0);
    self val::set(#"hash_549cbea73f5b2a54", "show_weapon_hud", 0);
}

// Namespace namespace_66d6aa44/namespace_66d6aa44
// Params 0, eflags: 0x2 linked
// Checksum 0xa22fe0bd, Offset: 0x2bc0
// Size: 0x34
function function_c1ec451() {
    return self clientfield::get_player_uimodel("closeLoadingMovie") == 0 ? 1 : 0;
}

// Namespace namespace_66d6aa44/namespace_66d6aa44
// Params 0, eflags: 0x2 linked
// Checksum 0x840ec48e, Offset: 0x2c00
// Size: 0x1c
function function_684bad0f() {
    self function_57fd50e9();
}

// Namespace namespace_66d6aa44/namespace_66d6aa44
// Params 0, eflags: 0x2 linked
// Checksum 0xc00a1b8e, Offset: 0x2c28
// Size: 0xb8
function function_e3dbd71b() {
    var_94fab29 = player::function_51b57f72();
    time = gettime();
    foreach (player in getplayers()) {
        player function_a03c3a00(time, var_94fab29);
    }
}

// Namespace namespace_66d6aa44/namespace_66d6aa44
// Params 0, eflags: 0x2 linked
// Checksum 0x9939e074, Offset: 0x2ce8
// Size: 0xcc
function function_a8f822ee() {
    self endon(#"disconnect");
    while (!self player::function_114b77dd() && self function_c1ec451()) {
        self resetinactivitytimer();
        waitframe(1);
    }
    if (level flag::get(#"hash_263f55e6bcaa1891") && self function_c1ec451()) {
        self function_684bad0f();
        self function_8ec328e1(1);
    }
}

// Namespace namespace_66d6aa44/namespace_66d6aa44
// Params 1, eflags: 0x2 linked
// Checksum 0x86bda195, Offset: 0x2dc0
// Size: 0xa8
function function_c403d032(players) {
    arrayremovevalue(players, undefined);
    foreach (player in players) {
        player function_684bad0f();
    }
}

// Namespace namespace_66d6aa44/namespace_66d6aa44
// Params 2, eflags: 0x2 linked
// Checksum 0xc5ec5da6, Offset: 0x2e70
// Size: 0xac
function function_c0622ccd(players, force) {
    level flag::set(#"hash_263f55e6bcaa1891");
    if (force) {
        array::run_all(players, &function_684bad0f);
        array::thread_all(players, &function_8ec328e1, 1);
        return;
    }
    array::thread_all(players, &function_a8f822ee);
}

// Namespace namespace_66d6aa44/namespace_66d6aa44
// Params 0, eflags: 0x6 linked
// Checksum 0x6291fcc8, Offset: 0x2f28
// Size: 0x108
function private function_57fd50e9() {
    self clientfield::set_player_uimodel("closeLoadingMovie", 1);
    if (!self issplitscreen()) {
        return;
    }
    foreach (player in getplayers()) {
        if (player == self) {
            continue;
        }
        if (!self isplayeronsamemachine(player)) {
            continue;
        }
        player clientfield::set_player_uimodel("closeLoadingMovie", 1);
    }
}

