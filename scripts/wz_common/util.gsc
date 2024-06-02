// Atian COD Tools GSC CW decompiler test
#using script_1cc417743d7c262d;
#using scripts\core_common\globallogic\globallogic_player.gsc;
#using scripts\core_common\death_circle.gsc;

#namespace util;

// Namespace util/util
// Params 2, eflags: 0x2 linked
// Checksum 0x72ec1a0d, Offset: 0x98
// Size: 0x54
function function_8076d591(event, params) {
    if (isdefined(params)) {
        globallogic_audio::leader_dialog(event, params.team);
        return;
    }
    globallogic_audio::leader_dialog(event);
}

// Namespace util/util
// Params 2, eflags: 0x2 linked
// Checksum 0x4dcbbd8c, Offset: 0xf8
// Size: 0x1ae
function function_de15dc32(*killed_player, disconnected_player) {
    player_count = {#total:0, #alive:0};
    foreach (team in level.teams) {
        players = getplayers(team);
        if (players.size == 0) {
            continue;
        }
        var_40073db2 = 0;
        foreach (player in players) {
            if (disconnected_player === player) {
                continue;
            }
            player_count.total++;
            if (isalive(player)) {
                var_40073db2++;
            }
        }
        player_count.alive += var_40073db2;
    }
    return player_count;
}

// Namespace util/util
// Params 0, eflags: 0x2 linked
// Checksum 0x3b1bba52, Offset: 0x2b0
// Size: 0x13a
function function_47851c07() {
    if (game.state != #"playing") {
        return false;
    }
    if (is_true(level.spawnsystem.deathcirclerespawn)) {
        var_3db6ed91 = level.deathcircles.size - 2;
        if (var_3db6ed91 < 0) {
            var_3db6ed91 = 0;
        }
        if ((isdefined(level.var_78442886) ? level.var_78442886 : 0) >= var_3db6ed91) {
            return false;
        }
        if (isdefined(level.var_78442886) && isdefined(level.var_245d4af9) && level.var_78442886 >= level.var_245d4af9) {
            return false;
        }
    }
    if (is_true(level.wave_spawn) && (death_circle::function_9956f107() || isdefined(level.var_75db41a7) && gettime() > level.var_75db41a7)) {
        return false;
    }
    return true;
}

