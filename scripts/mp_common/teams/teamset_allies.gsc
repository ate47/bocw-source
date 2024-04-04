// Atian COD Tools GSC CW decompiler test
#using scripts\mp_common\teams\teamset.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace teamset_allies;

// Namespace teamset_allies/teamset_allies
// Params 0, eflags: 0x5
// Checksum 0xb263d1ad, Offset: 0xf0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"teamset_allies", &preinit, undefined, undefined, undefined);
}

// Namespace teamset_allies/teamset_allies
// Params 0, eflags: 0x6 linked
// Checksum 0xd67d8f20, Offset: 0x138
// Size: 0xc8
function private preinit() {
    init(#"none");
    foreach (team in level.teams) {
        if (team == #"axis") {
            continue;
        }
        init(team);
    }
}

// Namespace teamset_allies/teamset_allies
// Params 1, eflags: 0x2 linked
// Checksum 0xb040502c, Offset: 0x208
// Size: 0x90
function init(team) {
    teamset::init();
    game.music["spawn_" + team] = "SPAWN_ST6";
    game.music["spawn_short" + team] = "SPAWN_SHORT_ST6";
    game.music["victory_" + team] = "VICTORY_ST6";
    game.voice[team] = "vox_st6_";
}

