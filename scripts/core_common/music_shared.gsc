// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace music;

// Namespace music/music_shared
// Params 0, eflags: 0x5
// Checksum 0x4a701397, Offset: 0xe0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"music", &preinit, undefined, undefined, undefined);
}

// Namespace music/music_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x73041d1f, Offset: 0x128
// Size: 0x5c
function private preinit() {
    level.musicstate = "";
    util::registerclientsys("musicCmd");
    if (sessionmodeiscampaigngame()) {
        callback::on_spawned(&on_player_spawned);
    }
}

// Namespace music/music_shared
// Params 3, eflags: 0x2 linked
// Checksum 0xfbd9bda, Offset: 0x190
// Size: 0x3c
function setmusicstate(state, player, delay) {
    level thread function_d6f7c644(state, player, delay);
}

// Namespace music/music_shared
// Params 3, eflags: 0x2 linked
// Checksum 0xf4434a1b, Offset: 0x1d8
// Size: 0xa4
function function_d6f7c644(state, player, delay) {
    if (isdefined(level.musicstate)) {
        if (isdefined(delay)) {
            wait(delay);
        }
        if (isdefined(player)) {
            util::setclientsysstate("musicCmd", state, player);
            return;
        } else if (level.musicstate != state) {
            util::setclientsysstate("musicCmd", state);
        }
    }
    level.musicstate = state;
}

// Namespace music/music_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x32c24349, Offset: 0x288
// Size: 0xc0
function setmusicstatebyteam(state, str_teamname) {
    foreach (player in level.players) {
        if (isdefined(player.team) && player.team == str_teamname) {
            setmusicstate(state, player);
        }
    }
}

// Namespace music/music_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xb9b394b1, Offset: 0x350
// Size: 0x66
function on_player_spawned() {
    if (isdefined(level.musicstate)) {
        if (issubstr(level.musicstate, "_igc") || issubstr(level.musicstate, "igc_")) {
            return;
        }
        if (isdefined(self)) {
        }
    }
}

// Namespace music/music_shared
// Params 0, eflags: 0x0
// Checksum 0x64ecdc4a, Offset: 0x3c0
// Size: 0x24
function function_cbeeecf() {
    if (isdefined(self)) {
        setmusicstate("none", self);
    }
}

// Namespace music/music_shared
// Params 2, eflags: 0x0
// Checksum 0x90e11088, Offset: 0x3f0
// Size: 0x44
function function_edda155f(str_alias, n_delay) {
    level thread function_2b18b6d6(#"mus_" + str_alias + "_intro", n_delay);
}

// Namespace music/music_shared
// Params 3, eflags: 0x0
// Checksum 0x3335a243, Offset: 0x440
// Size: 0x12c
function function_2af5f0ec(str_alias, var_e08a84d6, n_delay) {
    if (isdefined(var_e08a84d6)) {
        level thread function_2b18b6d6(#"mus_" + str_alias + "_loop_" + var_e08a84d6, n_delay);
        return;
    }
    var_d49193ec = "mus_" + str_alias + "_loop_";
    n_max = 0;
    for (i = 0; i < 9; i++) {
        if (!soundexists(var_d49193ec + i)) {
            n_max = i;
        }
    }
    if (n_max > 0) {
        level thread function_2b18b6d6(#"mus_" + str_alias + "_loop_" + randomintrange(0, n_max), n_delay);
    }
}

// Namespace music/music_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x1eb1c3c6, Offset: 0x578
// Size: 0x3c
function function_2b18b6d6(str_alias, n_delay) {
    if (isdefined(n_delay)) {
        wait(n_delay);
    }
    playsoundatposition(str_alias, (0, 0, 0));
}

