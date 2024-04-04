// Atian COD Tools GSC CW decompiler test
#using scripts\mp_common\player\player_utils.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\contracts_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace high_value_target;

// Namespace high_value_target/high_value_target
// Params 0, eflags: 0x5
// Checksum 0xf8831da, Offset: 0xd0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"high_value_target", &preinit, undefined, undefined, undefined);
}

// Namespace high_value_target/high_value_target
// Params 0, eflags: 0x6 linked
// Checksum 0xdb8a236d, Offset: 0x118
// Size: 0xdc
function private preinit() {
    level.var_8d51c9b1 = getgametypesetting(#"hash_6141cddd96ac214e");
    callback::on_spawned(&onplayerspawned);
    player::function_cf3aa03d(&onplayerkilled);
    level.var_63b58cff = [];
    for (i = 1; i <= 20; i++) {
        eventname = hash(#"hash_782e222fd957d953" + i);
        level.var_63b58cff[eventname] = eventname;
    }
}

// Namespace high_value_target/high_value_target
// Params 0, eflags: 0x2 linked
// Checksum 0x601764a7, Offset: 0x200
// Size: 0xda
function onplayerspawned() {
    killstreakcount = isdefined(self.pers[#"cur_kill_streak"]) ? self.pers[#"cur_kill_streak"] : 0;
    if (killstreakcount < level.var_8d51c9b1) {
        if (self.ishvt !== 0) {
            self clientfield::set("high_value_target", 0);
            self.ishvt = 0;
        }
        return;
    }
    if (self.ishvt !== 1) {
        self clientfield::set("high_value_target", 1);
        self.ishvt = 1;
    }
}

// Namespace high_value_target/high_value_target
// Params 9, eflags: 0x2 linked
// Checksum 0xab9cc360, Offset: 0x2e8
// Size: 0x2a4
function onplayerkilled(*einflictor, attacker, *idamage, *smeansofdeath, weapon, *vdir, *shitloc, *psoffsettime, *deathanimduration) {
    if (isdefined(psoffsettime) && isdefined(psoffsettime.pers[#"cur_kill_streak"])) {
        var_f5d993e3 = isdefined(psoffsettime.pers[#"cur_kill_streak"]) ? psoffsettime.pers[#"cur_kill_streak"] : 0;
        if (var_f5d993e3 >= level.var_8d51c9b1 && psoffsettime clientfield::get("high_value_target") !== 1) {
            psoffsettime clientfield::set("high_value_target", 1);
            psoffsettime.ishvt = 1;
        }
    }
    if (isdefined(self) && self.ishvt === 1) {
        if (isdefined(psoffsettime) && isplayer(psoffsettime) && psoffsettime hasperk(#"hash_1c40ade36b54ff8") && psoffsettime != self && psoffsettime.team != self.team) {
            var_13f7eb29 = self.pers[#"kill_streak_before_death"];
            if (!isdefined(var_13f7eb29) || var_13f7eb29 < level.var_8d51c9b1) {
                return;
            }
            if (var_13f7eb29 > 20) {
                scoreevent = #"hash_782e222fd957d953" + 20;
            } else {
                scoreevent = #"hash_782e222fd957d953" + var_13f7eb29;
            }
            scoreevents::processscoreevent(scoreevent, psoffsettime, self, deathanimduration);
            psoffsettime contracts::increment_contract(#"hash_587a28da043d491d", 1);
            psoffsettime stats::function_a47092b5(#"hash_dfaf3206d734ea9", 1, #"hash_5de4e8563e882e42");
        }
    }
}

// Namespace high_value_target/high_value_target
// Params 1, eflags: 0x2 linked
// Checksum 0x665bdbce, Offset: 0x598
// Size: 0x1e
function function_66a9a1e4(event) {
    return isdefined(level.var_63b58cff[event]);
}

