// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\contracts_shared.gsc;
#using scripts\core_common\challenges_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\killstreaks\killstreaks_shared.gsc;

#namespace globallogic_player;

// Namespace globallogic_player/globallogic_player
// Params 0, eflags: 0x5
// Checksum 0x29021aa3, Offset: 0xb0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"globallogic_player", &preinit, undefined, undefined, undefined);
}

// Namespace globallogic_player/globallogic_player
// Params 0, eflags: 0x6 linked
// Checksum 0x14dd5bf1, Offset: 0xf8
// Size: 0x3c
function private preinit() {
    level.var_aadc08f8 = &function_4b7bb02c;
    callback::on_disconnect(&on_player_disconnect);
}

// Namespace globallogic_player/globallogic_player
// Params 1, eflags: 0x2 linked
// Checksum 0x7bfc4c1, Offset: 0x140
// Size: 0x4e
function function_4b7bb02c(weapon) {
    if (!killstreaks::is_killstreak_weapon(weapon)) {
        return true;
    }
    if (killstreaks::is_killstreak_weapon_assist_allowed(weapon)) {
        return true;
    }
    return false;
}

// Namespace globallogic_player/globallogic_player
// Params 0, eflags: 0x2 linked
// Checksum 0x735d4c95, Offset: 0x198
// Size: 0xec
function on_player_disconnect() {
    player = self;
    if (sessionmodeismultiplayergame()) {
        uploadstats();
        if (getdvarint(#"hash_37dfd97d34a15e14", 0)) {
            player contracts::function_78083139();
            if (isdefined(player.pers[#"hash_150795bee4d46ce4"])) {
                var_28ee869a = gettime() - player.pers[#"hash_150795bee4d46ce4"];
                player challenges::function_659f7dc(var_28ee869a, 0);
            }
            player function_4835d26a();
        }
    }
}

