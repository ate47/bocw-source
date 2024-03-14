// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\renderoverridebundle.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace squad_spawn;

// Namespace squad_spawn/namespace_cd4d78f1
// Params 0, eflags: 0x5
// Checksum 0x5fd12434, Offset: 0x1d0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_4ceb0867dc2d780f", &init, undefined, undefined, undefined);
}

// Namespace squad_spawn/namespace_cd4d78f1
// Params 0, eflags: 0x2 linked
// Checksum 0x522a695f, Offset: 0x218
// Size: 0xb4
function init() {
    level.var_d0252074 = (isdefined(getgametypesetting(#"hash_2b1f40bc711c41f3")) ? getgametypesetting(#"hash_2b1f40bc711c41f3") : 0) && !util::is_frontend_map();
    if (!level.var_d0252074) {
        return;
    }
    setupclientfields();
    level callback::on_end_game(&on_game_ended);
}

// Namespace squad_spawn/namespace_cd4d78f1
// Params 0, eflags: 0x2 linked
// Checksum 0xbffda7c0, Offset: 0x2d8
// Size: 0x204
function setupclientfields() {
    clientfield::register_clientuimodel("hudItems.squadSpawnOnStatus", #"hash_6f4b11a0bee9b73d", #"squadspawnonstatus", 1, 3, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("hudItems.squadSpawnActive", #"hash_6f4b11a0bee9b73d", #"squadspawnactive", 1, 1, "int", &function_cc03b772, 0, 0);
    clientfield::register_clientuimodel("hudItems.squadSpawnRespawnStatus", #"hash_6f4b11a0bee9b73d", #"hash_6b8b915fbdeaa722", 1, 2, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("hudItems.squadSpawnViewType", #"hash_6f4b11a0bee9b73d", #"hash_2d210ef59c073abd", 1, 1, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("hudItems.squadAutoSpawnPromptActive", #"hash_6f4b11a0bee9b73d", #"hash_4b3a0953a67ca151", 1, 1, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("hudItems.squadSpawnSquadWipe", #"hash_6f4b11a0bee9b73d", #"hash_241b5d6ff260de2d", 1, 1, "int", &function_a58f32b0, 0, 0);
}

// Namespace squad_spawn/namespace_cd4d78f1
// Params 1, eflags: 0x2 linked
// Checksum 0x2e19f0d5, Offset: 0x4e8
// Size: 0x70
function function_21b773d5(localclientnum) {
    if (!is_true(level.var_d0252074)) {
        return false;
    }
    player = function_27673a7(localclientnum);
    if (!isdefined(player)) {
        return false;
    }
    return player clientfield::get_player_uimodel("hudItems.squadSpawnActive") == 1;
}

// Namespace squad_spawn/namespace_cd4d78f1
// Params 7, eflags: 0x2 linked
// Checksum 0xd8f0b29, Offset: 0x560
// Size: 0x1c8
function function_cc03b772(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        level thread function_58710bd2(fieldname);
        level thread function_cbcbd56d(fieldname);
        setsoundcontext("spawn_select_screen", "true");
        function_5ea2c6e3("uin_overhead_map", 0.1, 1);
        soundloopemitter(#"hash_5ef60d86d79dc9a1", (0, 0, 0));
        if (isdefined(level.squadspawnactive)) {
            [[ level.squadspawnactive ]](fieldname);
        }
        return;
    }
    level thread function_c97b609d(fieldname);
    level thread function_48811bf4(fieldname);
    setsoundcontext("spawn_select_screen", "");
    function_ed62c9c2("uin_overhead_map", 2);
    soundstoploopemitter(#"hash_5ef60d86d79dc9a1", (0, 0, 0));
    if (isdefined(level.var_6ed4a19b)) {
        [[ level.var_6ed4a19b ]](fieldname);
    }
}

// Namespace squad_spawn/namespace_cd4d78f1
// Params 1, eflags: 0x2 linked
// Checksum 0x3c538315, Offset: 0x730
// Size: 0x5c
function function_cbcbd56d(*localclientnum) {
    if (game.state != #"playing") {
        return;
    }
    if (!is_true(level.var_acf54eb7)) {
        soundsetmusicstate("squad_spawn");
    }
}

// Namespace squad_spawn/namespace_cd4d78f1
// Params 1, eflags: 0x2 linked
// Checksum 0x7ac2f951, Offset: 0x798
// Size: 0x5c
function function_48811bf4(*localclientnum) {
    if (game.state != #"playing") {
        return;
    }
    if (!is_true(level.var_acf54eb7)) {
        soundsetmusicstate("squad_spawn_exit");
    }
}

// Namespace squad_spawn/namespace_cd4d78f1
// Params 7, eflags: 0x2 linked
// Checksum 0x78b25ca5, Offset: 0x800
// Size: 0x64
function function_a58f32b0(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        playsound(fieldname, #"hash_5d2e54389286b7f8");
    }
}

// Namespace squad_spawn/namespace_cd4d78f1
// Params 2, eflags: 0x2 linked
// Checksum 0xa4c97583, Offset: 0x870
// Size: 0xee
function function_429c452(localclientnum, should_play) {
    if (!should_play) {
        return 0;
    }
    if (!isdefined(self)) {
        return 0;
    }
    if (!isplayer(self)) {
        return should_play;
    }
    localplayer = function_5c10bd79(localclientnum);
    if (isdefined(localplayer) && !localplayer util::isenemyteam(self.team)) {
        return 0;
    }
    if (!function_266be0d4(localclientnum)) {
        return 0;
    }
    if (self hasperk(localclientnum, #"specialty_immunenvthermal")) {
        return 0;
    }
    return 1;
}

// Namespace squad_spawn/namespace_cd4d78f1
// Params 1, eflags: 0x6 linked
// Checksum 0x6192ea2d, Offset: 0x968
// Size: 0x8c
function private on_game_ended(localclientnum) {
    setsoundcontext("spawn_select_screen", "");
    function_ed62c9c2("uin_overhead_map", 0.5);
    soundstoploopemitter(#"hash_5ef60d86d79dc9a1", (0, 0, 0));
    function_c97b609d(localclientnum);
}

// Namespace squad_spawn/namespace_cd4d78f1
// Params 2, eflags: 0x6 linked
// Checksum 0xa953a105, Offset: 0xa00
// Size: 0xb2
function private function_ac750979(localclientnum, array) {
    if (isarray(array)) {
        for (index = 0; index < array.size; index++) {
            arrayitem = array[index];
            if (!isdefined(arrayitem)) {
                continue;
            }
            arrayitem renderoverridebundle::function_f4eab437(localclientnum, 1, #"hash_c37f4f4d19191cb", undefined);
            if ((index + 1) % 3 == 0) {
                waitframe(1);
            }
        }
    }
}

// Namespace squad_spawn/namespace_cd4d78f1
// Params 2, eflags: 0x6 linked
// Checksum 0x6b2b998c, Offset: 0xac0
// Size: 0x94
function private function_bebd8395(localclientnum, array) {
    if (isarray(array)) {
        for (index = 0; index < array.size; index++) {
            arrayitem = array[index];
            if (!isdefined(arrayitem)) {
                continue;
            }
            arrayitem renderoverridebundle::function_f4eab437(localclientnum, 0, #"hash_c37f4f4d19191cb", undefined);
        }
    }
}

// Namespace squad_spawn/namespace_cd4d78f1
// Params 1, eflags: 0x6 linked
// Checksum 0x8e68cf1e, Offset: 0xb60
// Size: 0x2fe
function private function_58710bd2(localclientnum) {
    self endon(#"game_ended", #"disconnect", #"hash_6843c6f6d0e53fd");
    while (true) {
        players = getplayers(localclientnum);
        for (index = 0; index < players.size; index++) {
            player = players[index];
            if (!isdefined(player)) {
                continue;
            }
            player renderoverridebundle::function_f4eab437(localclientnum, 1, #"hash_c37f4f4d19191cb", &function_429c452);
            corpse = player getplayercorpse();
            if (!isdefined(corpse) || corpse == player) {
                continue;
            }
            corpse renderoverridebundle::function_f4eab437(localclientnum, 0, #"hash_c37f4f4d19191cb", &function_429c452);
            if ((index + 1) % 3 == 0) {
                waitframe(1);
            }
        }
        if (isarray(level.allvehicles[localclientnum])) {
            for (index = 0; index < level.allvehicles[localclientnum].size; index++) {
                vehicle = level.allvehicles[localclientnum][index];
                if (!isdefined(vehicle)) {
                    continue;
                }
                occupants = vehicle getvehoccupants(localclientnum);
                var_c5dfdae0 = occupants.size > 0 || is_false(vehicle.isplayervehicle);
                vehicle renderoverridebundle::function_f4eab437(localclientnum, var_c5dfdae0, #"hash_c37f4f4d19191cb", &function_429c452);
                if ((index + 1) % 3 == 0) {
                    waitframe(1);
                }
            }
        }
        function_ac750979(localclientnum, level.var_ac260ded);
        function_ac750979(localclientnum, level.counteruavs);
        function_ac750979(localclientnum, level.var_a25fd5e1);
        waitframe(1);
    }
}

// Namespace squad_spawn/namespace_cd4d78f1
// Params 1, eflags: 0x6 linked
// Checksum 0x22718041, Offset: 0xe68
// Size: 0x24c
function private function_c97b609d(localclientnum) {
    level notify(#"hash_6843c6f6d0e53fd");
    players = getplayers(localclientnum);
    foreach (player in players) {
        if (!isdefined(player)) {
            continue;
        }
        player renderoverridebundle::function_f4eab437(localclientnum, 0, #"hash_c37f4f4d19191cb", undefined);
        corpse = player getplayercorpse();
        if (!isdefined(corpse) || corpse == player) {
            continue;
        }
        corpse renderoverridebundle::function_f4eab437(localclientnum, 0, #"hash_c37f4f4d19191cb", undefined);
    }
    if (isarray(level.allvehicles[localclientnum])) {
        for (index = 0; index < level.allvehicles[localclientnum].size; index++) {
            vehicle = level.allvehicles[localclientnum][index];
            if (!isdefined(vehicle)) {
                continue;
            }
            vehicle renderoverridebundle::function_f4eab437(localclientnum, 0, #"hash_c37f4f4d19191cb", undefined);
        }
    }
    function_bebd8395(localclientnum, level.var_ac260ded);
    function_bebd8395(localclientnum, level.counteruavs);
    function_bebd8395(localclientnum, level.var_a25fd5e1);
}

