// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\ai\zm_ai_utility.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\bots\bot.gsc;
#using scripts\core_common\ai_shared.gsc;

#namespace zm_bot;

// Namespace zm_bot/zm_bot
// Params 0, eflags: 0x5
// Checksum 0x8a823906, Offset: 0x108
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_bot", &preinit, undefined, undefined, undefined);
}

// Namespace zm_bot/zm_bot
// Params 0, eflags: 0x6 linked
// Checksum 0x46d2d38c, Offset: 0x150
// Size: 0x8c
function private preinit() {
    callback::on_connect(&on_player_connect);
    level.var_df0a0911 = "bot_tacstate_zm_default";
    level.var_258cdebb = "bot_tacstate_zm_laststand";
    level.var_34eb792d = &handleplayerfasttravel;
    level.zm_bots_scale = getdvarint(#"zm_bots_scale", 1);
}

// Namespace zm_bot/zm_bot
// Params 0, eflags: 0x2 linked
// Checksum 0x662642d5, Offset: 0x1e8
// Size: 0x1e
function on_player_connect() {
    if (isbot(self)) {
    }
}

// Namespace zm_bot/zm_bot
// Params 1, eflags: 0x2 linked
// Checksum 0xa75051f1, Offset: 0x210
// Size: 0x6c
function function_e16b5033(actor) {
    base_health = isdefined(actor.basehealth) ? actor.basehealth : 99;
    max_health = actor zm_ai_utility::function_f7014c3d(base_health);
    return max_health / base_health * 1;
}

// Namespace zm_bot/zm_bot
// Params 1, eflags: 0x2 linked
// Checksum 0xe2bf0198, Offset: 0x288
// Size: 0xec
function function_1f9de69d(var_40b86c4b) {
    if (!isdefined(var_40b86c4b)) {
        return false;
    }
    players = getplayers();
    foreach (player in players) {
        if (isbot(player)) {
            continue;
        }
        currentzone = player zm_utility::get_current_zone();
        if (currentzone === var_40b86c4b) {
            return true;
        }
    }
    return false;
}

// Namespace zm_bot/zm_bot
// Params 2, eflags: 0x2 linked
// Checksum 0xf279d404, Offset: 0x380
// Size: 0x208
function handleplayerfasttravel(player, var_12230d08) {
    player endon(#"death");
    level notify(#"handleplayerfasttravel");
    level endon(#"handleplayerfasttravel");
    if (!isdefined(var_12230d08)) {
        return;
    }
    wait(3);
    currentzone = player zm_utility::get_current_zone();
    currentorigin = player.origin;
    if (!isdefined(currentzone)) {
        return;
    }
    players = getplayers();
    foreach (player in players) {
        if (!isbot(player)) {
            continue;
        }
        var_40b86c4b = player zm_utility::get_current_zone();
        if (var_40b86c4b === currentzone) {
            continue;
        }
        if (function_1f9de69d(var_40b86c4b)) {
            continue;
        }
        if (isdefined(level.var_1dbf5163) && ![[ level.var_1dbf5163 ]](player)) {
            continue;
        }
        if (isdefined(level.var_3c84697b)) {
            player thread [[ level.var_3c84697b ]](var_12230d08);
            continue;
        }
        player setorigin(currentorigin);
        player dontinterpolate();
    }
}

