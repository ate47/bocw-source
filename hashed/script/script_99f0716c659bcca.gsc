#using scripts\core_common\system_shared;
#using scripts\core_common\util_shared;
#using scripts\weapons\weaponobjects;

#namespace zm_hatchet;

// Namespace zm_hatchet/namespace_cd0ada25
// Params 0, eflags: 0x5
// Checksum 0xf6027f5b, Offset: 0x98
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_hatchet", &init, undefined, undefined, undefined);
}

// Namespace zm_hatchet/namespace_cd0ada25
// Params 0, eflags: 0x0
// Checksum 0xef3eeb6b, Offset: 0xe0
// Size: 0x34
function init() {
    level.playthrowhatchet = &function_e879ee6d;
    level.createhatchetwatcher = &function_1679806a;
}

// Namespace zm_hatchet/namespace_cd0ada25
// Params 1, eflags: 0x4
// Checksum 0xeabaf86e, Offset: 0x120
// Size: 0x46
function private function_1679806a(s_watcher) {
    s_watcher.onspawnretrievetriggers = &function_4ba658e5;
    s_watcher.pickup = &function_4ba658e5;
    s_watcher.deleteonplayerspawn = 0;
}

// Namespace zm_hatchet/namespace_cd0ada25
// Params 1, eflags: 0x4
// Checksum 0x8184354c, Offset: 0x170
// Size: 0x138
function private function_e879ee6d(hatchet) {
    hatchet endon(#"delete", #"death");
    while (true) {
        var_51b88026 = hatchet waittill(#"grenade_stuck");
        if (!isdefined(var_51b88026.hitent) || !isactor(var_51b88026.hitent)) {
            continue;
        }
        if (isalive(var_51b88026.hitent)) {
            var_51b88026.hitent waittill(#"death");
        }
        hatchet unlink();
        waitframe(1);
        hatchet.angles = (hatchet.angles[0] + 90, 0, 0);
        hatchet launch((0, 0, -0.5));
    }
}

// Namespace zm_hatchet/namespace_cd0ada25
// Params 2, eflags: 0x0
// Checksum 0x124446ca, Offset: 0x2b0
// Size: 0x14
function function_4ba658e5(*s_watcher, *player) {
    
}

