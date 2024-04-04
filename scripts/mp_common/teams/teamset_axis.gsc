// Atian COD Tools GSC CW decompiler test
#using scripts\mp_common\teams\teamset.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace teamset_axis;

// Namespace teamset_axis/teamset_axis
// Params 0, eflags: 0x5
// Checksum 0xfefe3027, Offset: 0xf0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"teamset_axis", &preinit, undefined, undefined, undefined);
}

// Namespace teamset_axis/teamset_axis
// Params 0, eflags: 0x6 linked
// Checksum 0x6dc4bfac, Offset: 0x138
// Size: 0x4c
function private preinit() {
    if (!isdefined(level.teams[#"axis"])) {
        return;
    }
    init(level.teams[#"axis"]);
}

// Namespace teamset_axis/teamset_axis
// Params 1, eflags: 0x2 linked
// Checksum 0x784b1160, Offset: 0x190
// Size: 0x90
function init(team) {
    teamset::init();
    game.music["spawn_" + team] = "SPAWN_PMC";
    game.music["spawn_short" + team] = "SPAWN_SHORT_PMC";
    game.music["victory_" + team] = "VICTORY_PMC";
    game.voice[team] = "vox_pmc_";
}

