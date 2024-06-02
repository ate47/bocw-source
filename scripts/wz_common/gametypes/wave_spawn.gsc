// Atian COD Tools GSC CW decompiler test
#using scripts\wz_common\spawn.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\death_circle.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace wave_spawn;

// Namespace wave_spawn/wave_spawn
// Params 0, eflags: 0x5
// Checksum 0xa4c871b5, Offset: 0x118
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"wave_spawn", &__init__, undefined, undefined, undefined);
}

// Namespace wave_spawn/wave_spawn
// Params 0, eflags: 0x2 linked
// Checksum 0x20dabf5, Offset: 0x160
// Size: 0x16c
function __init__() {
    level.wave_spawn = isdefined(getgametypesetting(#"wzenablewaverespawn")) ? getgametypesetting(#"wzenablewaverespawn") : 0;
    if (level.wave_spawn) {
        level.takelivesondeath = 1;
        level.var_a5f54d9f = 1;
        level callback::add_callback(#"hash_3be1213f454fa90e", &function_301b775b);
        level callback::add_callback(#"hash_7fc21de2eaebdb3b", &function_832ecb3d);
        level callback::add_callback(#"hash_405e46788e83af41", &function_1540761c);
        level callback::add_callback(#"hash_7912e21750e4010d", &function_a27362d0);
        level callback::on_player_killed(&function_14a68e0b);
    }
}

// Namespace wave_spawn/wave_spawn
// Params 0, eflags: 0x2 linked
// Checksum 0x934af55a, Offset: 0x2d8
// Size: 0x64
function function_301b775b() {
    time = int(gettime() + int(level.waverespawndelay * 1000));
    level clientfield::set_world_uimodel("hudItems.warzone.waveRespawnTimer", time);
}

// Namespace wave_spawn/wave_spawn
// Params 1, eflags: 0x6 linked
// Checksum 0xf11ea61, Offset: 0x348
// Size: 0xd8
function private function_a27362d0(*params) {
    if (level.deathcircleindex >= level.deathcircles.size - 2) {
        foreach (player in getplayers()) {
            player clientfield::set_player_uimodel("hudItems.playerCanRedeploy", 0);
            player thread function_ca1398a7();
        }
    }
}

// Namespace wave_spawn/wave_spawn
// Params 0, eflags: 0x2 linked
// Checksum 0xdbc9eaa1, Offset: 0x428
// Size: 0x108
function function_ca1398a7() {
    if (!isplayer(self)) {
        return;
    }
    self endon(#"disconnect");
    if (!isdefined(self.pers) || !isdefined(self.pers[#"lives"])) {
        return;
    }
    weapon = getweapon(#"bare_hands");
    count = 0;
    lives = self.pers[#"lives"] - 1;
    while (count < lives && isdefined(self)) {
        count++;
        scoreevents::processscoreevent(#"redeploy_bonus", self, undefined, weapon);
    }
}

// Namespace wave_spawn/wave_spawn
// Params 1, eflags: 0x2 linked
// Checksum 0x976e0605, Offset: 0x538
// Size: 0x90
function function_1540761c(*params) {
    if (!level.deathcircle.enabled || level.deathcircles.size <= 0) {
        return;
    }
    time = death_circle::function_49443399();
    level.var_75db41a7 = gettime() + int((time - level.waverespawndelay) * 1000);
}

// Namespace wave_spawn/wave_spawn
// Params 1, eflags: 0x2 linked
// Checksum 0xb451c0c, Offset: 0x5d0
// Size: 0xa0
function function_832ecb3d(*params) {
    foreach (player in getplayers()) {
        player clientfield::set_player_uimodel("hudItems.playerCanRedeploy", 0);
    }
}

// Namespace wave_spawn/wave_spawn
// Params 1, eflags: 0x6 linked
// Checksum 0xaa1bc202, Offset: 0x678
// Size: 0x124
function private function_14a68e0b(*var_a2f12b49) {
    if (is_true(level.var_1766510)) {
        return;
    }
    level.var_1766510 = 1;
    wavedelay = level.waverespawndelay;
    if (wavedelay) {
        foreach (team, _ in level.teams) {
            level.wavedelay[team] = wavedelay;
            level.lastwave[team] = 0;
        }
        level thread [[ level.wavespawntimer ]]();
        level clientfield::set_world_uimodel("hudItems.warzone.collapseCount", level.deathcircles.size - 1);
    }
}

