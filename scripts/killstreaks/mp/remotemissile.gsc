// Atian COD Tools GSC CW decompiler test
#using script_396f7d71538c9677;
#using scripts\core_common\battlechatter.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\killstreaks\remotemissile_shared.gsc;

#namespace remotemissile;

// Namespace remotemissile/remotemissile
// Params 0, eflags: 0x5
// Checksum 0x81c2de74, Offset: 0x108
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"remotemissile", &preinit, undefined, undefined, #"killstreaks");
}

// Namespace remotemissile/remotemissile
// Params 0, eflags: 0x6 linked
// Checksum 0x39b9f59d, Offset: 0x158
// Size: 0x9c
function private preinit() {
    bundlename = "killstreak_remote_missile";
    if (sessionmodeiswarzonegame()) {
        bundlename += "_wz";
    }
    init_shared(bundlename);
    level.var_5951cb24 = &function_5951cb24;
    level.var_dab39bb8 = &function_dab39bb8;
    level.var_feddd85a = &function_feddd85a;
}

// Namespace remotemissile/remotemissile
// Params 2, eflags: 0x2 linked
// Checksum 0xa75ffd4d, Offset: 0x200
// Size: 0x3c
function function_5951cb24(*killstreak_id, *team) {
    self thread battlechatter::function_fff18afc("callInRemoteMissile", "callInFutzRemoteMissile");
}

// Namespace remotemissile/remotemissile
// Params 1, eflags: 0x2 linked
// Checksum 0x93665817, Offset: 0x248
// Size: 0x1b8
function function_dab39bb8(rocket) {
    self endon(#"remotemissile_done");
    rocket endon(#"death");
    self.owner endon(#"death", #"disconnect");
    var_b5e50364 = 0;
    while (!var_b5e50364) {
        if (!isdefined(self.owner)) {
            return;
        }
        enemy = self.owner battlechatter::get_closest_player_enemy(self.origin, 1);
        if (!isdefined(enemy)) {
            return;
        }
        eyepoint = enemy geteye();
        relativepos = vectornormalize(self.origin - eyepoint);
        dir = anglestoforward(enemy getplayerangles());
        dotproduct = vectordot(relativepos, dir);
        if (dotproduct > 0 && sighttracepassed(self.origin, eyepoint, 1, enemy, self)) {
            enemy thread battlechatter::playkillstreakthreat("remote_missile");
            var_b5e50364 = 1;
        }
        wait(0.1);
    }
}

// Namespace remotemissile/remotemissile
// Params 2, eflags: 0x2 linked
// Checksum 0xad45b3ca, Offset: 0x408
// Size: 0x34
function function_feddd85a(attacker, *weapon) {
    weapon battlechatter::function_eebf94f6("remote_missile");
}

