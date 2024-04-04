// Atian COD Tools GSC CW decompiler test
#using scripts\weapons\smokegrenade.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using script_13da4e6b98ca81a1;
#using scripts\core_common\renderoverridebundle.csc;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\flag_shared.csc;
#using script_4daa124bc391e7ed;
#using scripts\core_common\callbacks_shared.csc;

#namespace player;

// Namespace player/player
// Params 0, eflags: 0x5
// Checksum 0xd9023aaf, Offset: 0x110
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"player_mp", &preinit, undefined, undefined, "renderoverridebundle");
}

// Namespace player/player
// Params 0, eflags: 0x6 linked
// Checksum 0xaba49a03, Offset: 0x160
// Size: 0x21c
function private preinit() {
    callback::on_spawned(&on_player_spawned);
    callback::on_player_corpse(&on_player_corpse);
    callback::function_930e5d42(&function_930e5d42);
    callback::on_weapon_change(&function_585458);
    callback::on_localclient_connect(&codcaster::function_57a6b7b0);
    level.var_15ab9bbd = 1;
    renderoverridebundle::function_f72f089c(#"hash_27554b8df2b9e92b", sessionmodeiscampaigngame() ? #"hash_1cbf6d26721c59a7" : #"hash_1c90592671f4c6e9", &function_6803f977, undefined, undefined, 1);
    renderoverridebundle::function_f72f089c(#"hash_48a9d99bb016fbd3", #"hash_39109749d54991e4", &function_c451ab29);
    renderoverridebundle::function_f72f089c(#"hash_2fff175ca0ba28b2", #"hash_39109a49d54996fd", &function_c451ab29);
    renderoverridebundle::function_f72f089c(#"hash_b049550966eccb3", #"hash_17daa1d16cd73cd2", &function_9216f2c3);
    renderoverridebundle::function_f72f089c(#"hash_b049650966ece66", #"hash_17daa0d16cd73b1f", &function_9216f2c3);
}

// Namespace player/player
// Params 2, eflags: 0x2 linked
// Checksum 0x53a44ed3, Offset: 0x388
// Size: 0x7c
function function_a25e8ff(localclientnum, var_27121fbd) {
    if (!var_27121fbd && codcaster::function_b8fe9b52(localclientnum)) {
        codcaster::function_12acfa84();
        return;
    }
    if (!self function_21c0fa55()) {
        self function_bcc9c79c(localclientnum);
    }
}

// Namespace player/player
// Params 1, eflags: 0x2 linked
// Checksum 0x4a8bb106, Offset: 0x410
// Size: 0x144
function on_player_spawned(localclientnum) {
    if (codcaster::function_b8fe9b52(localclientnum)) {
        if (self postfx::function_556665f2("pstfx_radiation_dot")) {
            self postfx::exitpostfxbundle("pstfx_radiation_dot");
        }
        if (self postfx::function_556665f2("pstfx_burn_loop")) {
            self postfx::exitpostfxbundle("pstfx_burn_loop");
        }
        self renderoverridebundle::function_f4eab437(localclientnum, 0, #"hash_39109749d54991e4");
        self renderoverridebundle::function_f4eab437(localclientnum, 0, #"hash_39109a49d54996fd");
        self flag::clear(#"hash_7e51b929877df918");
    }
    function_a25e8ff(localclientnum, 0);
    self namespace_9bcd7d72::function_bdda909b();
}

// Namespace player/player
// Params 1, eflags: 0x6 linked
// Checksum 0xe8d7dd1c, Offset: 0x560
// Size: 0xd8
function private function_5d6c2a78(localclientnum) {
    foreach (player in getplayers(localclientnum)) {
        if (!player function_21c0fa55() && player.team == self.team) {
            player function_bcc9c79c(localclientnum);
        }
    }
}

// Namespace player/player
// Params 1, eflags: 0x2 linked
// Checksum 0x49f724ee, Offset: 0x640
// Size: 0x4c
function function_930e5d42(localclientnum) {
    if (self function_da43934d()) {
        level notify(#"hash_21eba590bb904092");
        self function_5d6c2a78(localclientnum);
    }
}

// Namespace player/player
// Params 2, eflags: 0x2 linked
// Checksum 0xa8f133ba, Offset: 0x698
// Size: 0x1b4
function on_player_corpse(localclientnum, params) {
    self endon(#"death");
    self util::waittill_dobj(localclientnum);
    self function_a25e8ff(localclientnum, 1);
    self renderoverridebundle::stop_bundle(#"friendly", sessionmodeiscampaigngame() ? #"hash_1cbf6d26721c59a7" : #"hash_1c90592671f4c6e9", 0);
    if (codcaster::function_b8fe9b52(localclientnum)) {
        rob = self codcaster::is_friendly(localclientnum) ? #"hash_39109749d54991e4" : #"hash_39109a49d54996fd";
        if (isdefined(params.playernum) && function_b3cde530(localclientnum, params.playernum)) {
            self renderoverridebundle::start_bundle(#"hash_7e51b929877df918", rob);
            level thread function_74ce4ee8(localclientnum, params.playernum, self, rob);
            codcaster::function_12acfa84();
            return;
        }
        self codcaster::function_6d9b84d9(rob);
    }
}

// Namespace player/player
// Params 1, eflags: 0x2 linked
// Checksum 0x95752350, Offset: 0x858
// Size: 0x94
function function_585458(params) {
    if (self == level) {
        local_client_num = params.localclientnum;
        var_a6426655 = function_5778f82(local_client_num, #"hash_410c46b5ff702c96");
        if (var_a6426655) {
            localplayer = function_5c10bd79(local_client_num);
            localplayer smokegrenade::function_4fc900e1(local_client_num);
        }
    }
}

// Namespace player/player
// Params 1, eflags: 0x2 linked
// Checksum 0xb3a7dbb6, Offset: 0x8f8
// Size: 0x44
function function_bcc9c79c(local_client_num) {
    self renderoverridebundle::function_c8d97b8e(local_client_num, #"friendly", #"hash_27554b8df2b9e92b");
}

// Namespace player/player
// Params 2, eflags: 0x2 linked
// Checksum 0x3919807, Offset: 0x948
// Size: 0x92
function function_c451ab29(local_client_num, bundle) {
    if (!codcaster::function_c955fbd1(local_client_num) && self == function_5c10bd79(local_client_num) && !function_b3cde530(local_client_num, self getentitynumber())) {
        return 0;
    }
    return function_9216f2c3(local_client_num, bundle);
}

// Namespace player/player
// Params 2, eflags: 0x2 linked
// Checksum 0x46959419, Offset: 0x9e8
// Size: 0x68
function function_9216f2c3(local_client_num, *bundle) {
    if (level.gameended) {
        return false;
    }
    if (!codcaster::function_b8fe9b52(bundle)) {
        return false;
    }
    if (!isdefined(level.isigcactive) || level.isigcactive) {
        return false;
    }
    return true;
}

// Namespace player/player
// Params 2, eflags: 0x2 linked
// Checksum 0xeda6c982, Offset: 0xa58
// Size: 0x10a
function function_6803f977(local_client_num, bundle) {
    if (!function_2f9b4fe8(local_client_num, #"specialty_friendliesthroughwalls")) {
        return 0;
    }
    if (level.gameended) {
        return 0;
    }
    if (self function_da43934d()) {
        return 0;
    }
    if (isigcactive(local_client_num)) {
        return 0;
    }
    player = function_5c10bd79(local_client_num);
    if (self == player) {
        return 0;
    }
    if (function_1cbf351b(local_client_num) && !player function_ca024039()) {
        return 0;
    }
    if (player.var_33b61b6f === 1) {
        return 0;
    }
    return renderoverridebundle::function_6803f977(local_client_num, bundle);
}

// Namespace player/player
// Params 4, eflags: 0x2 linked
// Checksum 0xeeb8b511, Offset: 0xb70
// Size: 0x94
function function_74ce4ee8(localclientnum, playernum, body, rob) {
    self endon(#"disconnect");
    while (function_b3cde530(localclientnum, playernum)) {
        waitframe(1);
    }
    if (isdefined(body)) {
        body codcaster::function_6d9b84d9(rob);
    }
    codcaster::function_12acfa84();
}

