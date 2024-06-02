// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\killstreaks\killstreaks_shared.gsc;
#using scripts\killstreaks\killstreakrules_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\armor.gsc;

#namespace weapon_armor;

// Namespace weapon_armor/armor
// Params 0, eflags: 0x5
// Checksum 0x26080766, Offset: 0xd8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"weapon_armor", &init_shared, undefined, undefined, undefined);
}

// Namespace weapon_armor/armor
// Params 0, eflags: 0x0
// Checksum 0x80e7847b, Offset: 0x120
// Size: 0x4c
function init_shared() {
    killstreaks::register_killstreak("weapon_armor", &use_armor);
    callback::on_player_killed(&on_player_killed);
}

// Namespace weapon_armor/armor
// Params 1, eflags: 0x0
// Checksum 0xe58e0839, Offset: 0x178
// Size: 0x206
function use_armor(*killstreaktype) {
    if (self killstreakrules::iskillstreakallowed("weapon_armor", self.team) == 0) {
        return false;
    }
    self.var_c79fb13d = self killstreakrules::killstreakstart("weapon_armor", self.team);
    if (self.var_c79fb13d == -1) {
        return false;
    }
    if (isdefined(self.var_f721af54)) {
        self.var_f721af54 delete();
    }
    var_f721af54 = spawn("script_origin", self.origin);
    var_f721af54 linkto(self);
    self.var_f721af54 = var_f721af54;
    var_f721af54 killstreaks::configure_team("weapon_armor", self.var_c79fb13d, self);
    self playlocalsound(#"hash_1e84a47d66834c73");
    self armor::set_armor(150, 150, 2, 0.4, 1, 0.5, 0, 1, 1, 1);
    self.var_67f4fd41 = &function_b299c6ec;
    self waittill(#"weapon_change_complete", #"death", #"disconnect", #"joined_team", #"killstreak_done");
    return true;
}

// Namespace weapon_armor/armor
// Params 2, eflags: 0x0
// Checksum 0xb63a1424, Offset: 0x388
// Size: 0xcc
function function_b299c6ec(eattacker, weapon) {
    if (!isdefined(self.var_c79fb13d)) {
        return;
    }
    if (sessionmodeismultiplayergame()) {
        killstreakrules::killstreakstop("weapon_armor", self.team, self.var_c79fb13d);
    }
    self.var_c79fb13d = undefined;
    if (isdefined(self.var_f721af54)) {
        self.var_f721af54 delete();
    }
    if (isplayer(eattacker)) {
        scoreevents::processscoreevent(#"hash_7b5132f56f758d9", eattacker, self, weapon);
    }
}

// Namespace weapon_armor/armor
// Params 1, eflags: 0x0
// Checksum 0xffc24da2, Offset: 0x460
// Size: 0x114
function on_player_killed(params) {
    if (armor::get_armor() > 0 && isdefined(self.var_c79fb13d)) {
        if (sessionmodeismultiplayergame()) {
            killstreakrules::killstreakstop("weapon_armor", self.team, self.var_c79fb13d);
        }
        self.var_c79fb13d = undefined;
        if (isdefined(self.var_f721af54)) {
            self.var_f721af54 delete();
        }
        eattacker = params.eattacker;
        weapon = params.weapon;
        if (isplayer(eattacker) && eattacker != self) {
            scoreevents::processscoreevent(#"hash_7b5132f56f758d9", eattacker, self, weapon);
        }
    }
}

