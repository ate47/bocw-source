// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;

#namespace antipersonnel_guidance;

// Namespace antipersonnel_guidance/antipersonnelguidance
// Params 0, eflags: 0x5
// Checksum 0x779385d7, Offset: 0x90
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"antipersonnel_guidance", &preinit, undefined, undefined, undefined);
}

// Namespace antipersonnel_guidance/antipersonnelguidance
// Params 0, eflags: 0x4
// Checksum 0xbc1de109, Offset: 0xd8
// Size: 0x1c
function private preinit() {
    level thread player_init();
}

// Namespace antipersonnel_guidance/antipersonnelguidance
// Params 0, eflags: 0x0
// Checksum 0x6d92bff9, Offset: 0x100
// Size: 0xb8
function player_init() {
    util::waitforclient(0);
    players = getlocalplayers();
    foreach (player in players) {
        player thread watch_lockon(0);
    }
}

// Namespace antipersonnel_guidance/antipersonnelguidance
// Params 1, eflags: 0x0
// Checksum 0xb0d0705a, Offset: 0x1c0
// Size: 0x12e
function watch_lockon(*localclientnum) {
    self endon(#"death");
    while (true) {
        waitresult = self waittill(#"lockon_changed");
        target = waitresult.target;
        state = waitresult.state;
        if (isdefined(self.replay_lock) && (!isdefined(target) || self.replay_lock != target)) {
            self.ap_lock = undefined;
        }
        switch (state) {
        case 0:
        case 1:
        case 3:
            break;
        case 2:
        case 4:
            self.ap_lock = target;
            break;
        }
    }
}

