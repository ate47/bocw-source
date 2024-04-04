// Atian COD Tools GSC CW decompiler test
#using scripts\zm\perk\zm_perk_death_perception.csc;
#using scripts\zm_common\zm.csc;
#using scripts\zm_common\zm_trial.csc;
#using scripts\core_common\system_shared.csc;

#namespace zm_trial_disable_hud;

// Namespace zm_trial_disable_hud/zm_trial_disable_hud
// Params 0, eflags: 0x5
// Checksum 0x4dc99839, Offset: 0xa0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_trial_disable_hud", &preinit, undefined, undefined, undefined);
}

// Namespace zm_trial_disable_hud/zm_trial_disable_hud
// Params 0, eflags: 0x4
// Checksum 0x435c999d, Offset: 0xe8
// Size: 0x5c
function private preinit() {
    if (!zm_trial::is_trial_mode()) {
        return;
    }
    zm_trial::register_challenge(#"disable_hud", &on_begin, &on_end);
}

// Namespace zm_trial_disable_hud/zm_trial_disable_hud
// Params 2, eflags: 0x4
// Checksum 0x1a1b5706, Offset: 0x150
// Size: 0x2c
function private on_begin(*local_client_num, *params) {
    level thread function_40349f7c();
}

// Namespace zm_trial_disable_hud/zm_trial_disable_hud
// Params 1, eflags: 0x0
// Checksum 0xaa41718b, Offset: 0x188
// Size: 0x1b0
function function_40349f7c(localclientnum) {
    level endon(#"hash_38932f8deb28b470", #"end_game");
    wait(12);
    level.var_dc60105c = 1;
    maxclients = getmaxlocalclients();
    for (localclientnum = 0; localclientnum < maxclients; localclientnum++) {
        if (isdefined(function_5c10bd79(localclientnum))) {
            foreach (player in getplayers(localclientnum)) {
                player zm::function_92f0c63(localclientnum);
            }
            foreach (player in getplayers(localclientnum)) {
                player zm_perk_death_perception::function_25410869(localclientnum);
            }
        }
    }
}

// Namespace zm_trial_disable_hud/zm_trial_disable_hud
// Params 1, eflags: 0x4
// Checksum 0xa3998cfc, Offset: 0x340
// Size: 0x198
function private on_end(*local_client_num) {
    level notify(#"hash_38932f8deb28b470");
    level.var_dc60105c = undefined;
    maxclients = getmaxlocalclients();
    for (localclientnum = 0; localclientnum < maxclients; localclientnum++) {
        if (isdefined(function_5c10bd79(localclientnum))) {
            foreach (player in getplayers(localclientnum)) {
                player zm::function_92f0c63(localclientnum);
            }
            foreach (player in getplayers(localclientnum)) {
                player zm_perk_death_perception::function_25410869(localclientnum);
            }
        }
    }
}

