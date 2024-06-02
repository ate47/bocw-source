// Atian COD Tools GSC CW decompiler test
#using script_7a8059ca02b7b09e;
#using scripts\core_common\system_shared.gsc;

#namespace telemetry;

// Namespace telemetry/telemetry
// Params 0, eflags: 0x5
// Checksum 0x1423ddae, Offset: 0x90
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_53528dbbf6cd15c4", &preinit, undefined, undefined, undefined);
}

// Namespace telemetry/telemetry
// Params 0, eflags: 0x6 linked
// Checksum 0x5988303c, Offset: 0xd8
// Size: 0x9c
function private preinit() {
    if (isdefined(game)) {
        if (!isdefined(game.telemetry)) {
            game.telemetry = {};
        }
        if (!isdefined(game.telemetry.player_count)) {
            game.telemetry.player_count = 0;
        }
        if (!isdefined(game.telemetry.life_count)) {
            game.telemetry.life_count = 0;
        }
        return;
    }
    println("<unknown string>");
}

