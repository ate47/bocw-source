// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;

#namespace antipersonnel_guidance;

// Namespace antipersonnel_guidance/multilockapguidance
// Params 0, eflags: 0x5
// Checksum 0xf8ef937, Offset: 0x90
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"multilockap_guidance", &preinit, undefined, undefined, undefined);
}

// Namespace antipersonnel_guidance/multilockapguidance
// Params 0, eflags: 0x6 linked
// Checksum 0xbc1de109, Offset: 0xd8
// Size: 0x1c
function private preinit() {
    level thread player_init();
}

// Namespace antipersonnel_guidance/multilockapguidance
// Params 0, eflags: 0x2 linked
// Checksum 0x6d92bff9, Offset: 0x100
// Size: 0xb8
function player_init() {
    util::waitforclient(0);
    players = getlocalplayers();
    foreach (player in players) {
        player thread watch_lockon(0);
    }
}

// Namespace antipersonnel_guidance/multilockapguidance
// Params 1, eflags: 0x2 linked
// Checksum 0x669785e5, Offset: 0x1c0
// Size: 0x12e
function watch_lockon(*localclientnum) {
    self endon(#"death");
    while (true) {
        waitresult = self waittill(#"lockon_changed");
        state = waitresult.state;
        target = waitresult.target;
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

