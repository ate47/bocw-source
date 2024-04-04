// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace medals;

// Namespace medals/medals_shared
// Params 0, eflags: 0x5
// Checksum 0x3f8d15e0, Offset: 0x90
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"medals", &preinit, undefined, undefined, undefined);
}

// Namespace medals/medals_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x11c7c33d, Offset: 0xd8
// Size: 0x24
function private preinit() {
    callback::on_start_gametype(&init);
}

// Namespace medals/medals_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x4c9718f7, Offset: 0x108
// Size: 0x64
function init() {
    level.medalinfo = [];
    level.medalcallbacks = [];
    level.numkills = 0;
    level.prevlastkilltime = 0;
    level.lastkilltime = 0;
    callback::on_connect(&on_player_connect);
}

// Namespace medals/medals_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xc20ec2a, Offset: 0x178
// Size: 0xe
function on_player_connect() {
    self.lastkilledby = undefined;
}

// Namespace medals/medals_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x74f117ad, Offset: 0x190
// Size: 0x2e
function setlastkilledby(attacker, inflictor) {
    self.lastkilledby = attacker;
    self.var_e78602fc = inflictor;
}

// Namespace medals/medals_shared
// Params 0, eflags: 0x0
// Checksum 0xbe9aa497, Offset: 0x1c8
// Size: 0x10
function offenseglobalcount() {
    level.globalteammedals++;
}

// Namespace medals/medals_shared
// Params 0, eflags: 0x0
// Checksum 0x48f31e7f, Offset: 0x1e0
// Size: 0x10
function defenseglobalcount() {
    level.globalteammedals++;
}

// Namespace medals/player_medal
// Params 1, eflags: 0x20
// Checksum 0x4e2c69b9, Offset: 0x1f8
// Size: 0x6c
function event_handler[player_medal] codecallback_medal(eventstruct) {
    self luinotifyevent(#"medal_received", 1, eventstruct.medal_index);
    self function_8ba40d2f(#"medal_received", 1, eventstruct.medal_index);
}

